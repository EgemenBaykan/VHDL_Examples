library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;


entity JK_FlipFlop is
    port (
        i_clk      : in  std_logic;
        i_Reset    : in std_logic;
        i_J        : in  std_logic;
        i_K        : in  std_logic;
        o_DataOut  : out std_logic;
        o_nDataOut : out std_logic);
end entity JK_FlipFlop;

architecture Behavioral of JK_FlipFlop is
    signal s_DataOut : std_logic;
begin
    
    process(i_clk) is
    begin

        if rising_edge(i_clk) then
            if (i_Reset = '1') then
                s_DataOut <= '0';
            else
                if(i_J = '0' and i_K = '0') then
                    s_DataOut <= '0';
                elsif(i_J = '0' and i_K = '1') then
                    s_DataOut <= '0';
                elsif(i_J = '1' and i_K = '0') then
                    s_DataOut <= '1';
                elsif(i_J = '1' and i_K = '1') then
                    s_DataOut <= '1';
                end if;
            end if;
        end if;

    end process;
    
    o_DataOut  <= s_DataOut;
    o_nDataOut <= not s_DataOut;
    
end architecture Behavioral;