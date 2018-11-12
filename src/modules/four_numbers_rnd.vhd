library ieee;
use ieee.std_logic_1164.all;

entity four_numbers_rnd is
  port (
    clock : in std_logic;
    numbers : out std_logic_vector(15 downto 0);
    OEG: out std_logic -- end of generation
    );
end four_numbers_rnd;

architecture behaviour of four_numbers_rnd is

  signal number : std_logic_vector(7 downto 0);

  begin

    xshift1: work.xorshift(x32bits) 
    port map(
      clk => clock,
      number => rnd
    );

    rnd_generator : process (reset, clock)
      variable counter: integer := 0;
    begin
      if (reset = '1' OR counter = 0) then
        counter := 0;
      elsif (counter = 11) then
        EOG <= '1';
        counter := 0;
      elsif (rising_edge(clock)) then
        numbers(counter+3 downto counter) <= number;
        counter := counter + 4;
      end if;
    end process rnd_generator;

  end behaviour;