library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity D_FlipFlop is
    port (
        i_clk       : in std_logic;
        i_DataIn    : in std_logic;
        i_async_RST : in std_logic;
        o_DataOut   : out std_logic);
end entity D_FlipFlop;

architecture rtl of D_FlipFlop is

begin
    
    process(i_clk) is
    begin
        if rising_edge(i_clk) then
            if i_async_RST = '1' then
                o_DataOut <= '0';
            else
                o_DataOut <= i_DataIn;
            end if;
        end if;
    end process;
    
end architecture rtl;