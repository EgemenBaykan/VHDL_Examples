library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RAM_tb is
end entity RAM_tb;

architecture Testbench of RAM_tb is
    
    constant c_ClockPeriod : time      := 10 ns;
    signal   s_Clk         : std_logic := '0';
    
    constant c_MemSize     : integer   := 1024;

    signal s_wr_EN   : std_logic := '0';
    signal s_DataIn  : std_logic_vector (15 downto 0);
    signal s_DataOut : std_logic_vector (15 downto 0);
    signal s_Addr    : integer range c_MemSize - 1 downto 0; -- int_MemSize - 1


begin

    s_Clk <= not s_Clk after c_ClockPeriod / 2;

    RAM_UUT : entity work.RAM 
    generic map(
        int_MemSize => c_MemSize)
    port map(
        i_clk     => s_Clk,
        i_wr_EN   => s_wr_EN,
        i_Addr    => s_Addr,
        i_DataIn  => s_DataIn,
        o_DataOut => s_DataOut);

    process is
    begin

        s_wr_EN <= '1'; s_Addr <= 16#01#; s_DataIn <= x"FFFF";
        wait for 40 ns;

        s_wr_EN <= '1'; s_Addr <= 16#00#; s_DataIn <= x"00FF";
        wait for 40 ns;

        s_wr_EN <= '1'; s_Addr <= 16#FF#; s_DataIn <= x"ABCD";
        wait for 40 ns;

        s_wr_EN <= '1'; s_Addr <= 16#AA#; s_DataIn <= x"1010";
        wait for 40 ns;

        s_wr_EN <= '0'; s_Addr <= 16#01#;
        wait for 40 ns;

        s_wr_EN <= '0'; s_Addr <= 16#00#;
        wait for 40 ns;

        s_wr_EN <= '0'; s_Addr <= 16#FF#;
        wait for 40 ns;

        s_wr_EN <= '0'; s_Addr <= 16#AA#;
        wait for 40 ns;

        WAIT;

    end process;
    
end architecture Testbench;