library IEEE;
use IEEE.std_logic_1164.all;

entity Mux is
    port (
        i_SEL : in  std_logic_vector (1 downto 0);
        i_IN  : in  std_logic_vector (3 downto 0);
        o_OUT : out std_logic);
end entity Mux;

architecture Behavioral of Mux is
    
begin
    
    -- BASIC SWITCH(CASE) STRUCTURE IN VHDL
    with i_SEL select
        o_Out <= i_IN(0) when "00",
                 i_IN(1) when "01",
                 i_IN(2) when "10",
                 i_IN(3) when "11",
                 '0' when others;
    
end architecture Behavioral;