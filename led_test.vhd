library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led_test is
    Port ( clk  : in  STD_LOGIC;
           led0 : out STD_LOGIC );
end led_test;

architecture Behavioral of led_test is
    signal count : unsigned(25 downto 0) := (others => '0');
    signal state : std_logic := '0';
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if count = 49999999 then
                count <= (others => '0');
                state <= not state;
            else
                count <= count + 1;
            end if;
        end if;
    end process;
    led0 <= state;
end Behavioral;