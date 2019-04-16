-------------------------------------------
-- Project			: ELEC562 32 BIT FFT 
-- Author			: Connor Cusi
-- Date				: 2019-03-25
-- File				: Subtractor.vhd
-- Description		: This entity is the memory storage for the  
-- 
-- Inputs			: real_a, real_b -- single bit data 
-- 					  img_a, img_b   -- single bit data 
-- Outputs			: out_real_a, out_real_b -- output real 
-- 					: out_img_a, out_img_b -- output img
-- Reset			: Rst_in
--------------------------------------------
-- Version Control   
-- 1.0 - 2019-03-25 - Intial Version 
-- 1.1 
--------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity subtractor is
port (
-- Inputs
real_a, real_b, : in std_logic_vector(7 downto 0);
img_a, img_b, : std_logic_vector(7 downto 0);
--rborrow_in : in std_logic;
--iborrow_in : in std_logic;
-- Outputs
out_real_a  :out std_logic_vector(7 downto 0);
out_img_a   :out std_logic_vector(7 downto 0);
--rborrow_out :out std_logic;
--iborrow_out :out std_logic;
-- Reset
rst_in : in std_logic;
)
end subtractor

artitechture rtl of subtractor is

begin

process (real_a, real_b, img_a, img_b, rst_in )

	begin
		if (rst_in <= '0') then
		out_real_a <= unsigned(real_a) - unsigned(real_b);
		out_img_a  <= unsigned(img_a) - unsigned(img_b);
		--rborrow_out <= ((not real_a) and ( real_b or rborrow_in)) or ( real_a and rborrow_in));
		--iborrow_out <= ((not img_a) and ( img_b or iborrow_in)) or ( img_a and iborrow_in));
		
			
			
			
			

 
end process

