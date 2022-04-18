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
			eth_tse_0_mac_status_connection_ena_10    : out std_logic                                        -- ena_10
		);
	end component Wire_Shark;

	u0 : component Wire_Shark
		port map (
			clk_clk                                   => CONNECTED_TO_clk_clk,                                   --                             clk.clk
			eth_tse_0_mac_mdio_connection_mdc         => CONNECTED_TO_eth_tse_0_mac_mdio_connection_mdc,         --   eth_tse_0_mac_mdio_connection.mdc
			eth_tse_0_mac_mdio_connection_mdio_in     => CONNECTED_TO_eth_tse_0_mac_mdio_connection_mdio_in,     --                                .mdio_in
			eth_tse_0_mac_mdio_connection_mdio_out    => CONNECTED_TO_eth_tse_0_mac_mdio_connection_mdio_out,    --                                .mdio_out
			eth_tse_0_mac_mdio_connection_mdio_oen    => CONNECTED_TO_eth_tse_0_mac_mdio_connection_mdio_oen,    --                                .mdio_oen
			eth_tse_0_mac_rgmii_connection_rgmii_in   => CONNECTED_TO_eth_tse_0_mac_rgmii_connection_rgmii_in,   --  eth_tse_0_mac_rgmii_connection.rgmii_in
			eth_tse_0_mac_rgmii_connection_rgmii_out  => CONNECTED_TO_eth_tse_0_mac_rgmii_connection_rgmii_out,  --                                .rgmii_out
			eth_tse_0_mac_rgmii_connection_rx_control => CONNECTED_TO_eth_tse_0_mac_rgmii_connection_rx_control, --                                .rx_control
			eth_tse_0_mac_rgmii_connection_tx_control => CONNECTED_TO_eth_tse_0_mac_rgmii_connection_tx_control, --                                .tx_control
			eth_tse_0_mac_status_connection_set_10    => CONNECTED_TO_eth_tse_0_mac_status_connection_set_10,    -- eth_tse_0_mac_status_connection.set_10
			eth_tse_0_mac_status_connection_set_1000  => CONNECTED_TO_eth_tse_0_mac_status_connection_set_1000,  --                                .set_1000
			eth_tse_0_mac_status_connection_eth_mode  => CONNECTED_TO_eth_tse_0_mac_status_connection_eth_mode,  --                                .eth_mode
			eth_tse_0_mac_status_connection_ena_10    => CONNECTED_TO_eth_tse_0_mac_status_connection_ena_10     --                                .ena_10
		);

