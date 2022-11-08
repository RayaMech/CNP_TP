library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package mux_package is
 
  constant ADD : std_logic_vector(3 downto 0):= "0000";
  constant MOINS : std_logic_vector(3 downto 0):= "0001";
  constant INVERSE: std_logic_vector(3 downto 0):= "0010"; 
  constant MUL : std_logic_vector(3 downto 0):= "0011"; 
  constant f_xor : std_logic_vector(3 downto 0):= "0100"; 
  constant f_ou : std_logic_vector(3 downto 0):= "0101"; 
  constant f_nand : std_logic_vector(3 downto 0):= "0110"; 
  
end package mux_package;


package body mux_package is
 
end package body mux_package;