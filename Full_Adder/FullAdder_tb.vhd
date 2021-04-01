library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FullAdder_tb is
end entity FullAdder_tb;

architecture Testbench of FullAdder_tb is
    signal s_A   : std_logic;
    signal s_B   : std_logic;
    signal s_CIN : std_logic;
    
    signal s_S    : std_logic;
    signal s_COUT : std_logic;

    component FullAdder is
        port (
            i_A    : in std_logic;
            i_B    : in std_logic;
            i_CIN  : in std_logic;
            o_S    : out std_logic;
            o_COUT : out std_logic);
    end component FullAdder;

begin

    FullAdder_UUT : FullAdder
        port map(
            i_A    => s_A,
            i_B    => s_B,
            i_CIN  => s_CIN,
            o_S    => s_S,
            o_COUT => s_COUT);
    
    process is
    begin

        s_A <= '0'; s_B <= '0'; s_CIN <= '0';
        wait for 10 ns;
        s_A <= '0'; s_B <= '1'; s_CIN <= '0';
        wait for 10 ns;
        s_A <= '1'; s_B <= '0'; s_CIN <= '0';
        wait for 10 ns;
        s_A <= '1'; s_B <= '1'; s_CIN <= '0';
        wait for 10 ns;
        s_A <= '0'; s_B <= '0'; s_CIN <= '1';
        wait for 10 ns;
        s_A <= '0'; s_B <= '1'; s_CIN <= '1';
        wait for 10 ns;
        s_A <= '1'; s_B <= '0'; s_CIN <= '1';
        wait for 10 ns;
        s_A <= '1'; s_B <= '1'; s_CIN <= '1';
        wait for 10 ns;

    end process;
    
end architecture Testbench;