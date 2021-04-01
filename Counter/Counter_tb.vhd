library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Counter_tb is
end entity Counter_tb;

architecture Testbench of Counter_tb is
    
    -- CLOCK SIGNAL
    constant c_Clk_Period : time      := 10 ns;
    signal   s_Clk        : std_logic := '0';

    -- SIGNALS
    signal s_OUT : std_logic_vector(2 downto 0);

    -- COMPONENT
    component Counter is
        port (
        i_Clk : in std_logic;
        o_OUT : out std_logic_vector (2 downto 0));
    end component Counter;

begin

    Counter_UUT: Counter
    port map(
        i_Clk => s_Clk,
        o_OUT => s_OUT);
    
    s_Clk <= not s_Clk after c_Clk_Period / 2;
    
end architecture Testbench;