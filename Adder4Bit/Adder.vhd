library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Adder is
    port (
        i_A : in  std_logic_vector (3 downto 0);
        i_B : in  std_logic_vector (3 downto 0);
        o_S : out std_logic_vector (3 downto 0);
        
        i_CIN  : in  std_logic;
        o_COUT : out std_logic);

end entity Adder;

architecture rtl of Adder is

signal s_COUT : std_logic_vector (3 downto 0);

component FullAdder is
    port(
        i_A    : in std_logic;
        i_B    : in std_logic;
        i_CIN  : in std_logic;
        o_S    : out std_logic;
        o_COUT : out std_logic);
end component FullAdder; 

begin

    FA0: FullAdder port map(i_A => i_A(0), i_B => i_B(0), i_CIN => i_CIN,     o_S => o_S(0), o_COUT => s_COUT(0));
    FA1: FullAdder port map(i_A => i_A(1), i_B => i_B(1), i_CIN => s_COUT(0), o_S => o_S(1), o_COUT => s_COUT(1));
    FA2: FullAdder port map(i_A => i_A(2), i_B => i_B(2), i_CIN => s_COUT(1), o_S => o_S(2), o_COUT => s_COUT(2));
    FA3: FullAdder port map(i_A => i_A(3), i_B => i_B(3), i_CIN => s_COUT(2), o_S => o_S(3), o_COUT => s_COUT(3));

    o_COUT <= s_COUT(3);

end architecture rtl;