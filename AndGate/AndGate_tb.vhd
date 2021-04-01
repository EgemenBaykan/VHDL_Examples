library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity AndGate_tb is
end entity AndGate_tb;

architecture rtl of AndGate_tb is
    signal r_SIG1 : std_logic := '0';
    signal r_SIG2 : std_logic := '0';
    signal w_Result : std_logic;

    component AndGate is 
        port(
            i_A : in std_logic;
            i_B : in std_logic;
            o_Q : out std_logic);
    end component AndGate;

begin

    AndGate_INST : AndGate port map(
        i_A => r_SIG1,
        i_B => r_SIG2,
        o_Q => w_Result);

    process is
    begin
        
        r_SIG1 <= '0';
        r_SIG2 <= '0';
        wait for 10 ns;

        r_SIG1 <= '0';
        r_SIG2 <= '1';
        wait for 10 ns;

        r_SIG1 <= '1';
        r_SIG2 <= '0';
        wait for 10 ns;

        r_SIG1 <= '1';
        r_SIG2 <= '1';
        wait for 10 ns;

    end process;
end architecture rtl;
