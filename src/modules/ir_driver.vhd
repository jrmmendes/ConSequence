library IEEE;
use IEEE.std_logic_1164.all;

entity IRDriver is 
  port(
    clk: in std_logic; -- clock de 50MHz
    data_in: in std_logic; -- dados vindos do transmissor IR
    command: out std_logic_vector(7 downto 0); -- comando lido
    data_ready: out std_logic; -- flag que indica que os dados podem ser lidos
    state_flag: out std_logic_vector(3 downto 0) -- flag para testes 
  );
end entity;

architecture behaviour of IRDriver is
  
  
  -- Tipo enumerado para os estados 
  type state_type is (
    IDLE, 
    WAIT_HEADER, 
    IDENTIFY_OPERATION,
    REPEAT,
    WAIT_BIT,
    IDENTIFY_BIT,
    SAVE_ZERO,
    SAVE_ONE,
    CHECKOUT
  );
  
  -- Signal referente ao estado atual da transmissao 
  signal SIGSTATE : state_type := IDLE;

  -- Buffer para armazenar os dados lidos temporariamente
  signal data_buffer: std_logic_vector(31 downto 0);
  
  -- Constantes para controle do tempo @ 50MHz de clock
  constant READ_DATA_TIME : integer := 150000; -- 3 ms
  constant READ_BIT_TIME : integer := 50000;
begin 

  process(clk)
    variable counter : integer := 0;
    variable number_of_bits : integer := 0;
  begin
    if (rising_edge(clk)) then
      case SIGSTATE is

        when IDLE =>
          state_flag <= "0000";
          if(data_in = '1') then
            SIGSTATE <= WAIT_HEADER;
          end if;

        when WAIT_HEADER =>
          state_flag <= "0001";
          if(data_in = '0') then
            SIGSTATE <= IDENTIFY_OPERATION;
          end if;

        when IDENTIFY_OPERATION =>
          data_ready <= '0';
          state_flag <= "0011";
          if(data_in = '1') then 
            if(counter >= READ_DATA_TIME) then
              SIGSTATE <= WAIT_BIT;
            else
              SIGSTATE <= REPEAT;
            end if;
            counter := 0;
          else
            counter := counter + 1;
          end if;
        
        when WAIT_BIT =>
          state_flag <= "0111";
          if(data_in = '0') then
            SIGSTATE <= IDENTIFY_BIT;
          end if;
        
        when IDENTIFY_BIT =>
          state_flag <= "1111";
          if(data_in = '1') then 
            if(counter >= READ_BIT_TIME) then
              SIGSTATE <= SAVE_ONE;
            else
              SIGSTATE <= SAVE_ZERO;
            end if;
            counter := 0;
          else
            counter := counter + 1;
          end if;
        
        when SAVE_ONE =>
          state_flag <= "1110";
          data_buffer(number_of_bits) <= '1';
          number_of_bits := number_of_bits + 1;
          SIGSTATE <= CHECKOUT;
          
        when SAVE_ZERO =>
          state_flag <= "1100";
          data_buffer(number_of_bits) <= '0';
          number_of_bits := number_of_bits + 1;
          SIGSTATE <= CHECKOUT;
        
        when CHECKOUT =>
          state_flag <= "1000";
          if(number_of_bits = 32) then
            number_of_bits := 0;
            SIGSTATE <= IDLE;
            command <= data_buffer(23 downto 16);
            data_ready <= '1';
          else 
            SIGSTATE <= WAIT_BIT;
          end if;
          
        when REPEAT =>
          state_flag <= "0110";
          SIGSTATE <= IDLE;
      end case;
    end if;
  end process;
end architecture;
