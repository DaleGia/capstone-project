----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:29:31 07/22/2018 
-- Design Name: 
-- Module Name:    tbe_writer - Behavioral 
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
use IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;
library ieee_proposed;
use ieee_proposed.float_pkg.all; 


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tbe_writer_dsb is
	PORT
	(
		w_clk :		IN	std_logic := '0';
		w_in :			IN	std_logic_vector(15 downto 0) := (others=>'0');
		w_cos_dsb :		IN	std_logic_vector(15 downto 0) := (others=>'0');
		w_dsb_out :		IN	std_logic_vector(7 downto 0) := (others=>'0')
	);
end tbe_writer_dsb;

architecture Behavioral of tbe_writer_dsb is
begin
	writer: process(w_clk)
	FILE out_file	:	TEXT open WRITE_MODE is "dsb_sim.csv";
	VARIABLE out_line	:	LINE;
	VARIABLE temp : real;
	begin
		if(rising_edge(w_clk)) then
			write(out_line, to_integer(signed(w_in)));				
			write(out_line, ",");
			write(out_line, to_integer(signed(w_cos_dsb)));
			write(out_line, ",");
			write(out_line, to_integer(signed(w_dsb_out)));		
			writeline(out_file,out_line);
		end if;
	end process writer;
end Behavioral;

