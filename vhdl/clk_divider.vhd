----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:23:33 07/22/2018 
-- Design Name: 
-- Module Name:    clk_divider - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_divider is
	PORT
	(
		i_clk:	IN std_logic;
		o_clk_8: OUT std_logic;
		o_clk_1024	:	OUT std_logic
	);
end clk_divider;

architecture Behavioral of clk_divider is
	signal clk_counter_1024 :	unsigned(10 downto 0) := (others=>'0');
	signal clk_counter_8 :	unsigned(4 downto 0) := (others=>'0');
	signal s_clk_1024 :	std_logic := '1';
	signal s_clk_8: std_logic := '1';


begin
	p_clk_divider_1024	:	process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			clk_counter_1024 <= clk_counter_1024 + to_unsigned(1, clk_counter_1024'length);


			if(clk_counter_1024 >= to_unsigned(511, clk_counter_1024'length)) then
				clk_counter_1024 <= to_unsigned(0, clk_counter_1024'length);
				if(s_clk_1024 = '1') then
					s_clk_1024 <= '0';
				else
					s_clk_1024 <= '1';
				end if;
			end if;
		end if;
	end process p_clk_divider_1024;
	
	p_clk_divider_8	:	process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			clk_counter_8 <= clk_counter_8 + to_unsigned(1, clk_counter_8'length);


			if(clk_counter_8 >= to_unsigned(3, clk_counter_8'length)) then
				clk_counter_8 <= to_unsigned(0, clk_counter_8'length);
				if(s_clk_8 = '1') then
					s_clk_8 <= '0';
				else
					s_clk_8 <= '1';
				end if;
			end if;
		end if;
	end process p_clk_divider_8;
	
	o_clk_8 <= s_clk_8;
	o_clk_1024 <= s_clk_1024; 
end Behavioral;

