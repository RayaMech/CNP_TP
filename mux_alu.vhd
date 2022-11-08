library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

library work;
use work.mux_package.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in std_logic_vector(8 downto 0);
           B : in std_logic_vector(8 downto 0);
           OP : in std_logic_vector(3 downto 0);
           C : out std_logic_vector(8 downto 0);
           clk : in std_logic);
end ALU;

architecture Behavioral of ALU is
    signal x : std_logic_vector(8 downto 0);
begin
    ps_ALU: process(clk)
    begin
        if clk'event and clk'last_value = '0' and clk ='1' then 
            case OP is
                when ADD => C <= A+B;
                when MOINS => C <= A-B;
                when inverse => C <= not A;
                when MUL => 
                    x <= (A)*(B);
                    C <= x(8 downto 0);
                when f_ou => C <= A or B;
                when f_xor => C <= A xor B;
                when f_NAND => C <= A nand B;
                when others => C <= "1111";
            end case;
         end if;
     end process ps_ALU;
end Behavioral;

