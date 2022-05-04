-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/03/2022 11:06:11"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PacketFilter IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	address : IN std_logic_vector(3 DOWNTO 0);
	chipSelect : IN std_logic;
	inData : IN std_logic_vector(31 DOWNTO 0);
	outData : OUT std_logic_vector(31 DOWNTO 0);
	writeTo : IN std_logic;
	ReadTo : IN std_logic;
	avsChannel : IN std_logic_vector(31 DOWNTO 0);
	endofpacket : IN std_logic;
	startofpacket : IN std_logic;
	cycle : IN std_logic
	);
END PacketFilter;

-- Design Ports Information
-- inData[0]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[4]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[5]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[6]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[7]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[8]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[9]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[10]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[12]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[13]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[14]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[15]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[16]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[17]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[18]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[19]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[20]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[21]	=>  Location: PIN_AJ21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[22]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[23]	=>  Location: PIN_AJ22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[24]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[25]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[26]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[27]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[28]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[29]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[30]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inData[31]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[1]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[2]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[3]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[5]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[6]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[7]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[8]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[9]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[10]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[11]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[12]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[13]	=>  Location: PIN_AH20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[14]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[16]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[17]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[18]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[19]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[20]	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[21]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[22]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[23]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[24]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[25]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[26]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[27]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[28]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[29]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[30]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outData[31]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- endofpacket	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[0]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- startofpacket	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeTo	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipSelect	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadTo	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[1]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[2]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[4]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[6]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[7]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[8]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[9]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[10]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[11]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[12]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[13]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[14]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[16]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[17]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[18]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[19]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[20]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[21]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[22]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[23]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[24]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[25]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[26]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[27]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[28]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[29]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[30]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avsChannel[31]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cycle	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PacketFilter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_address : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_chipSelect : std_logic;
SIGNAL ww_inData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_writeTo : std_logic;
SIGNAL ww_ReadTo : std_logic;
SIGNAL ww_avsChannel : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_endofpacket : std_logic;
SIGNAL ww_startofpacket : std_logic;
SIGNAL ww_cycle : std_logic;
SIGNAL \inData[0]~input_o\ : std_logic;
SIGNAL \inData[1]~input_o\ : std_logic;
SIGNAL \inData[2]~input_o\ : std_logic;
SIGNAL \inData[3]~input_o\ : std_logic;
SIGNAL \inData[4]~input_o\ : std_logic;
SIGNAL \inData[5]~input_o\ : std_logic;
SIGNAL \inData[6]~input_o\ : std_logic;
SIGNAL \inData[7]~input_o\ : std_logic;
SIGNAL \inData[8]~input_o\ : std_logic;
SIGNAL \inData[9]~input_o\ : std_logic;
SIGNAL \inData[10]~input_o\ : std_logic;
SIGNAL \inData[11]~input_o\ : std_logic;
SIGNAL \inData[12]~input_o\ : std_logic;
SIGNAL \inData[13]~input_o\ : std_logic;
SIGNAL \inData[14]~input_o\ : std_logic;
SIGNAL \inData[15]~input_o\ : std_logic;
SIGNAL \inData[16]~input_o\ : std_logic;
SIGNAL \inData[17]~input_o\ : std_logic;
SIGNAL \inData[18]~input_o\ : std_logic;
SIGNAL \inData[19]~input_o\ : std_logic;
SIGNAL \inData[20]~input_o\ : std_logic;
SIGNAL \inData[21]~input_o\ : std_logic;
SIGNAL \inData[22]~input_o\ : std_logic;
SIGNAL \inData[23]~input_o\ : std_logic;
SIGNAL \inData[24]~input_o\ : std_logic;
SIGNAL \inData[25]~input_o\ : std_logic;
SIGNAL \inData[26]~input_o\ : std_logic;
SIGNAL \inData[27]~input_o\ : std_logic;
SIGNAL \inData[28]~input_o\ : std_logic;
SIGNAL \inData[29]~input_o\ : std_logic;
SIGNAL \inData[30]~input_o\ : std_logic;
SIGNAL \inData[31]~input_o\ : std_logic;
SIGNAL \endofpacket~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \avsChannel[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \avsChannel[15]~input_o\ : std_logic;
SIGNAL \cycle~input_o\ : std_logic;
SIGNAL \avsChannel[19]~input_o\ : std_logic;
SIGNAL \destNum[3]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[16]~input_o\ : std_logic;
SIGNAL \destNum[0]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[14]~input_o\ : std_logic;
SIGNAL \avsChannel[17]~input_o\ : std_logic;
SIGNAL \avsChannel[18]~input_o\ : std_logic;
SIGNAL \destNum[2]~feeder_combout\ : std_logic;
SIGNAL \outData~0_combout\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \startofpacket~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \outData~7_combout\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \writeTo~input_o\ : std_logic;
SIGNAL \avsChannel[12]~input_o\ : std_logic;
SIGNAL \sourceNum[14]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[13]~input_o\ : std_logic;
SIGNAL \sourceNum[15]~feeder_combout\ : std_logic;
SIGNAL \outData~8_combout\ : std_logic;
SIGNAL \avsChannel[27]~input_o\ : std_logic;
SIGNAL \checkSum[11]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[7]~input_o\ : std_logic;
SIGNAL \avsChannel[6]~input_o\ : std_logic;
SIGNAL \avsChannel[5]~input_o\ : std_logic;
SIGNAL \avsChannel[2]~input_o\ : std_logic;
SIGNAL \lengthPack[2]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[4]~input_o\ : std_logic;
SIGNAL \lengthPack[4]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[3]~input_o\ : std_logic;
SIGNAL \outData~2_combout\ : std_logic;
SIGNAL \checkSum[2]~feeder_combout\ : std_logic;
SIGNAL \checkSum[0]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[21]~input_o\ : std_logic;
SIGNAL \checkSum[5]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[20]~input_o\ : std_logic;
SIGNAL \checkSum[4]~feeder_combout\ : std_logic;
SIGNAL \checkSum[3]~feeder_combout\ : std_logic;
SIGNAL \outData~4_combout\ : std_logic;
SIGNAL \avsChannel[31]~input_o\ : std_logic;
SIGNAL \avsChannel[30]~input_o\ : std_logic;
SIGNAL \avsChannel[28]~input_o\ : std_logic;
SIGNAL \avsChannel[29]~input_o\ : std_logic;
SIGNAL \avsChannel[1]~input_o\ : std_logic;
SIGNAL \lengthPack[0]~feeder_combout\ : std_logic;
SIGNAL \outData~3_combout\ : std_logic;
SIGNAL \lengthPack[12]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[10]~input_o\ : std_logic;
SIGNAL \avsChannel[8]~input_o\ : std_logic;
SIGNAL \lengthPack[8]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[11]~input_o\ : std_logic;
SIGNAL \lengthPack[13]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[9]~input_o\ : std_logic;
SIGNAL \lengthPack[9]~feeder_combout\ : std_logic;
SIGNAL \outData~1_combout\ : std_logic;
SIGNAL \avsChannel[24]~input_o\ : std_logic;
SIGNAL \checkSum[8]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[26]~input_o\ : std_logic;
SIGNAL \avsChannel[23]~input_o\ : std_logic;
SIGNAL \checkSum[7]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[25]~input_o\ : std_logic;
SIGNAL \checkSum[9]~feeder_combout\ : std_logic;
SIGNAL \avsChannel[22]~input_o\ : std_logic;
SIGNAL \outData~5_combout\ : std_logic;
SIGNAL \outData~6_combout\ : std_logic;
SIGNAL \destNum[7]~feeder_combout\ : std_logic;
SIGNAL \destNum[6]~feeder_combout\ : std_logic;
SIGNAL \outData~11_combout\ : std_logic;
SIGNAL \sourceNum[3]~feeder_combout\ : std_logic;
SIGNAL \sourceNum[4]~feeder_combout\ : std_logic;
SIGNAL \sourceNum[0]~feeder_combout\ : std_logic;
SIGNAL \outData~10_combout\ : std_logic;
SIGNAL \sourceNum[10]~feeder_combout\ : std_logic;
SIGNAL \sourceNum[6]~feeder_combout\ : std_logic;
SIGNAL \outData~9_combout\ : std_logic;
SIGNAL \destNum[11]~feeder_combout\ : std_logic;
SIGNAL \destNum[10]~feeder_combout\ : std_logic;
SIGNAL \outData~12_combout\ : std_logic;
SIGNAL \outData~13_combout\ : std_logic;
SIGNAL \outData[0]~14_combout\ : std_logic;
SIGNAL \chipSelect~input_o\ : std_logic;
SIGNAL \ReadTo~input_o\ : std_logic;
SIGNAL \outData~16_combout\ : std_logic;
SIGNAL \outData~15_combout\ : std_logic;
SIGNAL \outData[0]~17_combout\ : std_logic;
SIGNAL \outData[0]~reg0_q\ : std_logic;
SIGNAL \outData[1]~reg0_q\ : std_logic;
SIGNAL \outData[2]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[2]~reg0_q\ : std_logic;
SIGNAL \outData[3]~reg0_q\ : std_logic;
SIGNAL \outData[4]~reg0_q\ : std_logic;
SIGNAL \outData[5]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[5]~reg0_q\ : std_logic;
SIGNAL \outData[6]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[6]~reg0_q\ : std_logic;
SIGNAL \outData[7]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[7]~reg0_q\ : std_logic;
SIGNAL \outData[8]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[8]~reg0_q\ : std_logic;
SIGNAL \outData[9]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[9]~reg0_q\ : std_logic;
SIGNAL \outData[10]~reg0_q\ : std_logic;
SIGNAL \outData[11]~reg0_q\ : std_logic;
SIGNAL \outData[12]~reg0_q\ : std_logic;
SIGNAL \outData[13]~reg0_q\ : std_logic;
SIGNAL \outData[14]~reg0_q\ : std_logic;
SIGNAL \outData[15]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[15]~reg0_q\ : std_logic;
SIGNAL \outData[16]~reg0_q\ : std_logic;
SIGNAL \outData[17]~reg0_q\ : std_logic;
SIGNAL \outData[18]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[18]~reg0_q\ : std_logic;
SIGNAL \outData[19]~reg0_q\ : std_logic;
SIGNAL \outData[20]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[20]~reg0_q\ : std_logic;
SIGNAL \outData[21]~reg0_q\ : std_logic;
SIGNAL \outData[22]~reg0_q\ : std_logic;
SIGNAL \outData[23]~reg0_q\ : std_logic;
SIGNAL \outData[24]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[24]~reg0_q\ : std_logic;
SIGNAL \outData[25]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[25]~reg0_q\ : std_logic;
SIGNAL \outData[26]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[26]~reg0_q\ : std_logic;
SIGNAL \outData[27]~reg0feeder_combout\ : std_logic;
SIGNAL \outData[27]~reg0_q\ : std_logic;
SIGNAL \outData[28]~reg0_q\ : std_logic;
SIGNAL \outData[29]~reg0_q\ : std_logic;
SIGNAL \outData[30]~reg0_q\ : std_logic;
SIGNAL \outData[31]~reg0_q\ : std_logic;
SIGNAL lengthPack : std_logic_vector(15 DOWNTO 0);
SIGNAL destNum : std_logic_vector(15 DOWNTO 0);
SIGNAL checkSum : std_logic_vector(15 DOWNTO 0);
SIGNAL sourceNum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_cycle~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ReadTo~input_o\ : std_logic;
SIGNAL \ALT_INV_chipSelect~input_o\ : std_logic;
SIGNAL \ALT_INV_writeTo~input_o\ : std_logic;
SIGNAL \ALT_INV_address[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_address[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_startofpacket~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_avsChannel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_outData~16_combout\ : std_logic;
SIGNAL \ALT_INV_outData~15_combout\ : std_logic;
SIGNAL \ALT_INV_outData~13_combout\ : std_logic;
SIGNAL \ALT_INV_outData~12_combout\ : std_logic;
SIGNAL ALT_INV_destNum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_outData~11_combout\ : std_logic;
SIGNAL \ALT_INV_outData~10_combout\ : std_logic;
SIGNAL ALT_INV_sourceNum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_outData~9_combout\ : std_logic;
SIGNAL \ALT_INV_outData~8_combout\ : std_logic;
SIGNAL \ALT_INV_outData~7_combout\ : std_logic;
SIGNAL \ALT_INV_outData~6_combout\ : std_logic;
SIGNAL \ALT_INV_outData~5_combout\ : std_logic;
SIGNAL ALT_INV_checkSum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_outData~4_combout\ : std_logic;
SIGNAL \ALT_INV_outData~3_combout\ : std_logic;
SIGNAL ALT_INV_lengthPack : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_outData~2_combout\ : std_logic;
SIGNAL \ALT_INV_outData~1_combout\ : std_logic;
SIGNAL \ALT_INV_outData~0_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_address <= address;
ww_chipSelect <= chipSelect;
ww_inData <= inData;
outData <= ww_outData;
ww_writeTo <= writeTo;
ww_ReadTo <= ReadTo;
ww_avsChannel <= avsChannel;
ww_endofpacket <= endofpacket;
ww_startofpacket <= startofpacket;
ww_cycle <= cycle;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_cycle~input_o\ <= NOT \cycle~input_o\;
\ALT_INV_avsChannel[27]~input_o\ <= NOT \avsChannel[27]~input_o\;
\ALT_INV_avsChannel[26]~input_o\ <= NOT \avsChannel[26]~input_o\;
\ALT_INV_avsChannel[25]~input_o\ <= NOT \avsChannel[25]~input_o\;
\ALT_INV_avsChannel[24]~input_o\ <= NOT \avsChannel[24]~input_o\;
\ALT_INV_avsChannel[23]~input_o\ <= NOT \avsChannel[23]~input_o\;
\ALT_INV_avsChannel[22]~input_o\ <= NOT \avsChannel[22]~input_o\;
\ALT_INV_avsChannel[21]~input_o\ <= NOT \avsChannel[21]~input_o\;
\ALT_INV_avsChannel[20]~input_o\ <= NOT \avsChannel[20]~input_o\;
\ALT_INV_avsChannel[19]~input_o\ <= NOT \avsChannel[19]~input_o\;
\ALT_INV_avsChannel[18]~input_o\ <= NOT \avsChannel[18]~input_o\;
\ALT_INV_avsChannel[16]~input_o\ <= NOT \avsChannel[16]~input_o\;
\ALT_INV_avsChannel[15]~input_o\ <= NOT \avsChannel[15]~input_o\;
\ALT_INV_avsChannel[14]~input_o\ <= NOT \avsChannel[14]~input_o\;
\ALT_INV_avsChannel[13]~input_o\ <= NOT \avsChannel[13]~input_o\;
\ALT_INV_avsChannel[12]~input_o\ <= NOT \avsChannel[12]~input_o\;
\ALT_INV_avsChannel[10]~input_o\ <= NOT \avsChannel[10]~input_o\;
\ALT_INV_avsChannel[9]~input_o\ <= NOT \avsChannel[9]~input_o\;
\ALT_INV_avsChannel[8]~input_o\ <= NOT \avsChannel[8]~input_o\;
\ALT_INV_avsChannel[7]~input_o\ <= NOT \avsChannel[7]~input_o\;
\ALT_INV_avsChannel[6]~input_o\ <= NOT \avsChannel[6]~input_o\;
\ALT_INV_avsChannel[5]~input_o\ <= NOT \avsChannel[5]~input_o\;
\ALT_INV_avsChannel[4]~input_o\ <= NOT \avsChannel[4]~input_o\;
\ALT_INV_avsChannel[3]~input_o\ <= NOT \avsChannel[3]~input_o\;
\ALT_INV_avsChannel[2]~input_o\ <= NOT \avsChannel[2]~input_o\;
\ALT_INV_ReadTo~input_o\ <= NOT \ReadTo~input_o\;
\ALT_INV_chipSelect~input_o\ <= NOT \chipSelect~input_o\;
\ALT_INV_writeTo~input_o\ <= NOT \writeTo~input_o\;
\ALT_INV_address[0]~input_o\ <= NOT \address[0]~input_o\;
\ALT_INV_address[3]~input_o\ <= NOT \address[3]~input_o\;
\ALT_INV_address[2]~input_o\ <= NOT \address[2]~input_o\;
\ALT_INV_address[1]~input_o\ <= NOT \address[1]~input_o\;
\ALT_INV_startofpacket~input_o\ <= NOT \startofpacket~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_avsChannel[0]~input_o\ <= NOT \avsChannel[0]~input_o\;
\ALT_INV_outData~16_combout\ <= NOT \outData~16_combout\;
\ALT_INV_outData~15_combout\ <= NOT \outData~15_combout\;
\ALT_INV_outData~13_combout\ <= NOT \outData~13_combout\;
\ALT_INV_outData~12_combout\ <= NOT \outData~12_combout\;
ALT_INV_destNum(15) <= NOT destNum(15);
ALT_INV_destNum(14) <= NOT destNum(14);
ALT_INV_destNum(13) <= NOT destNum(13);
ALT_INV_destNum(12) <= NOT destNum(12);
ALT_INV_destNum(11) <= NOT destNum(11);
ALT_INV_destNum(10) <= NOT destNum(10);
\ALT_INV_outData~11_combout\ <= NOT \outData~11_combout\;
ALT_INV_destNum(9) <= NOT destNum(9);
ALT_INV_destNum(8) <= NOT destNum(8);
ALT_INV_destNum(7) <= NOT destNum(7);
ALT_INV_destNum(6) <= NOT destNum(6);
ALT_INV_destNum(5) <= NOT destNum(5);
ALT_INV_destNum(4) <= NOT destNum(4);
\ALT_INV_outData~10_combout\ <= NOT \outData~10_combout\;
ALT_INV_sourceNum(5) <= NOT sourceNum(5);
ALT_INV_sourceNum(4) <= NOT sourceNum(4);
ALT_INV_sourceNum(3) <= NOT sourceNum(3);
ALT_INV_sourceNum(2) <= NOT sourceNum(2);
ALT_INV_sourceNum(1) <= NOT sourceNum(1);
ALT_INV_sourceNum(0) <= NOT sourceNum(0);
\ALT_INV_outData~9_combout\ <= NOT \outData~9_combout\;
ALT_INV_sourceNum(11) <= NOT sourceNum(11);
ALT_INV_sourceNum(10) <= NOT sourceNum(10);
ALT_INV_sourceNum(9) <= NOT sourceNum(9);
ALT_INV_sourceNum(8) <= NOT sourceNum(8);
ALT_INV_sourceNum(7) <= NOT sourceNum(7);
ALT_INV_sourceNum(6) <= NOT sourceNum(6);
\ALT_INV_outData~8_combout\ <= NOT \outData~8_combout\;
ALT_INV_sourceNum(15) <= NOT sourceNum(15);
ALT_INV_sourceNum(14) <= NOT sourceNum(14);
ALT_INV_sourceNum(13) <= NOT sourceNum(13);
ALT_INV_sourceNum(12) <= NOT sourceNum(12);
\ALT_INV_outData~7_combout\ <= NOT \outData~7_combout\;
\ALT_INV_outData~6_combout\ <= NOT \outData~6_combout\;
\ALT_INV_outData~5_combout\ <= NOT \outData~5_combout\;
ALT_INV_checkSum(10) <= NOT checkSum(10);
ALT_INV_checkSum(9) <= NOT checkSum(9);
ALT_INV_checkSum(8) <= NOT checkSum(8);
ALT_INV_checkSum(7) <= NOT checkSum(7);
ALT_INV_checkSum(6) <= NOT checkSum(6);
\ALT_INV_outData~4_combout\ <= NOT \outData~4_combout\;
ALT_INV_checkSum(5) <= NOT checkSum(5);
ALT_INV_checkSum(4) <= NOT checkSum(4);
ALT_INV_checkSum(3) <= NOT checkSum(3);
ALT_INV_checkSum(2) <= NOT checkSum(2);
ALT_INV_checkSum(1) <= NOT checkSum(1);
ALT_INV_checkSum(0) <= NOT checkSum(0);
\ALT_INV_outData~3_combout\ <= NOT \outData~3_combout\;
ALT_INV_lengthPack(1) <= NOT lengthPack(1);
ALT_INV_lengthPack(0) <= NOT lengthPack(0);
ALT_INV_checkSum(15) <= NOT checkSum(15);
ALT_INV_checkSum(14) <= NOT checkSum(14);
ALT_INV_checkSum(13) <= NOT checkSum(13);
ALT_INV_checkSum(12) <= NOT checkSum(12);
\ALT_INV_outData~2_combout\ <= NOT \outData~2_combout\;
ALT_INV_lengthPack(7) <= NOT lengthPack(7);
ALT_INV_lengthPack(6) <= NOT lengthPack(6);
ALT_INV_lengthPack(5) <= NOT lengthPack(5);
ALT_INV_lengthPack(4) <= NOT lengthPack(4);
ALT_INV_lengthPack(3) <= NOT lengthPack(3);
ALT_INV_lengthPack(2) <= NOT lengthPack(2);
\ALT_INV_outData~1_combout\ <= NOT \outData~1_combout\;
ALT_INV_lengthPack(13) <= NOT lengthPack(13);
ALT_INV_lengthPack(12) <= NOT lengthPack(12);
ALT_INV_lengthPack(11) <= NOT lengthPack(11);
ALT_INV_lengthPack(10) <= NOT lengthPack(10);
ALT_INV_lengthPack(9) <= NOT lengthPack(9);
ALT_INV_lengthPack(8) <= NOT lengthPack(8);
ALT_INV_checkSum(11) <= NOT checkSum(11);
\ALT_INV_outData~0_combout\ <= NOT \outData~0_combout\;
ALT_INV_destNum(3) <= NOT destNum(3);
ALT_INV_destNum(2) <= NOT destNum(2);
ALT_INV_destNum(1) <= NOT destNum(1);
ALT_INV_destNum(0) <= NOT destNum(0);
ALT_INV_lengthPack(15) <= NOT lengthPack(15);
ALT_INV_lengthPack(14) <= NOT lengthPack(14);

-- Location: IOOBUF_X12_Y0_N36
\outData[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(0));

-- Location: IOOBUF_X30_Y0_N53
\outData[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(1));

-- Location: IOOBUF_X50_Y0_N76
\outData[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(2));

-- Location: IOOBUF_X50_Y0_N93
\outData[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(3));

-- Location: IOOBUF_X36_Y0_N19
\outData[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(4));

-- Location: IOOBUF_X14_Y0_N2
\outData[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(5));

-- Location: IOOBUF_X18_Y0_N59
\outData[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(6));

-- Location: IOOBUF_X18_Y0_N42
\outData[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(7));

-- Location: IOOBUF_X38_Y0_N53
\outData[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(8));

-- Location: IOOBUF_X30_Y0_N19
\outData[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(9));

-- Location: IOOBUF_X50_Y0_N59
\outData[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(10));

-- Location: IOOBUF_X34_Y0_N76
\outData[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(11));

-- Location: IOOBUF_X10_Y0_N76
\outData[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(12));

-- Location: IOOBUF_X54_Y0_N19
\outData[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(13));

-- Location: IOOBUF_X38_Y0_N36
\outData[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(14));

-- Location: IOOBUF_X16_Y0_N2
\outData[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(15));

-- Location: IOOBUF_X52_Y0_N19
\outData[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(16));

-- Location: IOOBUF_X18_Y0_N93
\outData[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(17));

-- Location: IOOBUF_X10_Y0_N93
\outData[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(18));

-- Location: IOOBUF_X14_Y0_N19
\outData[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(19));

-- Location: IOOBUF_X36_Y0_N53
\outData[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(20));

-- Location: IOOBUF_X24_Y81_N19
\outData[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(21));

-- Location: IOOBUF_X32_Y0_N36
\outData[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(22));

-- Location: IOOBUF_X36_Y0_N36
\outData[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(23));

-- Location: IOOBUF_X36_Y0_N2
\outData[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(24));

-- Location: IOOBUF_X26_Y81_N93
\outData[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[25]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(25));

-- Location: IOOBUF_X34_Y0_N42
\outData[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[26]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(26));

-- Location: IOOBUF_X56_Y0_N2
\outData[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[27]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(27));

-- Location: IOOBUF_X30_Y0_N36
\outData[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[28]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(28));

-- Location: IOOBUF_X34_Y0_N59
\outData[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[29]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(29));

-- Location: IOOBUF_X30_Y0_N2
\outData[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[30]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(30));

-- Location: IOOBUF_X24_Y0_N2
\outData[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \outData[31]~reg0_q\,
	devoe => ww_devoe,
	o => ww_outData(31));

-- Location: IOIBUF_X89_Y25_N21
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G10
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X20_Y0_N35
\avsChannel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(0),
	o => \avsChannel[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\avsChannel[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(15),
	o => \avsChannel[15]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\cycle~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cycle,
	o => \cycle~input_o\);

-- Location: FF_X23_Y4_N26
\lengthPack[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[15]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(15));

-- Location: IOIBUF_X14_Y0_N52
\avsChannel[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(19),
	o => \avsChannel[19]~input_o\);

-- Location: LABCELL_X23_Y4_N6
\destNum[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \destNum[3]~feeder_combout\ = ( \avsChannel[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[19]~input_o\,
	combout => \destNum[3]~feeder_combout\);

-- Location: FF_X23_Y4_N8
\destNum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \destNum[3]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(3));

-- Location: IOIBUF_X28_Y0_N1
\avsChannel[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(16),
	o => \avsChannel[16]~input_o\);

-- Location: LABCELL_X23_Y4_N21
\destNum[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \destNum[0]~feeder_combout\ = ( \avsChannel[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[16]~input_o\,
	combout => \destNum[0]~feeder_combout\);

-- Location: FF_X23_Y4_N23
\destNum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \destNum[0]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(0));

-- Location: IOIBUF_X26_Y0_N75
\avsChannel[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(14),
	o => \avsChannel[14]~input_o\);

-- Location: FF_X23_Y4_N59
\lengthPack[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[14]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(14));

-- Location: IOIBUF_X12_Y0_N52
\avsChannel[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(17),
	o => \avsChannel[17]~input_o\);

-- Location: FF_X23_Y4_N5
\destNum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[17]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(1));

-- Location: IOIBUF_X12_Y0_N18
\avsChannel[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(18),
	o => \avsChannel[18]~input_o\);

-- Location: LABCELL_X23_Y4_N18
\destNum[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \destNum[2]~feeder_combout\ = ( \avsChannel[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[18]~input_o\,
	combout => \destNum[2]~feeder_combout\);

-- Location: FF_X23_Y4_N20
\destNum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \destNum[2]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(2));

-- Location: LABCELL_X23_Y4_N36
\outData~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~0_combout\ = ( destNum(1) & ( !destNum(2) & ( (!lengthPack(15) & (!destNum(3) & (!destNum(0) & !lengthPack(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lengthPack(15),
	datab => ALT_INV_destNum(3),
	datac => ALT_INV_destNum(0),
	datad => ALT_INV_lengthPack(14),
	datae => ALT_INV_destNum(1),
	dataf => ALT_INV_destNum(2),
	combout => \outData~0_combout\);

-- Location: IOIBUF_X40_Y0_N52
\address[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\address[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\startofpacket~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_startofpacket,
	o => \startofpacket~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\address[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: LABCELL_X35_Y1_N24
\outData~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~7_combout\ = ( !\address[2]~input_o\ & ( (!\address[3]~input_o\ & (!\address[1]~input_o\ & \startofpacket~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[3]~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_startofpacket~input_o\,
	datae => \ALT_INV_address[2]~input_o\,
	combout => \outData~7_combout\);

-- Location: IOIBUF_X38_Y0_N18
\address[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\writeTo~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeTo,
	o => \writeTo~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\avsChannel[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(12),
	o => \avsChannel[12]~input_o\);

-- Location: FF_X23_Y3_N23
\sourceNum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[12]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(12));

-- Location: LABCELL_X22_Y3_N48
\sourceNum[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sourceNum[14]~feeder_combout\ = ( \avsChannel[14]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[14]~input_o\,
	combout => \sourceNum[14]~feeder_combout\);

-- Location: FF_X22_Y3_N49
\sourceNum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sourceNum[14]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(14));

-- Location: IOIBUF_X28_Y0_N18
\avsChannel[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(13),
	o => \avsChannel[13]~input_o\);

-- Location: FF_X23_Y3_N56
\sourceNum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[13]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(13));

-- Location: LABCELL_X23_Y3_N24
\sourceNum[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sourceNum[15]~feeder_combout\ = ( \avsChannel[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[15]~input_o\,
	combout => \sourceNum[15]~feeder_combout\);

-- Location: FF_X23_Y3_N26
\sourceNum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sourceNum[15]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(15));

-- Location: LABCELL_X23_Y3_N48
\outData~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~8_combout\ = ( !sourceNum(13) & ( !sourceNum(15) & ( (\address[0]~input_o\ & (\writeTo~input_o\ & (!sourceNum(12) & !sourceNum(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address[0]~input_o\,
	datab => \ALT_INV_writeTo~input_o\,
	datac => ALT_INV_sourceNum(12),
	datad => ALT_INV_sourceNum(14),
	datae => ALT_INV_sourceNum(13),
	dataf => ALT_INV_sourceNum(15),
	combout => \outData~8_combout\);

-- Location: IOIBUF_X34_Y0_N92
\avsChannel[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(27),
	o => \avsChannel[27]~input_o\);

-- Location: LABCELL_X23_Y3_N12
\checkSum[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[11]~feeder_combout\ = ( \avsChannel[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[27]~input_o\,
	combout => \checkSum[11]~feeder_combout\);

-- Location: FF_X23_Y3_N13
\checkSum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[11]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(11));

-- Location: IOIBUF_X20_Y0_N52
\avsChannel[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(7),
	o => \avsChannel[7]~input_o\);

-- Location: FF_X23_Y3_N2
\lengthPack[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[7]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(7));

-- Location: IOIBUF_X16_Y0_N35
\avsChannel[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(6),
	o => \avsChannel[6]~input_o\);

-- Location: FF_X23_Y3_N14
\lengthPack[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[6]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(6));

-- Location: IOIBUF_X20_Y0_N1
\avsChannel[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(5),
	o => \avsChannel[5]~input_o\);

-- Location: FF_X23_Y3_N17
\lengthPack[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[5]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(5));

-- Location: IOIBUF_X24_Y0_N52
\avsChannel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(2),
	o => \avsChannel[2]~input_o\);

-- Location: LABCELL_X23_Y3_N15
\lengthPack[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lengthPack[2]~feeder_combout\ = \avsChannel[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avsChannel[2]~input_o\,
	combout => \lengthPack[2]~feeder_combout\);

-- Location: FF_X23_Y3_N16
\lengthPack[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \lengthPack[2]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(2));

-- Location: IOIBUF_X28_Y0_N35
\avsChannel[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(4),
	o => \avsChannel[4]~input_o\);

-- Location: LABCELL_X23_Y3_N36
\lengthPack[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lengthPack[4]~feeder_combout\ = \avsChannel[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avsChannel[4]~input_o\,
	combout => \lengthPack[4]~feeder_combout\);

-- Location: FF_X23_Y3_N38
\lengthPack[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \lengthPack[4]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(4));

-- Location: IOIBUF_X16_Y0_N18
\avsChannel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(3),
	o => \avsChannel[3]~input_o\);

-- Location: FF_X23_Y3_N41
\lengthPack[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[3]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(3));

-- Location: LABCELL_X23_Y3_N3
\outData~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~2_combout\ = ( !lengthPack(4) & ( lengthPack(3) & ( (!lengthPack(7) & (!lengthPack(6) & (!lengthPack(5) & !lengthPack(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lengthPack(7),
	datab => ALT_INV_lengthPack(6),
	datac => ALT_INV_lengthPack(5),
	datad => ALT_INV_lengthPack(2),
	datae => ALT_INV_lengthPack(4),
	dataf => ALT_INV_lengthPack(3),
	combout => \outData~2_combout\);

-- Location: LABCELL_X23_Y4_N27
\checkSum[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[2]~feeder_combout\ = ( \avsChannel[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[18]~input_o\,
	combout => \checkSum[2]~feeder_combout\);

-- Location: FF_X23_Y4_N29
\checkSum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[2]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(2));

-- Location: FF_X23_Y4_N14
\checkSum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[17]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(1));

-- Location: LABCELL_X23_Y4_N54
\checkSum[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[0]~feeder_combout\ = ( \avsChannel[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[16]~input_o\,
	combout => \checkSum[0]~feeder_combout\);

-- Location: FF_X23_Y4_N56
\checkSum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[0]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(0));

-- Location: IOIBUF_X20_Y0_N18
\avsChannel[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(21),
	o => \avsChannel[21]~input_o\);

-- Location: LABCELL_X23_Y4_N15
\checkSum[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[5]~feeder_combout\ = ( \avsChannel[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[21]~input_o\,
	combout => \checkSum[5]~feeder_combout\);

-- Location: FF_X23_Y4_N17
\checkSum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[5]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(5));

-- Location: IOIBUF_X24_Y0_N18
\avsChannel[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(20),
	o => \avsChannel[20]~input_o\);

-- Location: LABCELL_X23_Y4_N45
\checkSum[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[4]~feeder_combout\ = ( \avsChannel[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[20]~input_o\,
	combout => \checkSum[4]~feeder_combout\);

-- Location: FF_X23_Y4_N47
\checkSum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[4]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(4));

-- Location: LABCELL_X23_Y4_N42
\checkSum[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[3]~feeder_combout\ = ( \avsChannel[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[19]~input_o\,
	combout => \checkSum[3]~feeder_combout\);

-- Location: FF_X23_Y4_N44
\checkSum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[3]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(3));

-- Location: LABCELL_X23_Y4_N48
\outData~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~4_combout\ = ( !checkSum(4) & ( !checkSum(3) & ( (checkSum(2) & (checkSum(1) & (!checkSum(0) & !checkSum(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_checkSum(2),
	datab => ALT_INV_checkSum(1),
	datac => ALT_INV_checkSum(0),
	datad => ALT_INV_checkSum(5),
	datae => ALT_INV_checkSum(4),
	dataf => ALT_INV_checkSum(3),
	combout => \outData~4_combout\);

-- Location: IOIBUF_X50_Y0_N41
\avsChannel[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(31),
	o => \avsChannel[31]~input_o\);

-- Location: FF_X24_Y3_N56
\checkSum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[31]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(15));

-- Location: IOIBUF_X52_Y0_N35
\avsChannel[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(30),
	o => \avsChannel[30]~input_o\);

-- Location: FF_X24_Y3_N44
\checkSum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[30]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(14));

-- Location: IOIBUF_X18_Y0_N75
\avsChannel[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(28),
	o => \avsChannel[28]~input_o\);

-- Location: FF_X23_Y3_N5
\checkSum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[28]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(12));

-- Location: IOIBUF_X56_Y0_N18
\avsChannel[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(29),
	o => \avsChannel[29]~input_o\);

-- Location: FF_X24_Y3_N58
\checkSum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[29]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(13));

-- Location: IOIBUF_X24_Y0_N35
\avsChannel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(1),
	o => \avsChannel[1]~input_o\);

-- Location: FF_X24_Y3_N47
\lengthPack[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[1]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(1));

-- Location: LABCELL_X23_Y3_N39
\lengthPack[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lengthPack[0]~feeder_combout\ = ( \avsChannel[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[0]~input_o\,
	combout => \lengthPack[0]~feeder_combout\);

-- Location: FF_X23_Y3_N40
\lengthPack[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \lengthPack[0]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(0));

-- Location: LABCELL_X24_Y3_N45
\outData~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~3_combout\ = ( !lengthPack(1) & ( !lengthPack(0) & ( (!checkSum(15) & (!checkSum(14) & (!checkSum(12) & !checkSum(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_checkSum(15),
	datab => ALT_INV_checkSum(14),
	datac => ALT_INV_checkSum(12),
	datad => ALT_INV_checkSum(13),
	datae => ALT_INV_lengthPack(1),
	dataf => ALT_INV_lengthPack(0),
	combout => \outData~3_combout\);

-- Location: MLABCELL_X25_Y3_N18
\lengthPack[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lengthPack[12]~feeder_combout\ = \avsChannel[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avsChannel[12]~input_o\,
	combout => \lengthPack[12]~feeder_combout\);

-- Location: FF_X25_Y3_N20
\lengthPack[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \lengthPack[12]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(12));

-- Location: IOIBUF_X26_Y0_N58
\avsChannel[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(10),
	o => \avsChannel[10]~input_o\);

-- Location: FF_X25_Y3_N22
\lengthPack[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[10]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(10));

-- Location: IOIBUF_X28_Y0_N52
\avsChannel[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(8),
	o => \avsChannel[8]~input_o\);

-- Location: MLABCELL_X25_Y3_N54
\lengthPack[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lengthPack[8]~feeder_combout\ = ( \avsChannel[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[8]~input_o\,
	combout => \lengthPack[8]~feeder_combout\);

-- Location: FF_X25_Y3_N56
\lengthPack[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \lengthPack[8]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(8));

-- Location: IOIBUF_X26_Y0_N92
\avsChannel[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(11),
	o => \avsChannel[11]~input_o\);

-- Location: FF_X25_Y3_N13
\lengthPack[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[11]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(11));

-- Location: MLABCELL_X25_Y3_N21
\lengthPack[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lengthPack[13]~feeder_combout\ = \avsChannel[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avsChannel[13]~input_o\,
	combout => \lengthPack[13]~feeder_combout\);

-- Location: FF_X25_Y3_N23
\lengthPack[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \lengthPack[13]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(13));

-- Location: IOIBUF_X32_Y0_N52
\avsChannel[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(9),
	o => \avsChannel[9]~input_o\);

-- Location: MLABCELL_X25_Y3_N39
\lengthPack[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \lengthPack[9]~feeder_combout\ = ( \avsChannel[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[9]~input_o\,
	combout => \lengthPack[9]~feeder_combout\);

-- Location: FF_X25_Y3_N41
\lengthPack[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \lengthPack[9]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lengthPack(9));

-- Location: MLABCELL_X25_Y3_N42
\outData~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~1_combout\ = ( !lengthPack(13) & ( lengthPack(9) & ( (!lengthPack(12) & (lengthPack(10) & (lengthPack(8) & !lengthPack(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_lengthPack(12),
	datab => ALT_INV_lengthPack(10),
	datac => ALT_INV_lengthPack(8),
	datad => ALT_INV_lengthPack(11),
	datae => ALT_INV_lengthPack(13),
	dataf => ALT_INV_lengthPack(9),
	combout => \outData~1_combout\);

-- Location: IOIBUF_X22_Y0_N18
\avsChannel[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(24),
	o => \avsChannel[24]~input_o\);

-- Location: MLABCELL_X25_Y3_N57
\checkSum[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[8]~feeder_combout\ = ( \avsChannel[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[24]~input_o\,
	combout => \checkSum[8]~feeder_combout\);

-- Location: FF_X25_Y3_N59
\checkSum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[8]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(8));

-- Location: IOIBUF_X32_Y0_N1
\avsChannel[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(26),
	o => \avsChannel[26]~input_o\);

-- Location: FF_X25_Y3_N19
\checkSum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[26]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(10));

-- Location: IOIBUF_X32_Y0_N18
\avsChannel[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(23),
	o => \avsChannel[23]~input_o\);

-- Location: MLABCELL_X25_Y3_N12
\checkSum[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[7]~feeder_combout\ = \avsChannel[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_avsChannel[23]~input_o\,
	combout => \checkSum[7]~feeder_combout\);

-- Location: FF_X25_Y3_N14
\checkSum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[7]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(7));

-- Location: IOIBUF_X26_Y0_N41
\avsChannel[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(25),
	o => \avsChannel[25]~input_o\);

-- Location: MLABCELL_X25_Y3_N36
\checkSum[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \checkSum[9]~feeder_combout\ = ( \avsChannel[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[25]~input_o\,
	combout => \checkSum[9]~feeder_combout\);

-- Location: FF_X25_Y3_N38
\checkSum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \checkSum[9]~feeder_combout\,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(9));

-- Location: IOIBUF_X22_Y0_N52
\avsChannel[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avsChannel(22),
	o => \avsChannel[22]~input_o\);

-- Location: FF_X25_Y3_N17
\checkSum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[22]~input_o\,
	sload => VCC,
	ena => \cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => checkSum(6));

-- Location: MLABCELL_X25_Y3_N0
\outData~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~5_combout\ = ( !checkSum(9) & ( !checkSum(6) & ( (checkSum(8) & (checkSum(10) & !checkSum(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_checkSum(8),
	datac => ALT_INV_checkSum(10),
	datad => ALT_INV_checkSum(7),
	datae => ALT_INV_checkSum(9),
	dataf => ALT_INV_checkSum(6),
	combout => \outData~5_combout\);

-- Location: LABCELL_X24_Y3_N6
\outData~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~6_combout\ = ( \outData~1_combout\ & ( \outData~5_combout\ & ( (!checkSum(11) & (\outData~2_combout\ & (\outData~4_combout\ & \outData~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_checkSum(11),
	datab => \ALT_INV_outData~2_combout\,
	datac => \ALT_INV_outData~4_combout\,
	datad => \ALT_INV_outData~3_combout\,
	datae => \ALT_INV_outData~1_combout\,
	dataf => \ALT_INV_outData~5_combout\,
	combout => \outData~6_combout\);

-- Location: FF_X23_Y3_N50
\destNum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[20]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(4));

-- Location: FF_X22_Y3_N1
\destNum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[24]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(8));

-- Location: FF_X22_Y3_N19
\destNum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[21]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(5));

-- Location: LABCELL_X22_Y3_N45
\destNum[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \destNum[7]~feeder_combout\ = ( \avsChannel[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[23]~input_o\,
	combout => \destNum[7]~feeder_combout\);

-- Location: FF_X22_Y3_N46
\destNum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \destNum[7]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(7));

-- Location: FF_X23_Y3_N35
\destNum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[25]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(9));

-- Location: LABCELL_X22_Y3_N24
\destNum[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \destNum[6]~feeder_combout\ = ( \avsChannel[22]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[22]~input_o\,
	combout => \destNum[6]~feeder_combout\);

-- Location: FF_X22_Y3_N25
\destNum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \destNum[6]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(6));

-- Location: LABCELL_X23_Y3_N33
\outData~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~11_combout\ = ( !destNum(9) & ( !destNum(6) & ( (!destNum(4) & (destNum(8) & (!destNum(5) & !destNum(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_destNum(4),
	datab => ALT_INV_destNum(8),
	datac => ALT_INV_destNum(5),
	datad => ALT_INV_destNum(7),
	datae => ALT_INV_destNum(9),
	dataf => ALT_INV_destNum(6),
	combout => \outData~11_combout\);

-- Location: FF_X23_Y3_N20
\sourceNum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(1));

-- Location: FF_X23_Y3_N47
\sourceNum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(5));

-- Location: LABCELL_X23_Y3_N9
\sourceNum[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sourceNum[3]~feeder_combout\ = ( \avsChannel[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[3]~input_o\,
	combout => \sourceNum[3]~feeder_combout\);

-- Location: FF_X23_Y3_N10
\sourceNum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sourceNum[3]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(3));

-- Location: FF_X23_Y3_N32
\sourceNum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(2));

-- Location: LABCELL_X23_Y3_N27
\sourceNum[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sourceNum[4]~feeder_combout\ = ( \avsChannel[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[4]~input_o\,
	combout => \sourceNum[4]~feeder_combout\);

-- Location: FF_X23_Y3_N29
\sourceNum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sourceNum[4]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(4));

-- Location: LABCELL_X22_Y3_N36
\sourceNum[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sourceNum[0]~feeder_combout\ = ( \avsChannel[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[0]~input_o\,
	combout => \sourceNum[0]~feeder_combout\);

-- Location: FF_X22_Y3_N37
\sourceNum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sourceNum[0]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(0));

-- Location: LABCELL_X23_Y3_N42
\outData~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~10_combout\ = ( !sourceNum(4) & ( !sourceNum(0) & ( (!sourceNum(1) & (!sourceNum(5) & (!sourceNum(3) & sourceNum(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sourceNum(1),
	datab => ALT_INV_sourceNum(5),
	datac => ALT_INV_sourceNum(3),
	datad => ALT_INV_sourceNum(2),
	datae => ALT_INV_sourceNum(4),
	dataf => ALT_INV_sourceNum(0),
	combout => \outData~10_combout\);

-- Location: FF_X23_Y3_N53
\sourceNum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[11]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(11));

-- Location: LABCELL_X23_Y3_N6
\sourceNum[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sourceNum[10]~feeder_combout\ = ( \avsChannel[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[10]~input_o\,
	combout => \sourceNum[10]~feeder_combout\);

-- Location: FF_X23_Y3_N8
\sourceNum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sourceNum[10]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(10));

-- Location: FF_X23_Y3_N58
\sourceNum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(7));

-- Location: FF_X23_Y3_N44
\sourceNum[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(8));

-- Location: LABCELL_X22_Y3_N57
\sourceNum[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \sourceNum[6]~feeder_combout\ = ( \avsChannel[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[6]~input_o\,
	combout => \sourceNum[6]~feeder_combout\);

-- Location: FF_X22_Y3_N58
\sourceNum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \sourceNum[6]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(6));

-- Location: FF_X24_Y3_N14
\sourceNum[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[9]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sourceNum(9));

-- Location: LABCELL_X23_Y3_N54
\outData~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~9_combout\ = ( !sourceNum(6) & ( sourceNum(9) & ( (!sourceNum(11) & (!sourceNum(10) & (!sourceNum(7) & sourceNum(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sourceNum(11),
	datab => ALT_INV_sourceNum(10),
	datac => ALT_INV_sourceNum(7),
	datad => ALT_INV_sourceNum(8),
	datae => ALT_INV_sourceNum(6),
	dataf => ALT_INV_sourceNum(9),
	combout => \outData~9_combout\);

-- Location: FF_X24_Y3_N23
\destNum[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[29]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(13));

-- Location: FF_X24_Y3_N28
\destNum[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[28]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(12));

-- Location: LABCELL_X24_Y3_N27
\destNum[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \destNum[11]~feeder_combout\ = ( \avsChannel[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[27]~input_o\,
	combout => \destNum[11]~feeder_combout\);

-- Location: FF_X24_Y3_N29
\destNum[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \destNum[11]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(11));

-- Location: FF_X24_Y3_N17
\destNum[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[30]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(14));

-- Location: FF_X24_Y3_N20
\destNum[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[31]~input_o\,
	sload => VCC,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(15));

-- Location: LABCELL_X24_Y3_N24
\destNum[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \destNum[10]~feeder_combout\ = ( \avsChannel[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[26]~input_o\,
	combout => \destNum[10]~feeder_combout\);

-- Location: FF_X24_Y3_N26
\destNum[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \destNum[10]~feeder_combout\,
	ena => \ALT_INV_cycle~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => destNum(10));

-- Location: LABCELL_X24_Y3_N18
\outData~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~12_combout\ = ( !destNum(15) & ( !destNum(10) & ( (!destNum(13) & (!destNum(12) & (!destNum(11) & !destNum(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_destNum(13),
	datab => ALT_INV_destNum(12),
	datac => ALT_INV_destNum(11),
	datad => ALT_INV_destNum(14),
	datae => ALT_INV_destNum(15),
	dataf => ALT_INV_destNum(10),
	combout => \outData~12_combout\);

-- Location: LABCELL_X23_Y3_N18
\outData~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~13_combout\ = ( \outData~9_combout\ & ( \outData~12_combout\ & ( (\outData~11_combout\ & \outData~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_outData~11_combout\,
	datad => \ALT_INV_outData~10_combout\,
	datae => \ALT_INV_outData~9_combout\,
	dataf => \ALT_INV_outData~12_combout\,
	combout => \outData~13_combout\);

-- Location: LABCELL_X24_Y3_N54
\outData[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[0]~14_combout\ = ( \outData~6_combout\ & ( \outData~13_combout\ & ( ((!\outData~0_combout\) # ((!\outData~7_combout\) # (!\outData~8_combout\))) # (\reset~input_o\) ) ) ) # ( !\outData~6_combout\ & ( \outData~13_combout\ ) ) # ( 
-- \outData~6_combout\ & ( !\outData~13_combout\ ) ) # ( !\outData~6_combout\ & ( !\outData~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \ALT_INV_outData~0_combout\,
	datac => \ALT_INV_outData~7_combout\,
	datad => \ALT_INV_outData~8_combout\,
	datae => \ALT_INV_outData~6_combout\,
	dataf => \ALT_INV_outData~13_combout\,
	combout => \outData[0]~14_combout\);

-- Location: IOIBUF_X14_Y0_N35
\chipSelect~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipSelect,
	o => \chipSelect~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\ReadTo~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadTo,
	o => \ReadTo~input_o\);

-- Location: LABCELL_X35_Y1_N57
\outData~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~16_combout\ = ( !\address[3]~input_o\ & ( !\address[0]~input_o\ & ( (\ReadTo~input_o\ & (!\address[1]~input_o\ & !\address[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ReadTo~input_o\,
	datab => \ALT_INV_address[1]~input_o\,
	datac => \ALT_INV_address[2]~input_o\,
	datae => \ALT_INV_address[3]~input_o\,
	dataf => \ALT_INV_address[0]~input_o\,
	combout => \outData~16_combout\);

-- Location: LABCELL_X24_Y3_N12
\outData~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData~15_combout\ = ( \outData~11_combout\ & ( \outData~12_combout\ & ( (\outData~7_combout\ & (\outData~10_combout\ & (\outData~9_combout\ & \outData~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_outData~7_combout\,
	datab => \ALT_INV_outData~10_combout\,
	datac => \ALT_INV_outData~9_combout\,
	datad => \ALT_INV_outData~8_combout\,
	datae => \ALT_INV_outData~11_combout\,
	dataf => \ALT_INV_outData~12_combout\,
	combout => \outData~15_combout\);

-- Location: LABCELL_X24_Y3_N3
\outData[0]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[0]~17_combout\ = ( \outData~0_combout\ & ( \outData~6_combout\ & ( ((\chipSelect~input_o\ & (!\outData~16_combout\ $ (!\outData~15_combout\)))) # (\reset~input_o\) ) ) ) # ( !\outData~0_combout\ & ( \outData~6_combout\ & ( ((\chipSelect~input_o\ 
-- & \outData~16_combout\)) # (\reset~input_o\) ) ) ) # ( \outData~0_combout\ & ( !\outData~6_combout\ & ( ((\chipSelect~input_o\ & \outData~16_combout\)) # (\reset~input_o\) ) ) ) # ( !\outData~0_combout\ & ( !\outData~6_combout\ & ( ((\chipSelect~input_o\ 
-- & \outData~16_combout\)) # (\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111100010001111111110001010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_chipSelect~input_o\,
	datab => \ALT_INV_outData~16_combout\,
	datac => \ALT_INV_outData~15_combout\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ALT_INV_outData~0_combout\,
	dataf => \ALT_INV_outData~6_combout\,
	combout => \outData[0]~17_combout\);

-- Location: FF_X24_Y3_N8
\outData[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[0]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[0]~reg0_q\);

-- Location: FF_X24_Y3_N1
\outData[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[1]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[1]~reg0_q\);

-- Location: LABCELL_X24_Y3_N36
\outData[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[2]~reg0feeder_combout\ = ( \avsChannel[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[2]~input_o\,
	combout => \outData[2]~reg0feeder_combout\);

-- Location: FF_X24_Y3_N37
\outData[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[2]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[2]~reg0_q\);

-- Location: FF_X24_Y3_N31
\outData[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[3]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[3]~reg0_q\);

-- Location: FF_X25_Y3_N43
\outData[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[4]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[4]~reg0_q\);

-- Location: LABCELL_X24_Y3_N30
\outData[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[5]~reg0feeder_combout\ = ( \avsChannel[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[5]~input_o\,
	combout => \outData[5]~reg0feeder_combout\);

-- Location: FF_X24_Y3_N32
\outData[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[5]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[5]~reg0_q\);

-- Location: LABCELL_X24_Y3_N33
\outData[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[6]~reg0feeder_combout\ = \avsChannel[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_avsChannel[6]~input_o\,
	combout => \outData[6]~reg0feeder_combout\);

-- Location: FF_X24_Y3_N35
\outData[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[6]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[6]~reg0_q\);

-- Location: LABCELL_X24_Y3_N51
\outData[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[7]~reg0feeder_combout\ = \avsChannel[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_avsChannel[7]~input_o\,
	combout => \outData[7]~reg0feeder_combout\);

-- Location: FF_X24_Y3_N53
\outData[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[7]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[7]~reg0_q\);

-- Location: MLABCELL_X25_Y3_N24
\outData[8]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[8]~reg0feeder_combout\ = ( \avsChannel[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[8]~input_o\,
	combout => \outData[8]~reg0feeder_combout\);

-- Location: FF_X25_Y3_N25
\outData[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[8]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[8]~reg0_q\);

-- Location: LABCELL_X24_Y3_N48
\outData[9]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[9]~reg0feeder_combout\ = ( \avsChannel[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[9]~input_o\,
	combout => \outData[9]~reg0feeder_combout\);

-- Location: FF_X24_Y3_N50
\outData[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[9]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[9]~reg0_q\);

-- Location: FF_X25_Y3_N52
\outData[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[10]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[10]~reg0_q\);

-- Location: FF_X25_Y3_N1
\outData[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[11]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[11]~reg0_q\);

-- Location: FF_X22_Y3_N13
\outData[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[12]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[12]~reg0_q\);

-- Location: FF_X25_Y3_N4
\outData[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[13]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[13]~reg0_q\);

-- Location: FF_X25_Y3_N10
\outData[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[14]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[14]~reg0_q\);

-- Location: LABCELL_X22_Y3_N30
\outData[15]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[15]~reg0feeder_combout\ = ( \avsChannel[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[15]~input_o\,
	combout => \outData[15]~reg0feeder_combout\);

-- Location: FF_X22_Y3_N32
\outData[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[15]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[15]~reg0_q\);

-- Location: FF_X24_Y3_N52
\outData[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[16]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[16]~reg0_q\);

-- Location: FF_X23_Y4_N50
\outData[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[17]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[17]~reg0_q\);

-- Location: LABCELL_X23_Y4_N33
\outData[18]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[18]~reg0feeder_combout\ = ( \avsChannel[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[18]~input_o\,
	combout => \outData[18]~reg0feeder_combout\);

-- Location: FF_X23_Y4_N34
\outData[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[18]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[18]~reg0_q\);

-- Location: FF_X23_Y4_N37
\outData[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[19]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[19]~reg0_q\);

-- Location: MLABCELL_X25_Y3_N6
\outData[20]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[20]~reg0feeder_combout\ = ( \avsChannel[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[20]~input_o\,
	combout => \outData[20]~reg0feeder_combout\);

-- Location: FF_X25_Y3_N7
\outData[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[20]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[20]~reg0_q\);

-- Location: FF_X24_Y3_N4
\outData[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[21]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[21]~reg0_q\);

-- Location: FF_X25_Y3_N28
\outData[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[22]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[22]~reg0_q\);

-- Location: FF_X25_Y3_N46
\outData[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[23]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[23]~reg0_q\);

-- Location: MLABCELL_X25_Y3_N33
\outData[24]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[24]~reg0feeder_combout\ = ( \avsChannel[24]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[24]~input_o\,
	combout => \outData[24]~reg0feeder_combout\);

-- Location: FF_X25_Y3_N34
\outData[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[24]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[24]~reg0_q\);

-- Location: MLABCELL_X25_Y3_N30
\outData[25]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[25]~reg0feeder_combout\ = ( \avsChannel[25]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[25]~input_o\,
	combout => \outData[25]~reg0feeder_combout\);

-- Location: FF_X25_Y3_N31
\outData[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[25]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[25]~reg0_q\);

-- Location: MLABCELL_X25_Y3_N48
\outData[26]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[26]~reg0feeder_combout\ = ( \avsChannel[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[26]~input_o\,
	combout => \outData[26]~reg0feeder_combout\);

-- Location: FF_X25_Y3_N49
\outData[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[26]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[26]~reg0_q\);

-- Location: LABCELL_X24_Y3_N39
\outData[27]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \outData[27]~reg0feeder_combout\ = ( \avsChannel[27]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_avsChannel[27]~input_o\,
	combout => \outData[27]~reg0feeder_combout\);

-- Location: FF_X24_Y3_N40
\outData[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \outData[27]~reg0feeder_combout\,
	sclr => \outData[0]~14_combout\,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[27]~reg0_q\);

-- Location: FF_X24_Y3_N38
\outData[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[28]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[28]~reg0_q\);

-- Location: FF_X24_Y3_N34
\outData[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[29]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[29]~reg0_q\);

-- Location: FF_X24_Y3_N10
\outData[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[30]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[30]~reg0_q\);

-- Location: FF_X24_Y3_N49
\outData[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \avsChannel[31]~input_o\,
	sclr => \outData[0]~14_combout\,
	sload => VCC,
	ena => \outData[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \outData[31]~reg0_q\);

-- Location: IOIBUF_X2_Y81_N58
\inData[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(0),
	o => \inData[0]~input_o\);

-- Location: IOIBUF_X28_Y81_N35
\inData[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(1),
	o => \inData[1]~input_o\);

-- Location: IOIBUF_X38_Y81_N52
\inData[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(2),
	o => \inData[2]~input_o\);

-- Location: IOIBUF_X78_Y0_N18
\inData[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(3),
	o => \inData[3]~input_o\);

-- Location: IOIBUF_X24_Y81_N35
\inData[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(4),
	o => \inData[4]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\inData[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(5),
	o => \inData[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\inData[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(6),
	o => \inData[6]~input_o\);

-- Location: IOIBUF_X89_Y11_N61
\inData[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(7),
	o => \inData[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N52
\inData[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(8),
	o => \inData[8]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\inData[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(9),
	o => \inData[9]~input_o\);

-- Location: IOIBUF_X20_Y81_N35
\inData[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(10),
	o => \inData[10]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\inData[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(11),
	o => \inData[11]~input_o\);

-- Location: IOIBUF_X89_Y11_N95
\inData[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(12),
	o => \inData[12]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\inData[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(13),
	o => \inData[13]~input_o\);

-- Location: IOIBUF_X89_Y16_N38
\inData[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(14),
	o => \inData[14]~input_o\);

-- Location: IOIBUF_X36_Y81_N35
\inData[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(15),
	o => \inData[15]~input_o\);

-- Location: IOIBUF_X36_Y81_N52
\inData[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(16),
	o => \inData[16]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\inData[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(17),
	o => \inData[17]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\inData[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(18),
	o => \inData[18]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\inData[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(19),
	o => \inData[19]~input_o\);

-- Location: IOIBUF_X28_Y81_N52
\inData[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(20),
	o => \inData[20]~input_o\);

-- Location: IOIBUF_X62_Y0_N52
\inData[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(21),
	o => \inData[21]~input_o\);

-- Location: IOIBUF_X16_Y81_N52
\inData[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(22),
	o => \inData[22]~input_o\);

-- Location: IOIBUF_X70_Y0_N52
\inData[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(23),
	o => \inData[23]~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\inData[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(24),
	o => \inData[24]~input_o\);

-- Location: IOIBUF_X12_Y81_N18
\inData[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(25),
	o => \inData[25]~input_o\);

-- Location: IOIBUF_X89_Y8_N21
\inData[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(26),
	o => \inData[26]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\inData[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(27),
	o => \inData[27]~input_o\);

-- Location: IOIBUF_X82_Y0_N41
\inData[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(28),
	o => \inData[28]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\inData[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(29),
	o => \inData[29]~input_o\);

-- Location: IOIBUF_X18_Y81_N58
\inData[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(30),
	o => \inData[30]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\inData[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inData(31),
	o => \inData[31]~input_o\);

-- Location: IOIBUF_X89_Y23_N21
\endofpacket~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_endofpacket,
	o => \endofpacket~input_o\);

-- Location: LABCELL_X2_Y8_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


