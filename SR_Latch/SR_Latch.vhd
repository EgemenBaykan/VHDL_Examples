library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity SR_Latch is
    port (
        i_Set     : in std_logic;
        i_Reset   : in std_logic;
        o_Output  : out std_logic;
        o_nOutput : out std_logic);
end entity SR_Latch;

architecture rtl of SR_Latch is
    signal s_Output  : std_logic := '0';
    signal s_nOutput : std_logic := '0';
begin

    s_Output  <= i_Set   NOR s_nOutput;
    s_nOutput <= i_Reset NOR s_Output;
    
    o_Output  <= s_Output;
    o_nOutput <= s_nOutput;
    
end architecture rtl;