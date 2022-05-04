library ieee;
use ieee.std_logic_1164.all;

entity PacketFilter is
port
(
	--Avalon MM interface
	clock				 	:in    	std_logic;
	reset					:in 		std_logic;
	address				:in 		std_logic_vector(3 downto 0); --Memory Address
	chipSelect			:in 		std_logic;							--Parameter for ethernet traffic
	inData				:in 		std_logic_vector(31 downto 0); --Does not use data coming from software
	outData  			:out     std_logic_vector(31 downto 0); --writes data from software
	writeTo			   :in 		std_logic;
	ReadTo				:in		std_logic;
	
	--Avalon Streaming interface
	avsChannel			:in 		std_logic_vector(31 downto 0); --Read in data coming from the triple speed ethernet, this is the UDP packet
	endofpacket 		:in 		std_logic; --Triple speed decides this
	startofpacket		:in		std_logic; --Triple speed decides this
	
	cycle             :in      std_logic --for testing Purposes to simulate functionality

);

end entity;


architecture rtl of PacketFilter is

	--UDP 64 bits total for header, use memory for variables
	signal sourceNum     : std_logic_vector(15 downto 0); --Source address for packet
	signal destNum 		: std_logic_vector(15 downto 0); --Destination address for packet
	signal lengthPack		: std_logic_vector(15 downto 0); --Length of Packet
	signal checkSum		: std_logic_vector(15 downto 0); --Error Correction

begin
  			
process (clock) 
	begin
		if rising_edge(clock) then
			if cycle = '0' then								--Store the first 32 bits of the header into sourceNum and destNum
				sourceNum <= avsChannel(15 downto 0);     
				destNum <= avsChannel(31 downto 16);
			else													--Store the next 32 bits of the header into lengthPack and checkSum
				lengthPack <= avsChannel(15 downto 0); 		
				checkSum <= avsChannel(31 downto 16); 
			end if;
		
			if reset = '1' then								--If reset is set, just send all 0's
				outData <= (others => '0');
			elsif chipSelect = '1' then
				if ReadTo = '1' then
					if address= "0000" then					
						outData <=  x"00000000"; 
					end if;
				end if;
				if writeTo = '1' then						--Conditional statement to determine if recieved packet matches values to filter
					if address = "0001" then
						if startofPacket = '1' then
							if sourceNum = x"0304" then
								if destNum = x"0102" then				
									if lengthPack = x"0708" then					
										if checkSum = x"0506" then						
											outData <= avsChannel;		--If the recieve packet matches, store it into outData to be sent over UART
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
	
end rtl;

