library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity ALU is
    port (
        i_Clk   : in  std_logic;
        i_WordA : in  std_logic_vector (7 downto 0);
        i_WordB : in  std_logic_vector (7 downto 0); 
        i_FUNC  : in  std_logic_vector (2 downto 0);
        o_FOUT  : out std_logic_vector (15 downto 0));
end entity ALU;

architecture Behavioral of ALU is
    signal s_Result : std_logic_vector (15 downto 0);
begin
    
    process (i_Clk, i_WordA, i_WordB, i_FUNC) is
    begin

        if rising_edge(i_Clk) then

            s_Result <= (others => '0');

            case i_FUNC is
                when "000" => s_Result(7 downto 0) <= std_logic_vector(unsigned(i_WordA) + unsigned(i_WordB));   -- Addition
                when "001" => s_Result(7 downto 0) <= std_logic_vector(unsigned(i_WordA) - unsigned(i_WordB));   -- Substraction
                when "010" => s_Result             <= std_logic_vector(unsigned(i_WordA) * unsigned(i_WordB));   -- Multiplication
                when "011" => s_Result(7 downto 0) <= std_logic_vector(unsigned(i_WordA) / unsigned(i_WordB));   -- Division
                when "100" => s_Result(7 downto 0) <= i_WordA and i_WordB;                                       -- Logical AND
                when "101" => s_Result(7 downto 0) <= i_WordA or  i_WordB;                                       -- Logical OR
                when "110" => s_Result(7 downto 0) <= i_WordA xor i_WordB;                                       -- Logical XOR
                when "111" => s_Result(7 downto 0) <=         not i_WordA;                                       -- 1's complement
                when others => s_Result  <= "0000000000000000";
            end case;

            o_FOUT <= s_Result;

        end if;
            
    end process;
        
end architecture Behavioral;