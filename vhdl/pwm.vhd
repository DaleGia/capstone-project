----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:06:09 08/11/2018 
-- Design Name: 
-- Module Name:    pwm - Behavioral 
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

entity pwm is
PORT
(
	i_clk: IN std_logic;
	i_cs: IN std_logic;
	i_input: IN std_logic_vector(7 downto 0);
	i_pwm_weight: IN std_logic_vector(7 downto 0);
	i_pwm_delay: IN std_logic_vector(7 downto 0);
	i_pwm_top: IN std_logic_vector(7 downto 0);
	o_pwm: OUT std_logic_vector(1 downto 0)
);
end pwm;

architecture Behavioral of pwm is
	SIGNAL s_input: signed(7 downto 0) := (others=>'0');
	SIGNAL s_input_abs: signed(7 downto 0) := (others=>'0');
	SIGNAL s_pwm_weight: signed(7 downto 0) := (others=>'0');
	
	SIGNAL s_pwm_delay: unsigned(7 downto 0) := (others=>'0');
	SIGNAL s_pwm_top: unsigned(7 downto 0) := (others=>'0');
	SIGNAL s_pwm_counter: unsigned(6 downto 0) := (others=>'0');	
	SIGNAL s_pwm: std_logic_vector(1 downto 0) := (others=>'0');
	
begin
	-- delay = (0.5-duty)/2*modulation_frequency	
	s_input <= signed(i_input);
	s_input_abs <= abs(signed(i_input));
	s_pwm_delay <= unsigned(i_pwm_delay);
	s_pwm_weight <= signed(i_pwm_weight);
	s_pwm_top <= unsigned(i_pwm_top)+s_pwm_delay;

	inputs: process(i_clk)
	begin
		if(rising_edge(i_clk)) then
			s_pwm_counter <= s_pwm_counter + to_unsigned(1, s_pwm_counter'length);
		end if;
	end process inputs;
	pwm: process(i_clk)
	begin
		if(i_cs = '1') then
			if(s_pwm_counter >= s_pwm_delay) then
				if(signed(std_logic_vector(s_input_abs) and std_logic_vector(s_pwm_weight)) > 0) then
					if(s_pwm_counter > s_pwm_top) then
						s_pwm <= "00"; 
					elsif(s_input < to_signed(0, s_input'length)) then
						s_pwm <= "01";
					else
						s_pwm <= "10";
					end if;
				else
					s_pwm <= "00"; 
				end if;
			else
				s_pwm <= "00"; 
			end if;
		else
			s_pwm <= "00"; 
		end if;
	end process pwm;
	o_pwm <= s_pwm;
	
--	decimation: process(i_clk_512)
--	begin
--		if(rising_edge(i_clk_512)) then
--			s_decimated_pwm <= s_pwm;
--		end if;
--	end process decimation;
--	o_decimated_pwm <= s_decimated_pwm;
end Behavioral;

