library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Adder_tb is
end entity Adder_tb;

architecture Testbench of Adder_tb is
    signal s_A, s_B, s_S : std_logic_vector(3 downto 0);
    signal s_CIN, s_COUT : std_logic;

    component Adder is
        port (
        i_A : in  std_logic_vector (3 downto 0);
        i_B : in  std_logic_vector (3 downto 0);
        o_S : out std_logic_vector (3 downto 0);
        
        i_CIN  : in  std_logic;
        o_COUT : out std_logic);
    end component Adder;
begin
    
    Adder_UUT : Adder
    port map(
        i_A    => s_A,
        i_B    => s_B,
        o_S    => s_S,
        i_CIN  => s_CIN,
        o_COUT => s_COUT);
    
    process is
    begin
        s_A <= "0000"; s_B <= "0000"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "0001"; s_B <= "0001"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "0010"; s_B <= "0010"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "0011"; s_B <= "0011"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "0100"; s_B <= "0100"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "0101"; s_B <= "0101"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "0110"; s_B <= "0110"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "0111"; s_B <= "0111"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1000"; s_B <= "1000"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1001"; s_B <= "1001"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1010"; s_B <= "1010"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1011"; s_B <= "1011"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1100"; s_B <= "1100"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1101"; s_B <= "1101"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1110"; s_B <= "1110"; s_CIN <= '0';
        wait for 10 ns;
        s_A <= "1111"; s_B <= "1111"; s_CIN <= '1';
        wait for 10 ns;

    end process;
    
end architecture Testbench;