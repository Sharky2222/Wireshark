
---------------------------------------------------------
--  This code is generated by Terasic System Builder
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity WireShark is
port
(

	------------ CLOCK ------------
	CLOCK2_50       	:in    	std_logic;
	CLOCK3_50       	:in    	std_logic;
	CLOCK4_50       	:in    	std_logic;
	CLOCK_50        	:in    	std_logic;

	------------ KEY ------------
	KEY             	:in    	std_logic_vector(3 downto 0);

	------------ SW ------------
	SW              	:in    	std_logic_vector(9 downto 0);

	------------ LED ------------
	LEDR            	:out   	std_logic_vector(9 downto 0);

	------------ SDRAM ------------
	DRAM_ADDR       	:out   	std_logic_vector(12 downto 0);
	DRAM_BA         	:out   	std_logic_vector(1 downto 0);
	DRAM_CAS_N      	:out   	std_logic;
	DRAM_CKE        	:out   	std_logic;
	DRAM_CLK        	:out   	std_logic;
	DRAM_CS_N       	:out   	std_logic;
	DRAM_DQ         	:inout 	std_logic_vector(15 downto 0);
	DRAM_LDQM       	:out   	std_logic;
	DRAM_RAS_N      	:out   	std_logic;
	DRAM_UDQM       	:out   	std_logic;
	DRAM_WE_N       	:out   	std_logic;

	------------ HPS ------------
--	HPS_CONV_USB_N  	:inout 	std_logic;
--	HPS_DDR3_ADDR   	:out   	std_logic_vector(14 downto 0);
--	HPS_DDR3_BA     	:out   	std_logic_vector(2 downto 0);
--	HPS_DDR3_CAS_N  	:out   	std_logic;
--	HPS_DDR3_CKE    	:out   	std_logic;
--	HPS_DDR3_CK_N   	:out   	std_logic;
--	HPS_DDR3_CK_P   	:out   	std_logic;
--	HPS_DDR3_CS_N   	:out   	std_logic;
--	HPS_DDR3_DM     	:out   	std_logic_vector(3 downto 0);
--	HPS_DDR3_DQ     	:inout 	std_logic_vector(31 downto 0);
--	HPS_DDR3_DQS_N  	:inout 	std_logic_vector(3 downto 0);
--	HPS_DDR3_DQS_P  	:inout 	std_logic_vector(3 downto 0);
--	HPS_DDR3_ODT    	:out   	std_logic;
--	HPS_DDR3_RAS_N  	:out   	std_logic;
--	HPS_DDR3_RESET_N	:out   	std_logic;
--	HPS_DDR3_RZQ    	:in    	std_logic;
--	HPS_DDR3_WE_N   	:out   	std_logic;
	
	--Ethernet Ports
	HPS_ENET_GTX_CLK	:out   	std_logic;
	HPS_ENET_INT_N  	:inout 	std_logic;
	HPS_ENET_MDC    	:out   	std_logic;
	HPS_ENET_MDIO   	:inout 	std_logic;
	HPS_ENET_RX_CLK 	:in    	std_logic;
	HPS_ENET_RX_DATA	:in    	std_logic_vector(3 downto 0);
	HPS_ENET_RX_DV  	:in    	std_logic;
	HPS_ENET_TX_DATA	:out   	std_logic_vector(3 downto 0);
	HPS_ENET_TX_EN  	:out   	std_logic;
	
	
	HPS_FLASH_DATA  	:inout 	std_logic_vector(3 downto 0);
	HPS_FLASH_DCLK  	:out   	std_logic;
	HPS_FLASH_NCSO  	:out   	std_logic;
	HPS_GSENSOR_INT 	:inout 	std_logic;
	HPS_I2C1_SCLK   	:inout 	std_logic;
	HPS_I2C1_SDAT   	:inout 	std_logic;
	HPS_I2C2_SCLK   	:inout 	std_logic;
	HPS_I2C2_SDAT   	:inout 	std_logic;
	HPS_I2C_CONTROL 	:inout 	std_logic;
	HPS_KEY         	:inout 	std_logic;
	HPS_LCM_BK      	:inout 	std_logic;
	HPS_LCM_D_C     	:inout 	std_logic;
	HPS_LCM_RST_N   	:inout 	std_logic;
	HPS_LCM_SPIM_CLK	:out   	std_logic;
	HPS_LCM_SPIM_MISO	:in    	std_logic;
	HPS_LCM_SPIM_MOSI	:out   	std_logic;
	HPS_LCM_SPIM_SS 	:out   	std_logic;
	HPS_LED         	:inout 	std_logic;
	HPS_LTC_GPIO    	:inout 	std_logic;
	HPS_SD_CLK      	:out   	std_logic;
	HPS_SD_CMD      	:inout 	std_logic;
	HPS_SD_DATA     	:inout 	std_logic_vector(3 downto 0);
	HPS_SPIM_CLK    	:out   	std_logic;
	HPS_SPIM_MISO   	:in    	std_logic;
	HPS_SPIM_MOSI   	:out   	std_logic;
	HPS_SPIM_SS     	:out   	std_logic;
	HPS_UART_RX     	:in    	std_logic;
	HPS_UART_TX     	:out   	std_logic;
	HPS_USB_CLKOUT  	:in    	std_logic;
	HPS_USB_DATA    	:inout 	std_logic_vector(7 downto 0);
	HPS_USB_DIR     	:in    	std_logic;
	HPS_USB_NXT     	:in    	std_logic;
	HPS_USB_STP     	:out   	std_logic;

	------------ IR ------------
	IRDA_RXD        	:in    	std_logic;
	IRDA_TXD        	:out   	std_logic
);

