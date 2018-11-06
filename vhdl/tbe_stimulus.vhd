----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:00 07/22/2018 
-- Design Name: 
-- Module Name:    tbe_stimulus - Behavioral 
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tbe_stimulus_clk is
	PORT
	(
		o_clk	:	OUT std_logic;
		o_fcw_input: OUT std_logic_vector(15 downto 0)
	);
end tbe_stimulus_clk;

architecture Behavioral of tbe_stimulus_clk is

	signal	s_clk	:	std_logic := '0';
begin
	clk: process
		begin
			-- Loops through nco values
			while(true) loop
				s_clk <= '0';
				wait for 5 ns;
				s_clk <= '1';
				wait for 5 ns;
			end loop;
			assert false report "end of simulation" severity failure;
	end process clk;
	o_clk <= s_clk;
end Behavioral;

