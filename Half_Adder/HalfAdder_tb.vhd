library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity HalfAdder_tb is
end entity HalfAdder_tb;

architecture Testbench of HalfAdder_tb is
    
    signal s_A : std_logic;
    signal s_B : std_logic;
    signal s_S : std_logic;
    signal s_C : std_logic;

    component HalfAdder is
        port (
            i_A : in std_logic;
            i_B : in std_logic;
            o_S : out std_logic;
            o_C : out std_logic);
    end component HalfAdder;

begin
    
    HalfAdder_UUT : HalfAdder
    port map(
        i_A => s_A,
        i_B => s_B,
        o_S => s_S,
        o_C => s_C);

    process is
    begin

        s_A <= '0'; s_B <= '0';
        wait for 10 ns;
    
        s_A <= '0'; s_B <= '1';
        wait for 10 ns;
    
        s_A <= '1'; s_B <= '0';
        wait for 10 ns;
    
        s_A <= '1'; s_B <= '1';
        wait for 10 ns;
        
    end process;

    end architecture Testbench;