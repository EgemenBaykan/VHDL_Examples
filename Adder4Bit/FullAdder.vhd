library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity FullAdder is
    port (
        i_A    : in std_logic;
        i_B    : in std_logic;
        i_CIN  : in std_logic;
        o_S    : out std_logic;
        o_COUT : out std_logic);
end entity FullAdder;

architecture rtl of FullAdder is
    signal s_XOR1 : std_logic;
    signal s_AND1 : std_logic;
    signal s_AND2 : std_logic;
begin
    
    s_XOR1 <= i_A xor i_B;
    s_AND1 <= i_A and i_B;
    s_AND2 <= s_XOR1 and i_CIN;

    o_S    <= s_XOR1 xor i_CIN;
    o_COUT <= s_AND1 or  s_AND2;

end architecture rtl;