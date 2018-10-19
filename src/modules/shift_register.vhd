-------------------------------------------------
-- Shift Register
-- Por Jose R. M. Junior <jrmmendes@outlook.com>
-- Ultima modificacao: 19/10/2018 12:09
-------------------------------------------------
-- Bibliotecas ----------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- Entidade -------------------------------------
entity shift_register is
  generic(
    REGSIZE: integer := 32
  );
  
  port(
    clk: in std_logic;
    s_data_in: in std_logic;
    s_data_out: out std_logic;
    p_data_in: in std_logic_vector(REGSIZE-1 downto 0);
    p_data_out: out std_logic_vector(REGSIZE-1 downto 0)
  );
end entity;
-- Arquiteturas ---------------------------------
architecture SIPO of shift_register is
  signal SHIFT_REG : std_logic_vector(REGSIZE-1 downto 0);
begin
  
  process(clk) 
  begin
    if(clk'event and clk='1') then
      SHIFT_REG <= SHIFT_REG(REGSIZE-2 downto 0) & s_data_in;
    end if;
  end process;
  p_data_out <= SHIFT_REG;
end architecture;