library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ALU_tb is
end entity ALU_tb;

architecture Testbench of ALU_tb is

    -- CLOCK SIGNAL
    constant c_Clk_Period : time      := 10 ns;
    signal   s_Clk        : std_logic := '1';

    -- SIGNALS
    signal s_wordA : std_logic_vector (7 downto 0) := "10101010";
    signal s_wordB : std_logic_vector (7 downto 0) := "01010101";

    signal s_FUNC  : std_logic_vector (2 downto 0);

    signal s_FOUT  : std_logic_vector (15 downto 0); 

    component ALU is
        port (
            --CLOCK
            i_Clk   : in  std_logic;
            -- DATA INPUTS
            i_WordA : in  std_logic_vector (7 downto 0);
            i_wordB : in  std_logic_vector (7 downto 0);
            -- OPCODE
            i_FUNC  : in  std_logic_vector (2 downto 0);
            -- OUTPUT
            o_FOUT  : out std_logic_vector (15 downto 0));
    end component ALU;

begin

    s_Clk <= not s_Clk after c_Clk_Period / 2;

    ALU_UUT : ALU 
    port map (
        i_Clk   => s_Clk,
        i_WordA => s_WordA,
        i_WordB => s_WordB,
        i_FUNC  => s_FUNC,
        o_FOUT  => s_FOUT);

    process is
    begin

        s_WordA <= "10101111"; s_WordB <= "01010000"; s_FUNC <= "010";
        wait for 40 ns;
        s_WordA <= "10101111"; s_WordB <= "01000000"; s_FUNC <= "100";
        wait for 40 ns;
        s_WordA <= "11101111"; s_WordB <= "01000100"; s_FUNC <= "110";
        wait for 40 ns;
        s_WordA <= "10101111"; s_WordB <= "01000100"; s_FUNC <= "101";
        wait for 40 ns;
        s_WordA <= "10101001"; s_WordB <= "01101100"; s_FUNC <= "111";

    end process;

end architecture Testbench;