# PS EMIO Ethernet 1G
## DESCRIPTION:
This project utilizes PS-GEM over EMIO to a 1G/2.5G Ethernet PCS/PMA or SGMII core. The core is configured for SGMII operation. This has been routed to the SFP cage on SFP0 for use on a ZCU102 board. System is configured to use the ZCU102 si570 at 156.25MHz.

## USAGE:
Place all files into a new project directory.
#### VIVADO:
From the command line run the following:

`vivado -source *top.tcl`
    
#### PETALINUX:
From the command line run the following:

`petalinux-create -t project -s *.bsp`