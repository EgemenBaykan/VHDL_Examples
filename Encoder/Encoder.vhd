library IEEE;
use IEEE.std_logic_1164.all;

entity Encoder is
    port (
        i_DIN  : in std_logic_vector (7 downto 0);
        o_DOUT : out std_logic_vector (2 downto 0));
end entity Encoder;

architecture rtl of Encoder is
begin
    process(i_DIN)
    begin
        o_DOUT(2) <= i_DIN(4) or i_DIN(5) or i_DIN(6) or i_DIN(7);
        o_DOUT(1) <= i_DIN(2) or i_DIN(3) or i_DIN(6) or i_DIN(7);
        o_DOUT(0) <= i_DIN(1) or i_DIN(3) or i_DIN(5) or i_DIN(7);
    end process;
end architecture rtl;