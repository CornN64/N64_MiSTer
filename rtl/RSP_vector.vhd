-- Cleaned up and improved formatting

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RSP_vector is
    port (
        input_signal   : in std_logic_vector(31 downto 0);
        output_signal  : out std_logic_vector(31 downto 0);
        clk            : in std_logic;
        reset          : in std_logic
    );
end entity RSP_vector;

architecture behavioral of RSP_vector is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            output_signal <= (others => '0');
        elsif rising_edge(clk) then
            -- Perform the operation
            output_signal <= input_signal;
        end if;
    end process;
end architecture behavioral;