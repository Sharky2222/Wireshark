
library ieee;
use ieee.std_logic_1164.all;

entity PacketFilter is
port
(
	--Avalon MM interface
	clock				 	:in    	std_logic;
	reset					:in 		std_logic;
	address				:in 		std_logic_vector(3 downto 0);
	inData				:in 		std_logic_vector(31 downto 0); --read data from software, set inData from avsChannel.
	outData  			:out     std_logic_vector(31 downto 0) --Should not need, but writes data from software
	write_en			   :in 		std_logic;
	avsChannel			:in 		std_logic_vector(31 downto 0); --Read in data coming from the triple speed ethernet
	endofpacket 		:in 		std_logic;
	startofpacket		:in		std_logic;

);
end entity;

architecture filter of PacketFilter is
	--UDP 64 bits total for header, use memory for variables
	signal sourceNum     : std_logic_vector(15 downto 0); --2 bytes
	signal destNum 		: std_logic_vector(15 downto 0); --2 bytes
	signal lengthPack		: std_logic_vector(15 downto 0); --2 bytes
	signal checkSum		: std_logic_vector(15 downto 0); --2 bytes, not used for error correction
	signal UDP_Packet    : std_logic_vector(63 downto 0); --send to out data 63 bits 
	
	
begin
	--instantiate input signals when the issue of getting them to the module is solved
	
	process (clock) 
	begin
		if(rising_edge(clock)) then
			
		end if;
	end process;
end filter;