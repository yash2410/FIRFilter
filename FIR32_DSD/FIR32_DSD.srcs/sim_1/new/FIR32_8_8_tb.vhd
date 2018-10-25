library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FIR32_8_8_tb is
end;

architecture bench of FIR32_8_8_tb is

  component FIR32_8_8
    generic (
      N  : natural := 8;
      L  : natural := 8 ;
      W  : natural := 8;
      G  : natural := 2
    );
    port (
      CLK  : in std_logic;
      RESET  : in  std_logic;
      DIN  : in std_logic_vector(W-1 downto 0);
      DOUT  : out std_logic_vector(W-1 downto 0)
    );
  end component;

  signal CLK: std_logic := '0';
  signal RESET: std_logic := '0';
  signal DIN: std_logic_vector(7 downto 0) := X"01";
  signal DOUT: std_logic_vector(7 downto 0) ;

begin

  -- Insert values for generic parameters !!
  uut: FIR32_8_8 generic map ( N     => 8,
                               L     => 8,
                               W     => 8,
                               G     => 2 )
                    port map ( CLK   => CLK,
                               RESET => RESET,
                               DIN   => DIN,
                               DOUT  => DOUT );

  
  clock: process
  begin
    CLK <= not CLK;
    DIN <= X"01";
    wait for 10ns;
  end process;
  

end;