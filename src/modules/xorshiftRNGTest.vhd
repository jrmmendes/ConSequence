-------------------------------------------------
-- Teste do Xorshift
-- Por Jose R. M. Junior <jrmmendes@outlook.com>
-- Ultima modificacao: 19/10/2018 11:53
-------------------------------------------------
-- Bibliotecas ----------------------------------
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

-- Entidade -------------------------------------
entity XorshiftTest is
  port(
    IRDA_RXD : in std_logic;                  
    LEDR : out std_logic_vector(7 downto 0)
  );
end entity;
-- Arquiteturas ---------------------------------
architecture test of XorshiftTest is
  signal r_shift_ 
begin
  
end architecture;