--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:18:59 08/16/2018
-- Design Name:   
-- Module Name:   /home/roby/hardware-projects/alu/alu_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
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
USE IEEE.std_logic_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
 PORT(
 A : IN signed(7 downto 0);
 B : IN signed(7 downto 0);
 Op : IN signed(2 downto 0);
 R : OUT signed(7 downto 0);
 carryout : OUT std_logic
 );
 END COMPONENT;
 
 --Inputs
 signal A : signed(7 downto 0) := (others => '0');
 signal B : signed(7 downto 0) := (others => '0');
 signal Op : signed(2 downto 0) := (others => '0');
 
 --Outputs
 signal R : signed(7 downto 0);
 signal carryout : std_logic;
 
 signal i : integer;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          A => A,
          B => B,
          Op => Op,
          R => R,
			 carryout => carryout
        );
   -- Stimulus process
   stim_proc: process
   begin		
     -- hold reset state for 100 ns.
-- wait for 100 ns; 
 
 -- insert stimulus here 
 
 A <= "01001010";
 B <= "01001011";
  
 Op <= "000";
 wait for 100 ns;
 for i in 0 to 7 loop
	Op <= Op + "001";
	wait for 100 ns;
 end loop;
-- Op <= "001";
-- wait for 100 ns;
-- Op <= "010";
-- wait for 100 ns;
-- Op <= "011";
-- wait for 100 ns;
-- Op <= "100";
-- wait for 100 ns;
-- Op <= "101";
-- wait for 100 ns;
-- Op <= "110";
-- wait for 100 ns;
-- Op <= "111";
-- wait for 100 ns;
   end process;

END;
