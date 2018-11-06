----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:07:29 07/15/2018 
-- Design Name: 
-- Module Name:    top_module - Behavioral 
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

entity top_module is
PORT
(
	i_clk_master: IN std_logic;
	i_dip_f: IN std_logic_vector(3 downto 0);
	i_dip_cs: IN std_logic_vector(7 downto 0);
	o_en: OUT std_logic;
	o_pwm_seven: OUT std_logic_vector(1 downto 0);
	o_pwm_six: OUT std_logic_vector(1 downto 0);
	o_pwm_five: OUT std_logic_vector(1 downto 0);
	o_pwm_four: OUT std_logic_vector(1 downto 0);
	o_pwm_three: OUT std_logic_vector(1 downto 0);
	o_pwm_two: OUT std_logic_vector(1 downto 0);
	o_pwm_one: OUT std_logic_vector(1 downto 0);
	-- This is only to gnd inputs of last half of h-bridge driver
	o_pwm_dummy: OUT std_logic_vector(1 downto 0);
	o_clk: OUT std_logic;
	o_clk_1024: OUT std_logic;
	o_leds: OUT std_logic_vector(7 downto 0)
);
end top_module;

architecture Behavioral of top_module is

	COMPONENT clocks
	PORT
	(
		-- Clock in ports
		CLK_IN1           : in     std_logic;
		-- Clock out ports
		CLK_OUT1          : out    std_logic
	);
	END COMPONENT;
	
	COMPONENT clk_divider
	PORT
	( 
		i_clk	:	IN std_logic;
		o_clk_8: OUT std_logic;
		o_clk_1024	:	OUT std_logic
	);
	end COMPONENT;

	COMPONENT dip_oscillator_control
	PORT 
	(
		i_clk : IN std_logic;
		i_dip : IN std_logic_vector(3 downto 0);
		o_phase : OUT std_logic_vector( 15 downto 0)
	);
	END COMPONENT;
	COMPONENT programmable_oscillator
	PORT 
	(
		clk : IN STD_LOGIC;
		we : IN STD_LOGIC;
		data : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		sine : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	END COMPONENT;
	
	COMPONENT PWM
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
	END COMPONENT;

	COMPONENT cos_dsb
	PORT 
	(
		clk : IN STD_LOGIC;
		cosine : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
	END COMPONENT;
	
	COMPONENT dsb 	PORT
	(
		i_clk	:	IN std_logic;
		i_cos	:	IN std_logic_vector(15 downto 0);
		i_in : IN std_logic_vector(15 downto 0);
		o_out	:	OUT std_logic_vector(7 downto 0)
	);
	END COMPONENT;
	
	COMPONENT tbe_writer_dsb PORT
	(	
		w_clk :		IN	std_logic := '0';
		w_in :		IN	std_logic_vector(15 downto 0);
		w_cos_dsb :		IN	std_logic_vector(15 downto 0);
		w_dsb_out:		IN	std_logic_vector(7 downto 0)
	);
	END COMPONENT;
	
	COMPONENT tbe_writer_pwm PORT
	(	
		w_clk :		IN	std_logic := '0';
		w_pwm7: IN	std_logic_vector(1 downto 0);
		w_pwm6: IN	std_logic_vector(1 downto 0);
		w_pwm5: IN	std_logic_vector(1 downto 0);
		w_pwm4: IN	std_logic_vector(1 downto 0);
		w_pwm3: IN	std_logic_vector(1 downto 0);
		w_pwm2: IN	std_logic_vector(1 downto 0);
		w_pwm1: IN	std_logic_vector(1 downto 0)
	);
	END COMPONENT;
	
	signal s_input_signal : std_logic_vector(15 downto 0);
	signal s_cos_dsb		:	std_logic_vector(15 downto 0);
	signal s_phase : std_logic_vector(15 downto 0);
	signal s_dsb_out		:	std_logic_vector(7 downto 0);
		
	signal s_CLK_IN1: std_logic;
	signal s_CLK_OUT1: std_logic;
	signal s_clk_1024: std_logic;
	signal s_clk_8: std_logic;
	
	signal s_pwm_seven: std_logic_vector(1 downto 0);
	signal s_pwm_six: std_logic_vector(1 downto 0);
	signal s_pwm_five: std_logic_vector(1 downto 0);
	signal s_pwm_four: std_logic_vector(1 downto 0);
	signal s_pwm_three: std_logic_vector(1 downto 0);
	signal s_pwm_two: std_logic_vector(1 downto 0);
	signal s_pwm_one: std_logic_vector(1 downto 0);

begin
	i_clock : clocks PORT MAP
   (
		-- Clock in ports
		CLK_IN1 => s_CLK_IN1,
		-- Clock out ports
		CLK_OUT1 => s_CLK_OUT1
	);
	
	i_clk_divider : clk_divider PORT MAP
	(
		i_clk	=> s_CLK_OUT1,
		o_clk_1024 => s_clk_1024,
		o_clk_8 => s_clk_8
	);
	
	i_pwm_seven:	pwm PORT MAP
	(
		i_clk => s_clk_8,
		i_cs => i_dip_cs(6),
		i_input => s_dsb_out,
		i_pwm_weight => std_logic_vector(to_signed(64, 8)),
		i_pwm_delay => std_logic_vector(to_unsigned(0, 8)),
		i_pwm_top => std_logic_vector(to_unsigned(87, 8)),
		o_pwm => s_pwm_seven
	);
	
	i_pwm_six:	pwm PORT MAP
	(
		i_clk => s_clk_8,
		i_cs => i_dip_cs(5),
		i_input => s_dsb_out,
		i_pwm_weight => std_logic_vector(to_signed(32, 8)),
		i_pwm_delay => std_logic_vector(to_unsigned(4, 8)),
		i_pwm_top => std_logic_vector(to_unsigned(56, 8)),
		o_pwm => s_pwm_six
	);
	
	i_pwm_five:	pwm PORT MAP
	(
		i_clk => s_clk_8,
		i_cs => i_dip_cs(4),
		i_input => s_dsb_out,
		i_pwm_weight => std_logic_vector(to_signed(16, 8)),
		i_pwm_delay => std_logic_vector(to_unsigned(12, 8)),
		i_pwm_top => std_logic_vector(to_unsigned(40, 8)),
		o_pwm => s_pwm_five
	);
	
	i_pwm_four:	pwm PORT MAP
	(
		i_clk => s_clk_8,
		i_cs => i_dip_cs(3),
		i_input => s_dsb_out,
		i_pwm_weight => std_logic_vector(to_signed(8, 8)),
		i_pwm_delay => std_logic_vector(to_unsigned(16, 8)),
		i_pwm_top => std_logic_vector(to_unsigned(32, 8)),
		o_pwm => s_pwm_four
	);	
	
	i_pwm_three:	pwm PORT MAP
	(
		i_clk => s_clk_8,
		i_cs => i_dip_cs(2),
		i_input => s_dsb_out,
		i_pwm_weight => std_logic_vector(to_signed(4, 8)),
		i_pwm_delay => std_logic_vector(to_unsigned(18, 8)),
		i_pwm_top => std_logic_vector(to_unsigned(28, 8)),
		o_pwm => s_pwm_three
	);	
	
	i_pwm_two:	pwm PORT MAP
	(
		i_clk => s_clk_8,
		i_cs => i_dip_cs(1),
		i_input => s_dsb_out,
		i_pwm_weight => std_logic_vector(to_signed(2, 8)),
		i_pwm_delay => std_logic_vector(to_unsigned(19, 8)),
		i_pwm_top => std_logic_vector(to_unsigned(26, 8)),
		o_pwm => s_pwm_two
	);

	i_pwm_one:	pwm PORT MAP
	(
		i_clk => s_clk_8,
		i_cs => i_dip_cs(0),
		i_input => s_dsb_out,
		i_pwm_weight => std_logic_vector(to_signed(1, 8)),
		i_pwm_delay => std_logic_vector(to_unsigned(20, 8)),
		i_pwm_top => std_logic_vector(to_unsigned(25, 8)),
		o_pwm => s_pwm_one
	);
	
	
	i_cos : cos_dsb PORT MAP 
	(
		clk => s_clk_1024,
		cosine => s_cos_dsb
	);
	
	i_dsb	:	dsb PORT MAP
	(
		i_clk	=> s_clk_1024,
		i_cos	=> s_cos_dsb,
		i_in => s_input_signal,
		o_out	=> s_dsb_out
	);
	i_oscillator_control : dip_oscillator_control PORT MAP
	(
		i_clk => s_clk_1024,
		i_dip => i_dip_f,
		o_phase => s_phase
	);

	
	i_oscillator : programmable_oscillator PORT MAP 
	(
		clk => s_clk_1024,
		we => '1',
		data => s_phase,
		sine => s_input_signal
	);
	
	-- This is bad, but PCB is already built.
	o_en <= '1';
	o_pwm_dummy <= "00";

	i_writer_dsb: tbe_writer_dsb PORT MAP
	(
		w_clk	=> s_CLK_OUT1,
		w_in  => s_input_signal, 
		w_cos_dsb => s_cos_dsb,
		w_dsb_out => s_dsb_out
	);
	
	i_writer_pwm: tbe_writer_pwm PORT MAP
	(
		w_clk	=> s_CLK_OUT1,
		w_pwm7 => s_pwm_seven,
		w_pwm6 => s_pwm_six,
		w_pwm5 => s_pwm_five,
		w_pwm4 => s_pwm_four,
		w_pwm3 => s_pwm_three,
		w_pwm2 => s_pwm_two,
		w_pwm1 => s_pwm_one
	);
	
	o_pwm_seven <= s_pwm_seven;
	o_pwm_six <= s_pwm_six; 
	o_pwm_five <= s_pwm_five;
	o_pwm_four <= s_pwm_four;
	o_pwm_three <= s_pwm_three;
	o_pwm_two <= s_pwm_two;
	o_pwm_one <= s_pwm_one;
	s_CLK_IN1 <= i_clk_master;
	o_clk <= s_CLK_IN1;
	o_clk_1024 <= s_clk_1024;
	o_leds <= "10101010";

end Behavioral;

