library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity T_FlipFlop is
    port (
       i_clk      : in std_logic;
       i_DataIn   : in std_logic;
       o_DataOut  : out std_logic := '0';
       o_nDataOut : out std_logic := '1');
end entity T_FlipFlop;

architecture rtl of T_FlipFlop is
    signal s_Result : std_logic := '0';
    signal s_nResult : std_logic;
begin

    process(i_clk)
    begin   
        if rising_edge(i_clk) then
            if i_DataIn = '1' then
                s_Result <= not s_Result;
            end if;
        end if;
    end process;
            
    s_nResult <= not s_Result;
    o_DataOut <= s_Result;
    o_nDataOut <= s_nResult;

end architecture rtl;