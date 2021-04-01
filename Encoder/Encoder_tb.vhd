library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Encoder_tb is
end entity Encoder_tb;

architecture Testbench of Encoder_tb is

    signal s_DIN  : std_logic_vector (7 downto 0) := "00000001";
    signal s_DOUT : std_logic_vector (2 downto 0);

    component Encoder is
        port (
            i_DIN  : in  std_logic_vector (7 downto 0);
            o_DOUT : out std_logic_vector (2 downto 0));
    end component Encoder;

begin
    
    Encoder_UUT : Encoder
        port map(
            i_DIN => s_DIN,
            o_DOUT => s_DOUT);

    process is
    begin

        wait for 10 ns;
        s_DIN(7 downto 0) <= s_DIN(6 downto 0) & '0';

    end process;

    
    
end architecture Testbench;