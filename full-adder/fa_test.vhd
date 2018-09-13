--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:02:50 08/14/2018
-- Design Name:   
-- Module Name:   /home/roby/full-adder/fa_test.vhd
-- Project Name:  full-adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fa_test IS
END fa_test;
 
ARCHITECTURE behavior OF fa_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         x : IN  std_logic;
         y : IN  std_logic;
         z : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic := '0';
   signal y : std_logic := '0';
   signal z : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          x => x,
          y => y,
          z => z,
          s => s,
          c => c
        );
 

   -- Stimulus process
   stim_proc1: process
   begin		
      -- hold reset state for 200 ns.
      wait for 400 ns;	
		x <= not x;
   end process;
	
	stim_proc2: process
   begin		
      -- hold reset state for 100 ns.
      wait for 200 ns;	
		y <= not y;
   end process;
	
	stim_proc3: process
   begin		
      -- hold reset state for 50 ns.
      wait for 100 ns;	
		z <= not z;
   end process;

END;
