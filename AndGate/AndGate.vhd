library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity AndGate is
    port(
        i_A : in std_logic;
        i_B : in std_logic;
        o_Q : out std_logic);
end entity;

architecture rtl of AndGate is
    signal and_Result : std_logic;
begin
    and_Result <= i_A and i_B;
    o_Q <= and_Result;  
end architecture rtl;