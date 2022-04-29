library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PacketFilter_tb is
end PacketFilter_tb;

architecture tb of PacketFilter_tb is
	
	--Avalon MM interface
	signal clock : std_logic :=  '0';
	signal reset : std_logic :=  '0';
	signal address : std_logic_vector(3 downto 0) := "0001";
	signal chipSelect : std_logic :=  '1';
	signal inData : std_logic_vector(31 downto 0) := x"00000000";
	signal outData : std_logic_vector(31 downto 0) := x"00000000";
	signal writeTo : std_logic :=  '1';
	signal ReadTo : std_logic :=  '0';
	
	--Avalon Streaming interface
	signal avsChannel : std_logic_vector(31 downto 0);
	signal endofpacket : std_logic :=  '0';
	signal startofpacket : std_logic :=  '1';
	

begin
	clock <= not clock after 4 ns;
	
	process
	begin
		
		avsChannel <= x"01020304";
		wait for 500 ns;
	
	end process;
	
	uut : entity work.PacketFilter
	port map (
	clock => clock, reset => reset,
	address => address, chipSelect => chipSelect,
	inData => inData, outData => outData,
	writeTo => writeTo, ReadTo => ReadTo,
	avsChannel => avsChannel, endofpacket => endofpacket,
	startofpacket => startofpacket
	
	);
end tb;
