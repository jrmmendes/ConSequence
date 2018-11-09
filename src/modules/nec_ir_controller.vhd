-------------------------------------------------
-- Controlador do NEC IR
-- Por Jose R. M. Junior <jrmmendes@outlook.com>
-- Ultima modificacao: 19/10/2018 15:24
-------------------------------------------------
-- Bibliotecas ----------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- Entidade -------------------------------------
entity nec_ir_controller is
  port(
    ir_data: in std_logic; -- dados do infravermelho
    clock_50 : in std_logic;   -- clock de 50MHz
    out_data : out std_logic_vector(31 downto 0); -- barramento com os dados lidos
    command: out std_logic_vector(7 downto 0);
    EOT: out std_logic;
    STATE_INDICATOR : out std_logic_vector(8 downto 0):= "000000000"
  );
end entity;
-- Arquiteturas ------------------------------------------------------------------
architecture behaviour of nec_ir_controller is
  type state_type is (
    IDLE,
    READ_HEADER,
    IDENTIFY_OPERATION,
    REPEAT,
    READ,
    IDENTIFY_BIT,
    ONE,
    ZERO,
    STORE_DATA
  );

  signal SIGSTATE : state_type := IDLE;
  signal SIGDATA : std_logic_vector(31 downto 0);

  constant START_PULSE : integer := 400000;         -- 8 ms @ 50MHz
  constant PULSE: integer := 28125;                 -- 562.5 µs
  constant OPERATION_DEF_WINDOW: integer := 175000; -- 2 ms 
  constant BIT_DEF_WINDOW: integer := 50000;        -- 1 ms 
  
begin 
  process(clock_50)
    variable counter: integer := 0;
    variable numberOfBits : integer := 0;
  begin
    if (rising_edge(clock_50)) then 
      case SIGSTATE is
------------ IDLE STATE ------------------------------------------------
        when IDLE =>
          STATE_INDICATOR <= "100000000";
          if (ir_data = '1') then
            counter := 0;
            SIGSTATE <= READ_HEADER;
          end if;
          
        when READ_HEADER =>
          STATE_INDICATOR <= "000000001"; 
          if(counter < START_PULSE) then 
            counter := counter + 1;
          else
            counter := 0;
            EOT <= '0';
            SIGSTATE <= IDENTIFY_OPERATION;
          end if;
        
------------ OPERATION DEFINITION STATE --------------------------------
        when IDENTIFY_OPERATION =>
          STATE_INDICATOR <= "000000011";
          if (ir_data = '0') then
            counter := counter + 1;
          else 
            if (counter >= OPERATION_DEF_WINDOW) then
              SIGSTATE <= READ;
            else
              SIGSTATE <= REPEAT;
            end if;
          end if;          
------------ REPEAT STATE ----------------------------------------------          
          when REPEAT =>
          STATE_INDICATOR <= "000000111";
            if (ir_data = '1') then 
              if (counter >= PULSE) then
                counter := 0;
                --SIGSTATE <= STORE_DATA;
              else 
                counter := counter + 1;
              end if;
            end if;
            
------------ READ STATE ------------------------------------------------- 
          when READ =>
          STATE_INDICATOR <= "000001111";
            if (ir_data = '1') then 
              if (counter >= PULSE) then 
                counter := 0;
                --SIGSTATE <= IDENTIFY_BIT;
              else 
                counter := counter + 1;
              end if;
            end if;
              
------------ READ BIT STATE ---------------------------------------------
          when IDENTIFY_BIT =>
          STATE_INDICATOR <= "000011111";
            if (ir_data = '1') then 
              if (counter > BIT_DEF_WINDOW) then
                counter := 0;
                SIGSTATE <= ONE;
              else
                counter := 0;
                SIGSTATE <= ZERO;
              end if;
            else 
              counter := counter + 1;
            end if;
            
------------ ONE STATE --------------------------------------------------
          when ONE =>
          STATE_INDICATOR <= "000111111";
            SIGDATA(numberOfBits) <= '1';
            numberOfBits := numberOfBits + 1;
            SIGSTATE <= READ;
            
------------ ZERO STATE ------------------------------------------------- 
          when ZERO =>
          STATE_INDICATOR <= "001111111";
            SIGDATA(numberOfBits) <= '0';
            numberOfBits := numberOfBits + 1;
            SIGSTATE <= READ;
                       
------------ STORE STATE ------------------------------------------------            
          when STORE_DATA =>
            STATE_INDICATOR <= "011111111";
            out_data <= SIGDATA;
            command <= SIGDATA(23 downto 16);
            numberOfBits := 0;
            EOT <= '1'; 
      end case;
    end if;
  end process;

end architecture;
