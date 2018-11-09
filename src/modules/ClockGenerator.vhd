-------------------------------------------------
-- Gerador de clock
-- Por Jose R. M. Junior <jrmmendes@outlook.com>
-- Ultima modificacao: 09/10/2018 11:52
-------------------------------------------------
-- Bibliotecas ----------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- Entidade -------------------------------------
entity ClockGenerator is
  generic(
    cycles: integer := 50000000 -- ciclos do novo clock com base no clock do sistema
  );
  port(
    clk_in: in std_logic;  -- clock de 50 MHz
    clk_out: out std_logic -- clock gerado
  );
end entity;

-- Arquiteturas ---------------------------------
architecture behaviour of ClockGenerator is
  signal CLK: std_logic := '0';
begin
  process(clk_in)
    variable counter: integer := 0;
  begin
    if rising_edge(clk) then
      if counter = cycles then
        counter := 0;
        CLK <= NOT CLK;
      else 
        counter := counter + 1;
      end if;
    end if;
    clk_out <= CLK;
  end process;
end architecture;