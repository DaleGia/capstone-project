----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:53:12 07/29/2018 
-- Design Name: 
-- Module Name:    dsb - Behavioral 
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

entity dsb is
	PORT
	(
		i_clk	:	IN std_logic;
		i_cos	:	IN std_logic_vector(15 downto 0);
		i_in : IN std_logic_vector(15 downto 0);
		o_out	:	OUT std_logic_vector(7 downto 0)
	);
end dsb;

architecture Behavioral of dsb is
	signal s_plus : signed(15 downto 0) := (others=>'0');
	signal s_cos : signed(15 downto 0) := (others=>'0');
	signal s_in : signed(15 downto 0) := (others=>'0');
	signal s_multiply : signed(31 downto 0) := (others=>'0');
	--signal s_multiply_2 : signed(15 downto 0);

	signal s_out : std_logic_vector(7 downto 0) := (others=>'0');

begin
	s_in <= signed(i_in);
	s_cos <= signed(i_cos);
	s_plus <= shift_right(s_in,1) + to_signed(16384, s_plus'length);
	s_multiply <= s_cos * s_plus;
	s_out <=  std_logic_vector(s_multiply(30 downto 23));

--	p_plus :	process(i_clk)
--	begin
--		if(rising_edge(i_clk)) then
--				s_in <= signed(i_in);
--				s_cos <= signed(i_cos);
--				s_plus <= shift_right(s_in,1) + to_signed(16384, s_plus'length);
--		end if;
--	end process p_plus;

	
--	p_multiply : process(i_clk)
--	begin
--		if(rising_edge(i_clk)) then
--			s_multiply <= s_cos * s_plus;
--			s_out <=  std_logic_vector(s_multiply(31 downto 24));
--		end if;
--	end process p_multiply;
	
	o_out <= s_out;
end Behavioral;

