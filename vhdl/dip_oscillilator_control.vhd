----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:09:04 08/11/2018 
-- Design Name: 
-- Module Name:    dip_oscillilator_control - Behavioral 
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

entity dip_oscillator_control is
PORT
(
	i_clk	: IN std_logic;
	i_dip : IN std_logic_vector(3 downto 0);
	o_phase : OUT std_logic_vector( 15 downto 0)
);
end dip_oscillator_control;

architecture Behavioral of dip_oscillator_control is
	signal s_dip : unsigned(3 downto 0) := (others=>'0');
	signal s_phase : unsigned(15 downto 0) := (others=>'0');
begin
	dip :	process(i_clk)
	begin 
		if(rising_edge(i_clk)) then
			s_dip <= unsigned(i_dip);
			if(s_dip = "0000") then
				s_phase <= to_unsigned(34,s_phase'length);
			elsif(s_dip = "0001") then
				s_phase <= to_unsigned(34,s_phase'length);
			elsif(s_dip = "0010") then
				s_phase <= to_unsigned(67,s_phase'length);
			elsif(s_dip = "0011") then
				s_phase <= to_unsigned(67,s_phase'length);
			elsif(s_dip = "0100") then
				s_phase <= to_unsigned(134,s_phase'length);
			elsif(s_dip = "0101") then
				s_phase <= to_unsigned(134,s_phase'length);
			elsif(s_dip = "0110") then
				s_phase <= to_unsigned(268,s_phase'length);
			elsif(s_dip = "0111") then
				s_phase <= to_unsigned(268,s_phase'length);
			elsif(s_dip = "1000") then
				s_phase <= to_unsigned(537,s_phase'length);
			elsif(s_dip = "1001") then
				s_phase <= to_unsigned(537,s_phase'length);
			elsif(s_dip = "1010") then
				s_phase <= to_unsigned(1074,s_phase'length);
			elsif(s_dip = "1011") then
				s_phase <= to_unsigned(1074,s_phase'length);
			elsif(s_dip = "1100") then
				s_phase <= to_unsigned(2147,s_phase'length);
			elsif(s_dip = "1101") then
				s_phase <= to_unsigned(2147,s_phase'length);
			elsif(s_dip = "1110") then
				s_phase <= to_unsigned(4295,s_phase'length);
			elsif(s_dip = "1111") then
				s_phase <= to_unsigned(4295,s_phase'length);
			end if;
		end if;
	end process dip;
	o_phase <= std_logic_vector(s_phase);
end Behavioral;

