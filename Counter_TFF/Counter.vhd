library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Counter is
    port (
        i_Clk : in std_logic;
        o_OUT : out std_logic_vector (2 downto 0));
end entity Counter;

architecture rtl of Counter is

    signal s_DataOut  : std_logic_vector (2 downto 0);
    signal s_nDataOut : std_logic_vector (2 downto 0);

    component T_FlipFlop is
        port (
            i_clk      : in std_logic;
            i_DataIn   : in std_logic;
            o_DataOut  : out std_logic := '0';
            o_nDataOut : out std_logic := '1');
    end component T_FlipFlop;

begin

    T_FF0 : T_FlipFlop port map(i_CLK       , '1', s_DataOut(0), s_nDataOut(0));
    T_FF1 : T_FlipFlop port map(s_DataOut(0), '1', s_DataOut(1), s_nDataOut(1));
    T_FF2 : T_FlipFlop port map(s_DataOut(1), '1', s_DataOut(2), s_nDataOut(2));

    o_OUT(0) <= s_DataOut(0);
    o_OUT(1) <= s_DataOut(1);
    o_OUT(2) <= s_DataOut(2);
    
end architecture rtl;