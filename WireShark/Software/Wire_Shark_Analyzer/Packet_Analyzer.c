#include <sys/alt_stdio.h>
#include <stdio.h>
#include "system.h"
#include <altera_eth_tse.h>
#include <altera_eth>

typedef struct alt_tse_phy_profile_struct{ /* PHY profile */
	/*The name of the PHY*/
	char name[80];
	/*Organizationally Unique Identififier*/
	alt_u32 oui;
	/*PHY model number*/
	alt_u8 model_number;
	/*PHY revision number*/
	alt_u8 revision_number;
	/*The location of the PHY Specific Status Register*/
	alt_u8 status_reg_location;
	/*The location of the Speed Status bit in the PHY Specific Status
	Register*/
	alt_u8 speed_lsb_location;
	/*The location of the Duplex Status bit in the PHY Status Specific
	Register*/
	alt_u8 duplex_bit_location;
	/*The location of the Link Status bit in PHY Status Specific
	Register*/
	alt_u8 link_bit_location;
	/*PHY initialization function pointer�profile specific*/
	alt_32 (*phy_cfg)(np_tse_mac *pmac);
	/*Pointer to the function that reads and returns 32-bit link status.Possible
	status:
	full duplex (bit 0 = 1), half duplex (bit 0 = 0),gigabit (bit 1 = 1),
	100Mbps (bit 2 = 1), 10Mbps (bit 3 = 1),invalid speed (bit 16 = 1).*/
	alt_u32 (*link_status_read)(np_tse_mac *pmac);
} alt_tse_phy_profile;

typedef struct alt_tse_system_phy_struct { /* PHY instance */
	/* PHY's MDIO address */
	alt_32tse_phy_mdio_address;
	/* PHY initialization function pointer�instance specific */
	alt_32 (*tse_phy_cfg)(np_tse_mac *pmac);
} alt_tse_system_phy;
