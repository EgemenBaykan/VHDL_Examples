library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Mux_tb is
end entity Mux_tb;

architecture Testbench of Mux_tb is
    
    signal s_SEL : std_logic_vector (1 downto 0) := "00";
    signal s_IN  : std_logic_vector (3 downto 0) := "0101";

    signal s_OUT : std_logic;

    component Mux is
        port (
            i_SEL : in std_logic_vector (1 downto 0);
            i_IN  : in std_logic_vector (3 downto 0);
            o_OUT : out std_logic);
    end component Mux;

begin

    Mux_UUT : Mux 
        port map(
            i_SEL => s_SEL,
            i_IN  => s_IN,
            o_OUT => s_OUT);
    
    process is
    begin

        wait for 10 ns;
        s_SEL <= s_SEL + "1";        


    end process;
    
end architecture Testbench;