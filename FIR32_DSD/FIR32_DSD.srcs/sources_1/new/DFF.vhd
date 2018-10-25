library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity DFF is
    generic (
      N : natural := 8 --! DATA_WIDTH;
    );
    port (
      CLK : in std_logic; --! clock signal
      RESET : in std_logic; --! asynchronize reset signal
      DIN : in signed(N-1 downto 0); --! input
      DOUT : out signed(N-1 downto 0) --! output
    );
end entity DFF;
    
architecture behave of DFF is
  
begin
  
  p0:process(CLK,RESET)
  begin
    --! asynchronize reset
    if RESET='1' then
      DOUT <= (others=>'0');
    elsif rising_edge(CLK) then
      DOUT <= DIN;
    end if;
  end process p0;
  
end architecture behave;
