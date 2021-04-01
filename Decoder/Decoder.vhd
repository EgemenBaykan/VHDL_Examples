library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Decoder is
    port (
        i_DIN : in std_logic_vector (2 downto 0);
        o_DOUT : out std_logic_vector (7 downto 0));
end entity Decoder;

architecture Behavioral of Decoder is
    
begin
    
    process (i_DIN) is
    begin

        case( i_DIN ) is

            when "000" => o_DOUT <= "00000001";
            when "001" => o_DOUT <= "00000010";
            when "010" => o_DOUT <= "00000100";
            when "011" => o_DOUT <= "00001000";
            when "100" => o_DOUT <= "00010000";
            when "101" => o_DOUT <= "00100000";
            when "110" => o_DOUT <= "01000000";
            when "111" => o_DOUT <= "10000000";
            when others => o_DOUT <= "00000000";

        end case;
        
    end process;

end architecture Behavioral;