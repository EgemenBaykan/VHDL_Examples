library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Counter is
    port (
        i_Clk : in std_logic;
        o_OUT : out std_logic_vector (2 downto 0));
end entity Counter;

architecture rtl of Counter is

    signal s_DataOut : std_logic_vector (2 downto 0);
    signal s_nDataOut : std_logic_vector (2 downto 0);
    signal s_JK_Reset : std_logic := '0';

    component JK_FlipFlop is
        port (
            i_clk      : in  std_logic;
            i_Reset    : in std_logic;
            i_J        : in  std_logic;
            i_K        : in  std_logic;
            o_DataOut  : out std_logic;
            o_nDataOut : out std_logic);
    end component JK_FlipFlop;

begin

    JK_FF0 : JK_FlipFlop port map(i_CLK        , s_JK_Reset, s_nDataOut(0), s_DataOut(0), s_nDataOut(0));
    JK_FF1 : JK_FlipFlop port map(s_nDataOut(0), s_JK_Reset, s_nDataOut(1), s_DataOut(1), s_nDataOut(1));
    JK_FF2 : JK_FlipFlop port map(s_nDataOut(1), s_JK_Reset, s_nDataOut(2), s_DataOut(2), s_nDataOut(2));

    o_OUT <= s_DataOut;
    
end architecture rtl;