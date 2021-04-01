library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity JK_FlipFlop_tb is
end entity JK_FlipFlop_tb;

architecture Testbench of JK_FlipFlop_tb is
    
    -- CLOCK SIGNAL
    constant c_Clk_Period : time      := 10 ns;
    signal   s_Clk        : std_logic := '0';

    -- FLIP FLOP SIGNALS
    signal s_Reset    : std_logic;
    signal s_J        : std_logic;
    signal s_K        : std_logic;
    signal s_DataOut  : std_logic;
    signal s_nDataOut : std_logic;
    
    component JK_FlipFlop is
        port (
        i_clk      : in  std_logic;
        i_Reset    : in std_logic;
        i_J        : in  std_logic;
        i_K        : in  std_logic;
        o_DataOut  : out std_logic;
        o_nDataOut : out std_logic);
    end component;

begin
    
    s_Clk <= not s_Clk after c_Clk_Period / 2;

    JK_FF_UUT : JK_FlipFlop
    port map(
        i_Clk      => s_Clk,
        i_Reset    => s_Reset,
        i_J        => s_J,
        i_K        => s_K,
        o_DataOut  => s_DataOut,
        o_nDataOut => s_nDataOut);

    process is
    begin
    
        s_Reset <= '0'; s_J <= '0'; s_K <= '0';
        wait for 10 ns;
        s_Reset <= '0'; s_J <= '1'; s_K <= '0';
        wait for 10 ns;
        s_Reset <= '0'; s_J <= '0'; s_K <= '1';
        wait for 10 ns;
        s_Reset <= '0'; s_J <= '1'; s_K <= '1';
        wait for 10 ns;
        s_Reset <= '1'; s_J <= '0'; s_K <= '0';
        wait for 10 ns;
        s_Reset <= '1'; s_J <= '1'; s_K <= '0';
        wait for 10 ns;
        s_Reset <= '1'; s_J <= '0'; s_K <= '1';
        wait for 10 ns;
        s_Reset <= '1'; s_J <= '1'; s_K <= '1';
        wait for 10 ns;
    
        end process;
    
end architecture Testbench;