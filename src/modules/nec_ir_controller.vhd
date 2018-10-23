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
    out_data : out std_logic_vector(31 downto 0) -- barramento com os dados lidos
  );
end entity;
-- Arquiteturas ---------------------------------
architecture behaviour of nec_ir_controller is
  type state_type is (
    IDLE,
    READ_HEADER,
    IDENTIFY_OPERATION, 
    READ, 
    IDENTIFY_BIT, 
    STORE_ZERO, 
    STORE_ONE,
    CHECK_EOT,
    REPEAT 
  );

  signal STATE : state_type := IDLE;
  
  signal DATA : std_logic_vector(31 downto 0);

  constant SHORT_PULSE  : integer := 028125; -- 562.5µs @ 50MHz
  constant LONG_PULSE   : integer := 450000; -- 9ms
  constant READ_WINDOW  : integer := 225000; -- 4.5ms
  constant REPEAT_WINDOW: integer := 112500; -- 2.25ms
  constant BIT_ZERO_TIME: integer := 035000; -- 700µs 

begin 
  process(clk)
    variable counter: integer := 0;
    variable numberOfBits : integer := 0;
  begin
    if rising_edge(clk) then 
      case STATE is 
        when IDLE =>
          if ir_data = '1' then 
            STATE <= READ_HEADER;
          end if;
        
        -- LEITURA DO CABEÇALHO
        when READ_HEADER => 
          if counter = LONG_PULSE then 
            counter := 0;
            STATE <= INDENTIFY_OPERATION;
          else 
            counter := counter + 1;
          end if;

        -- IDENTIFICAÇÃO DA OPERAÇÃO
        when IDENTIFY_OPERATION =>
          if ir_data = '1' then 
            if counter > REPEAT_WINDOW then 
              STATE <= READ; 
            else 
              STATE <= REPEAT;
            end if;
            counter := 0;
          else 
            counter := counter + 1;  
          end if;

        -- LEITURA DE NOVOS DADOS
        when READ =>
          if counter = SHORT_PULSE then 
            counter := 0;
            STATE <= IDENTIFY_BIT;
          else 
            counter := counter + 1;
          end if;
        
        -- IDENTIFICAÇÃO DE UM BIT
        when INDENTIFY_BIT =>
          if ir_data = '1' then 
            if counter > BIT_ZERO_TIME then 
              STATE <= STORE_ONE;
            else 
              STATE <= STORE_ZERO;
            end if;

            counter := 0;
          
          else 
            counter := counter + 1;
          end if;

        -- ARMAZENAMENTO DE UM BIT '0'
        when STORE_ZERO =>
          DATA(numberOfBits) <= '0';
          STATE <= CHECK_EOT; 
        
        -- ARMAZENAMENTO DE UM BIT '1'
        when STORE_ONE =>
          DATA(numberOfBits) <= '1';
          STATE <= CHECK_EOT;
        
        -- CHECA SE A TRANSMISSÃO CHEGOU AO FIM
        when CHECK_EOT => 
          numberOfBits := numberOfBits + 1;
          if numberOfBits = 32 then 
            numberOfBits := 0;
            STATE <= IDLE;
            out_data <= DATA;
          end if;

        -- REPETIÇÃO DOS DADOS LIDOS ANTERIORMENTE
        when REPEAT =>
          STATE <= IDLE;
          out_data <= DATA;
      end case;
    end if;
  end process;

end architecture;
