----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:47:09 07/28/2018 
-- Design Name: 
-- Module Name:    delay - Behavioral 
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
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity delay is
	PORT
	(
		i_clk	:	IN	std_logic;
		i_in	:	IN std_logic_vector(7 downto 0);
		o_out	:	OUT std_logic_vector(7 downto 0)
	);
end delay;

architecture Behavioral of delay is
	type signed_array is array (49 downto 0) of signed(7 downto 0);
	signal delay_array :	signed_array;
	signal index_counter : integer := 0;
	signal s_out	:	signed(7 downto 0) := "00000000";
	
begin
	p_delay_in	:	process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			delay_array(index_counter) <= signed(i_in);
		end if;
	end process p_delay_in;
	
	p_delay_index_plus : process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			if(index_counter < 49) then
				index_counter <= index_counter + 1;
			else
				index_counter <= 0;
			end if;
		end if;
	end process p_delay_index_plus;
		
	p_delay_out : process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			s_out <= delay_array(index_counter);
		end if;
	end process p_delay_out;
	o_out <= std_logic_vector(s_out);
end Behavioral;

