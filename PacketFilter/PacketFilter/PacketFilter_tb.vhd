library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PacketFilter_tb is
end PacketFilter_tb;

architecture tb of PacketFilter_tb is
	
	--Avalon MM interface
	signal clock : std_logic :=  '0';
	signal clock2 : std_logic := '0';
	signal reset : std_logic :=  '0';
	signal address : std_logic_vector(3 downto 0) := "0001";
	signal chipSelect : std_logic :=  '1';
	signal inData : std_logic_vector(31 downto 0) := x"00000000"; --Not used for Testing
	signal outData : std_logic_vector(31 downto 0) := x"00000000"; --Data that is sent to UART
	signal writeTo : std_logic :=  '1';
	signal ReadTo : std_logic :=  '0';
	
	--Avalon Streaming interface
	signal avsChannel : std_logic_vector(31 downto 0); --Data recieved from Ethernet
	signal endofpacket : std_logic :=  '0';
	signal startofpacket : std_logic :=  '1';
	
	signal cycle : std_logic := '0'; --Set to simulate recieving Ethernet Data
	

begin
	
	clock <= not clock after 30 ns;
	clock2 <= not clock2 after 15 ns;
	
	process(clock)
	begin
	cycle <= not cycle;
		if cycle = '1' then					--First 32 bits of the header
		--avsChannel <= x"01020304";
		avsChannel <= x"00300000";
		
		else										--Next 32 bits of the header
		--avsChannel <= x"05060708";	
		avsChannel <= x"00005000";
	end if;
	end process;
	
	uut : entity work.PacketFilter
	port map (
	clock => clock2, reset => reset,
	address => address, chipSelect => chipSelect,
	inData => inData, outData => outData,
	writeTo => writeTo, ReadTo => ReadTo,
	avsChannel => avsChannel, endofpacket => endofpacket,
	startofpacket => startofpacket, cycle => cycle
	
	);
end tb;
