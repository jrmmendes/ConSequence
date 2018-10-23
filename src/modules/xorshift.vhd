-------------------------------------------------
-- Gerador de Número Pseudoaleatórios (xorshift)
-- Por Jose R. M. Junior <jrmmendes@outlook.com>
-- Ultima modificacao: 19/10/2018 14:24
-------------------------------------------------
-- Bibliotecas ----------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- Entidade -------------------------------------
entity xorshift is
  generic(
    output_size: integer := 4;    
    -- Seed padrão da arquitetura de 32 bits
    x32Seed : std_logic_vector(31 downto 0):= "11110100110101111010111010101011";
    -- Seed padrão da arquitetura de 64 bits
    x64Seed : std_logic_vector(63 downto 0):= "1010110101011010101100010000111110101010100000011111011011010010"
  );
  
  port(
    clk : in std_logic;
    rnd: out std_logic_vector (output_size-1 downto 0) := (others => '0')
  );
end entity;

-- Arquiteturas ---------------------------------
architecture x32bits of xorshift is
  signal SEED : std_logic_vector(31 downto 0) := x32Seed;
  
begin 
  
  -- Aplicar os xorshifts sucessivos
  process(clk) is
  begin 
    
    if clk'event and clk='1' then
      SEED <=  SEED(30 downto 0) & (SEED(31) XOR SEED(0)); 
      rnd <= SEED(31 downto 31-output_size+1);
    end if;
  end process;
  
end architecture;
