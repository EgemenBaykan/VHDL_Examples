library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SR_Latch_tb is
    
end entity SR_Latch_tb;

architecture rtl of SR_Latch_tb is

    signal s_Set   : std_logic := '0';
    signal s_Reset : std_logic := '0';

    signal s_Output  : std_logic;
    signal s_nOutput : std_logic;


    component SR_Latch is
        port(
            i_Set     : in std_logic;
            i_Reset   : in std_logic;
            o_Output  : out std_logic;
            o_nOutput : out std_logic);
    end component;

begin
    
    SR_Latch_UUT : SR_Latch
        port map(
            i_Set       => s_Set,
            i_Reset     => s_Reset,
            o_Output    => s_Output,
            o_nOutput   => s_nOutput);

    process is
    begin

        s_Set   <= '0';
        s_Reset <= '0';
        wait for 10 ns;
        
        s_Set   <= '0';
        s_Reset <= '1';
        wait for 10 ns;

        s_Set   <= '1';
        s_Reset <= '0';
        wait for 10 ns;

        s_Set   <= '1';
        s_Reset <= '1';
        wait for 10 ns;

    end process;
    
end architecture rtl;
