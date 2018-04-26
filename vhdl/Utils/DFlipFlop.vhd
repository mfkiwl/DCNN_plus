library ieee;
use ieee.std_logic_1164.all;

entity DFlipFlop is
    generic(w : natural := 32);
    port(clk, enable, reset : in std_logic;
        d : in std_logic_vector(w-1 downto 0);
          
        q : out std_logic_vector(w-1 downto 0)); 
end entity DFlipFlop;

architecture behaviour of DFlipFlop is 
begin

    process(clk, reset)
    begin
        if(reset = '1') then
            q <= (others => '0');
        elsif(rising_edge(clk) and enable = '1') then
            q <= d;
        end if;
    end process;

end behaviour;
