library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Decoder_tb is
end entity Decoder_tb;

architecture Testbench of Decoder_tb is
    
    signal s_DIN  : std_logic_vector (2 downto 0) := "000";
    signal s_DOUT : std_logic_vector (7 downto 0);

    component Decoder is 
        port (i_DIN  : in  std_logic_vector (2 downto 0);
              o_DOUT : out std_logic_vector (7 downto 0));
    end component Decoder;

begin
    
    Decoder_UUT : Decoder 
        port map(
            i_DIN  => s_DIN,
            o_DOUT => s_DOUT);

    process is
    begin

        wait for 10 ns;
        s_DIN <= s_DIN + "1";

    end process;
    
end architecture Testbench;
