library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity T_FlipFlop_tb is
end entity T_FlipFlop_tb;


architecture rtl of T_FlipFlop_tb is
    
    -- CLOCK SIGNAL
    constant c_Clk_Period : time      := 10 ns;
    signal   s_Clk        : std_logic := '1';

    -- WIRE SIGNALS
    signal s_DataIn   : std_logic;
    signal s_DataOut  : std_logic;
    signal s_nDataOut : std_logic;

    component T_FlipFlop is
        port(
            i_clk      : in std_logic;
            i_DataIn   : in std_logic;
            o_DataOut  : out std_logic;
            o_nDataOut : out std_logic);
    end component T_FlipFlop;

begin
    
    UUT : T_FlipFlop port map(
        i_clk      => s_Clk,
        i_DataIn   => s_DataIn,
        o_DataOut  => s_DataOut,
        o_nDataOut => s_nDataOut);
    
    s_Clk <= not s_Clk after c_Clk_Period / 2;

    process is
    begin

        s_DataIn <= '0';
        wait for 40 ns;
        s_DataIn <= '1';
        wait for 15 ns;

    end process;
end architecture rtl;