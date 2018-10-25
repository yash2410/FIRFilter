----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.10.2018 22:27:26
-- Design Name: 
-- Module Name: FIR_32tap - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
 
entity FIR32_8_8 is
  generic (
    N  : natural := 8;  --! DATA_WIDTH
    L  : natural := 8 ;  --! FIR DEPTH
    W  : natural := 8;    --! coefficient  scalar (c * 2**W to make them integer)
    G  : natural := 2  --! additional protection bits
  );
  port (
    CLK  : in std_logic;  --! FIR clk
    RESET  : in  std_logic;  --! asynchronize reset
    DIN  : in std_logic_vector(N-1 downto 0);  --! input
    DOUT  : out std_logic_vector(N-1 downto 0)  --! output
  );
end entity FIR32_8_8;
 
architecture ARCH_FIR of FIR32_8_8 is
  component DFF is
  generic (
    N : natural := 8 --! DATA_WIDTH;
  );
  port (
    CLK : in std_logic; --! clock signal
    RESET : in std_logic; --! synchronize reset signal
    DIN : in signed(N-1 downto 0); --! input
    DOUT : out signed(N-1 downto 0) --! output
  );
  end component DFF;
 
  type CON is array (0 to L-1) of signed(N-1 downto 0);
    signal QA : CON;  --! connections between DFF
 
  type CON1 is array (0 to L-2) of signed(N+W-1 downto 0);
    signal MUL : CON1; --! DFF outputs after MULTIPLY with coefficients
  type coeffcient is array (L-1 downto 0) of std_logic_vector(7 downto 0);
  constant COE : coeffcient := (
                    X"06",
                    X"20",
                    X"6F",
                    X"D2",
                    X"FF",
                    X"D2",
                    X"6F",
                    X"20"
                );
    
  begin
 
  -------------------------Z-1 part-------------------------  
   
  stage1: DFF generic map (N) port map (CLK, RESET, signed(DIN), QA(0)); --! input buffor not shown in picture
   
  g0:for i in 0 to L-2 generate
    Zminus1: DFF generic map (N) port map(CLK,RESET,QA(i),QA(i+1));
  end generate g0;
 
  ---------------MULTIPLICATION-----------------------------
  g1:for i in 0 to L-2 generate
    MULTIPLY: MUL(i) <= QA(i) *signed(COE(i)); 
  end generate g1;
 
  ----------------OUTPUT-----------------------------------
  
  p0: process(MUL)
  variable temp: signed(N+W+G-1 downto 0);
  begin 
    --! sum of MUL
    temp := (others=>'0');
    for i in 0 to MUL'length-1 loop
      temp := temp + MUL(i);
    end loop;
    --! DOUT after dropping ',' bits.
    DOUT <= std_logic_vector(temp(N+W+G-1 downto W+G));
  end process p0;
  
end architecture ARCH_FIR;