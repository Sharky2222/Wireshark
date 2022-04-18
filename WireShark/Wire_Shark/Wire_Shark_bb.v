
module Wire_Shark (
	clk_clk,
	eth_tse_0_mac_mdio_connection_mdc,
	eth_tse_0_mac_mdio_connection_mdio_in,
	eth_tse_0_mac_mdio_connection_mdio_out,
	eth_tse_0_mac_mdio_connection_mdio_oen,
	eth_tse_0_mac_rgmii_connection_rgmii_in,
	eth_tse_0_mac_rgmii_connection_rgmii_out,
	eth_tse_0_mac_rgmii_connection_rx_control,
	eth_tse_0_mac_rgmii_connection_tx_control,
	eth_tse_0_mac_status_connection_set_10,
	eth_tse_0_mac_status_connection_set_1000,
	eth_tse_0_mac_status_connection_eth_mode,
	eth_tse_0_mac_status_connection_ena_10);	

	input		clk_clk;
	output		eth_tse_0_mac_mdio_connection_mdc;
	input		eth_tse_0_mac_mdio_connection_mdio_in;
	output		eth_tse_0_mac_mdio_connection_mdio_out;
	output		eth_tse_0_mac_mdio_connection_mdio_oen;
	input	[3:0]	eth_tse_0_mac_rgmii_connection_rgmii_in;
	output	[3:0]	eth_tse_0_mac_rgmii_connection_rgmii_out;
	input		eth_tse_0_mac_rgmii_connection_rx_control;
	output		eth_tse_0_mac_rgmii_connection_tx_control;
	input		eth_tse_0_mac_status_connection_set_10;
	input		eth_tse_0_mac_status_connection_set_1000;
	output		eth_tse_0_mac_status_connection_eth_mode;
	output		eth_tse_0_mac_status_connection_ena_10;
endmodule