end entity;



---------------------------------------------------------
--  Structural coding
---------------------------------------------------------


architecture rtl of WireShark is

-- declare --
signal CONNECTED_TO_eth_tse_0_mac_status_connection_eth_mode : std_logic; --not used
signal CONNECTED_TO_eth_tse_0_mac_status_connection_ena_10 : std_logic;	--not used
signal mdio_in : std_logic;
signal mdio_oen : std_logic;
signal mdio_out : std_logic;

      component Wire_Shark is
        port (
            clk_clk                                   : in  std_logic                    := 'X';             -- clk
            eth_tse_0_mac_mdio_connection_mdc         : out std_logic;                                       -- mdc
            eth_tse_0_mac_mdio_connection_mdio_in     : in  std_logic                    := 'X';             -- mdio_in
            eth_tse_0_mac_mdio_connection_mdio_out    : out std_logic;                                       -- mdio_out
            eth_tse_0_mac_mdio_connection_mdio_oen    : out std_logic;                                       -- mdio_oen
            eth_tse_0_mac_rgmii_connection_rgmii_in   : in  std_logic_vector(3 downto 0) := (others => 'X'); -- rgmii_in
            eth_tse_0_mac_rgmii_connection_rgmii_out  : out std_logic_vector(3 downto 0);                    -- rgmii_out
            eth_tse_0_mac_rgmii_connection_rx_control : in  std_logic                    := 'X';             -- rx_control
            eth_tse_0_mac_rgmii_connection_tx_control : out std_logic;                                       -- tx_control
            eth_tse_0_mac_status_connection_set_10    : in  std_logic                    := 'X';             -- set_10
            eth_tse_0_mac_status_connection_set_1000  : in  std_logic                    := 'X';             -- set_1000
            eth_tse_0_mac_status_connection_eth_mode  : out std_logic;                                       -- eth_mode
            eth_tse_0_mac_status_connection_ena_10    : out std_logic                                       -- ena_10
        );
    end component Wire_Shark;

begin
-- body --
   --Tri state buffer
	mdio_in <= HPS_ENET_MDIO;
	mdio_out <= mdio_out when (mdio_oen = '0') else 'Z';
	
   u0 : component Wire_Shark
        port map (
            clk_clk                                   => CLOCK2_50,                                   --                                   clk.clk
            eth_tse_0_mac_mdio_connection_mdc         => HPS_ENET_MDC,         --         eth_tse_0_mac_mdio_connection.mdc
            eth_tse_0_mac_mdio_connection_mdio_in     => mdio_in,     --                                      .mdio_in
            eth_tse_0_mac_mdio_connection_mdio_out    => mdio_out,    --                                      .mdio_out
            eth_tse_0_mac_mdio_connection_mdio_oen    => mdio_oen,    --                                      .mdio_oen
            eth_tse_0_mac_rgmii_connection_rgmii_in   => HPS_ENET_RX_DATA,   --        eth_tse_0_mac_rgmii_connection.rgmii_in
            eth_tse_0_mac_rgmii_connection_rgmii_out  => HPS_ENET_TX_DATA,  --                                      .rgmii_out
            eth_tse_0_mac_rgmii_connection_rx_control => HPS_ENET_RX_DV, --                                      .rx_control
            eth_tse_0_mac_rgmii_connection_tx_control => HPS_ENET_TX_EN, --                                      .tx_control
            eth_tse_0_mac_status_connection_set_10    => '0',    --       eth_tse_0_mac_status_connection.set_10
            eth_tse_0_mac_status_connection_set_1000  => '1',  --                                      .set_1000
            eth_tse_0_mac_status_connection_eth_mode  => CONNECTED_TO_eth_tse_0_mac_status_connection_eth_mode,  --                                      .eth_mode
            eth_tse_0_mac_status_connection_ena_10    => CONNECTED_TO_eth_tse_0_mac_status_connection_ena_10    --                                      .ena_10
        );


end rtl;

