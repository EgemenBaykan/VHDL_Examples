library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity OrGate is
    port (
        i_A : in std_logic;
        i_B : in std_logic;
        o_Q : out std_logic);
end entity OrGate;

architecture rtl of OrGate is
    signal s_Result : std_logic;
begin
    s_Result <= i_A or i_B;
    o_Q <= s_Result;
end architecture rtl;
