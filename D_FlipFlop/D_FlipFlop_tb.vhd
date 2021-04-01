library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity D_FlipFlop_tb is 
end entity D_FlipFlop_tb;

architecture rtl of D_FlipFlop_tb is
    
    -- CLOCK SIGNAL
    constant c_Clk_Period : time      := 10 ns;
    signal   s_clk        : std_logic := '1';

    -- SIGNALS
    signal s_async_RST  : std_logic;
    signal s_DataIn     : std_logic;
    signal s_DataOut    : std_logic;

    component D_FlipFlop is 
        port(
            i_clk       : in std_logic;
            i_DataIn    : in std_logic;
            i_async_RST : in std_logic;
            o_DataOut   : out std_logic);
    end component D_FlipFlop;

begin

    D_FlipFlop_UUT : D_FlipFlop
        port map(
            i_clk       => s_clk,
            i_DataIn    => s_DataIn,
            i_async_RST => s_async_RST,
            o_DataOut   => s_DataOut);

    s_Clk <= not s_Clk after c_Clk_Period / 2;

    process is
    begin

        s_async_RST <= '0';
        s_DataIn    <= '0';
        wait for 20 ns;

        s_async_RST <= '0';
        s_DataIn    <= '1';
        wait for 20 ns;

        s_async_RST <= '1';
        s_DataIn    <= '0';
        wait for 20 ns;

        s_async_RST <= '1';
        s_DataIn    <= '1';
        wait for 20 ns;

    end process;

end architecture rtl;