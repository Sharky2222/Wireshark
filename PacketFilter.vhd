
library ieee;
use ieee.std_logic_1164.all;

entity PacketFilter is
port
(
	--Avalon MM interface
	clock				 	:in    	std_logic;
	reset					:in 		std_logic;
	address				:in 		std_logic_vector(3 downto 0);
	chipSelect			:in 		std_logic;
	inData				:in 		std_logic_vector(31 downto 0); --read data from software, set inData from avsChannel.
	outData  			:out     std_logic_vector(31 downto 0); --writes data from software
	writeTo			   :in 		std_logic;
	ReadTo				:in		std_logic;
	
	--Avalon Streaming interface
	avsChannel			:in 		std_logic_vector(31 downto 0); --Read in data coming from the triple speed ethernet, this is the UDP packet
	endofpacket 		:in 		std_logic; --Triple speed decides this
	startofpacket		:in		std_logic --Triple speed descides this

);
end entity;

architecture filter of PacketFilter is
	--UDP 64 bits total for header, use memory for variables
	signal sourceNum     : std_logic_vector(15 downto 0); --2 bytes
	signal destNum 		: std_logic_vector(15 downto 0); --2 bytes
	signal lengthPack		: std_logic_vector(15 downto 0); --2 bytes
	signal checkSum		: std_logic_vector(15 downto 0); --2 bytes, not used for error correction
	
	signal clk				: std_logic;
	signal buff				: std_logic := 0;
	
begin
	--may or may not work
	if buff = '0' then 
		sourceNum <= avsChannel(15 downto 0);
		destNum <= avsChannel(31 downto 16);
	elsif buff = '1' then 
		lengthPack <= avsChannel(15 downto 0);
		checkSum <= avsChannel(31 downto 16);
	end if;
	
	-- set up 100 MHz clock
	process (clock)
	begin
		if rising_edge(clock) then
			clk <= not clk;
			buff <= '1';
		end if;
	end process;
	
	--Use to test Avs channel output
--	process (clk) 
--	begin
--		if rising_edge(clk) then
--			if reset = '1' then
--				outData <= (others => '0');
--			elsif chipSelect = '1' then
--				if ReadTo = '1' then
--					if address= "0000" then
--						outData <=  x"00000000"; --32 bits of 0
--					end if;
--				end if;
--				if writeTo = '1' then
--					if address = "0001" then
--						outData <= avsChannel;			
--					end if;
--				end if;
--			end if;
--		end if;
--	end process;

	process (clk) 
	begin
		if rising_edge(clk) then
			if reset = '1' then
				outData <= (others => '0');
			elsif chipSelect = '1' then
				if ReadTo = '1' then
					if address= "0000" then
						outData <=  x"00000000"; --32 bits of 0
					end if;
				end if;
				if writeTo = '1' then
					if address = "0001" then
						if startofPacket = '1' then	
							if sourceNum = x"00000000" then
								if destNum = x"00000000" then							
									if lengthPack = x"00000000" then							
										if checkSum = x"00000000" then							
											outData <= avsChannel;
										end if;
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
	

	
end filter;