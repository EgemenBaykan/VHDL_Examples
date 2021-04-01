library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RAM is

    generic(
        int_DataWidth : integer := 16;
        int_MemSize   : integer := 256);

    port (
        -- SIGNAL
        i_clk     : in  std_logic; -- Clock Signal Input
        i_wr_EN   : in  std_logic; -- Write Enable Input
        -- DATA
        i_Addr    : in  integer    range  int_MemSize   - 1 downto 0;   -- Address Location Input
        i_DataIn  : in  std_logic_vector (int_DataWidth - 1 downto 0);  -- Data Input
        o_DataOut : out std_logic_vector (int_DataWidth - 1 downto 0)); -- Data Output

end entity RAM;

architecture Behavioral of RAM is
    -- TYPE Memory creates a 2 dimensional array
    --                     V       MEMORY SIZE      V                     V        DATA WIDTH        V
    type t_memory is array (int_MemSize - 1 downto 0) of std_logic_vector (int_DataWidth - 1 downto 0);
    signal s_RAM : t_memory := (others => (others => '0'));

begin

    process (i_clk) is
    begin

        if rising_edge(i_clk) then
            
            if i_wr_EN = '1' then
                s_RAM(i_Addr) <= i_DataIn;
            end if;
    
            o_DataOut <= s_RAM(i_Addr);
            
        end if;    
            
    end process;
    
end architecture Behavioral;