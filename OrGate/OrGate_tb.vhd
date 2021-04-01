library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity OrGate_tb is
end entity OrGate_tb;

architecture rtl of OrGate_tb is
    
    signal s_A : std_logic := '0';
    signal s_B : std_logic := '0';
    signal s_Result : std_logic;

    component OrGate is
        port (
            i_A : in std_logic;
            i_B : in std_logic;
            o_Q : out std_logic);
    end component OrGate;

begin

    OrGate_UUT : OrGate
        port map(
            i_A => s_A,
            i_B => s_B,
            o_Q => s_Result);
    
    process is
    begin

        s_A <= '0';
        s_B <= '0';
        wait for 10 ns;

        s_A <= '0';
        s_B <= '1';
        wait for 10 ns;

        s_A <= '1';
        s_B <= '0';
        wait for 10 ns;

        s_A <= '1';
        s_B <= '1';
        wait for 10 ns;
        
    end process;
end architecture rtl;