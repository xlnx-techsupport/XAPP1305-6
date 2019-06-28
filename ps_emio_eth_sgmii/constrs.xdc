
####################################################################################
# Generated by Vivado 2018.2 built on 'Thu Jun 14 20:02:38 MDT 2018' by 'xbuild'
# Command Used: write_xdc ../TCL/constrs.xdc
####################################################################################


####################################################################################
# Constraints from file : 'ps_emio_eth_1g_gig_ethernet_pcs_pma_0_0_gt.xdc'
####################################################################################

#------------------------------------------------------------------------------
#  (c) Copyright 2013-2015 Xilinx, Inc. All rights reserved.
#
#  This file contains confidential and proprietary information
#  of Xilinx, Inc. and is protected under U.S. and
#  international copyright and other intellectual property
#  laws.
#
#  DISCLAIMER
#  This disclaimer is not a license and does not grant any
#  rights to the materials distributed herewith. Except as
#  otherwise provided in a valid license issued to you by
#  Xilinx, and to the maximum extent permitted by applicable
#  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#  (2) Xilinx shall not be liable (whether in contract or tort,
#  including negligence, or under any other theory of
#  liability) for any loss or damage of any kind or nature
#  related to, arising under or in connection with these
#  materials, including for any direct, or any indirect,
#  special, incidental, or consequential loss or damage
#  (including loss of data, profits, goodwill, or any type of
#  loss or damage suffered as a result of any action brought
#  by a third party) even if such damage or loss was
#  reasonably foreseeable or Xilinx had been advised of the
#  possibility of the same.
#
#  CRITICAL APPLICATIONS
#  Xilinx products are not designed or intended to be fail-
#  safe, or for use in any application requiring fail-safe
#  performance, such as life-support or safety devices or
#  systems, Class III medical devices, nuclear facilities,
#  applications related to the deployment of airbags, or any
#  other applications that could lead to death, personal
#  injury, or severe property or environmental damage
#  (individually and collectively, "Critical
#  Applications"). Customer assumes the sole risk and
#  liability of any use of Xilinx products in Critical
#  Applications, subject only to applicable laws and
#  regulations governing limitations on product liability.
#
#  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#  PART OF THIS FILE AT ALL TIMES.
#------------------------------------------------------------------------------


# UltraScale FPGAs Transceivers Wizard IP core-level XDC file
# ----------------------------------------------------------------------------------------------------------------------

# Commands for enabled transceiver GTHE4_CHANNEL_X0Y4
# ----------------------------------------------------------------------------------------------------------------------

# Set case analysis constraint, used in this configuration to limit timing analysis to the known runtime TXOUTCLK source
# selection since the CPLL calibration block controls the TXOUTCLKSEL port dynamically
current_instance ps_emio_eth_1g_i/gig_ethernet_pcs_pma_0/inst/pcs_pma_block_i/transceiver_inst/ps_emio_eth_1g_gig_ethernet_pcs_pma_0_0_gt_i/inst
set_case_analysis 1 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST/TXOUTCLKSEL[2]}]
set_case_analysis 0 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST/TXOUTCLKSEL[1]}]
set_case_analysis 1 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST/TXOUTCLKSEL[0]}]
# Set case analysis constraint, used in this configuration to limit timing analysis to the known runtime RXOUTCLK source
# selection since the CPLL calibration block controls the RXOUTCLKSEL port dynamically
set_case_analysis 0 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST/RXOUTCLKSEL[2]}]
set_case_analysis 1 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST/RXOUTCLKSEL[1]}]
set_case_analysis 0 [get_pins -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST/RXOUTCLKSEL[0]}]

# Channel primitive location constraint
set_property LOC GTHE4_CHANNEL_X1Y12 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin T34 [get_ports gthrxn_in[0]]
#set_property package_pin T33 [get_ports gthrxp_in[0]]
#set_property package_pin T30 [get_ports gthtxn_out[0]]
#set_property package_pin T29 [get_ports gthtxp_out[0]]

# CPLL calibration block constraints
create_clock -period 8.000 [get_pins -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*bufg_gt_txoutclkmon_inst/O}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet


set_false_path -through [get_pins -filter REF_PIN_NAME=~*Q -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_pwrgood_delay_inst[0].delay_powergood_inst/gen_powergood_delay.pwr_on_fsm*}]] -quiet
set_case_analysis 1 [get_pins -filter REF_PIN_NAME=~*Q -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_pwrgood_delay_inst[0].delay_powergood_inst/gen_powergood_delay.pwr_on_fsm*}]] -quiet

set_property CLK_COR_MAX_LAT 36 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]
set_property CLK_COR_MIN_LAT 32 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[1].*gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST}]

# False path constraints
# ----------------------------------------------------------------------------------------------------------------------

set_false_path -to [get_cells -hierarchical -filter {NAME =~ *bit_synchronizer*inst/i_in_meta_reg}]

##set_false_path -to [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_*_reg}]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*D -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync1*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync2*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync3*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*PRE -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_out*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*CLR -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*CLR -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync1*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*CLR -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync2*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*CLR -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync3*}]]
set_false_path -to [get_pins -filter REF_PIN_NAME=~*CLR -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_out*}]]



####################################################################################
# Constraints from file : 'ps_emio_eth_1g_gig_ethernet_pcs_pma_0_0_board.xdc'
####################################################################################

#--------------------Physical Constraints-----------------


####################################################################################
# Constraints from file : 'ps_emio_eth_1g_gig_ethernet_pcs_pma_0_0_clocks.xdc'
####################################################################################



#-----------------------------------------------------------
# PCS/PMA Clock period Constraints: please do not relax    -
#-----------------------------------------------------------



####################################################################################
# Constraints from file : 'ps_emio_eth_1g_zynq_ultra_ps_e_0_0.xdc'
####################################################################################

##############################PS XDC#########################################
############################################################################
##
##  Xilinx, Inc. 2006            www.xilinx.com
############################################################################
##  File name :       psu_constraints.xdc
##
##  Details :     Constraints file
##                    FPGA family:       zynq
##                    FPGA:              PROD-2
##                    Device Size:       xczu9eg
##                    Package:           ffvb1156
##                    Speedgrade:        -2
##
##
############################################################################
############################################################################
############################################################################
# Clock constraints                                                        #
############################################################################
current_instance -quiet
current_instance ps_emio_eth_1g_i/zynq_ultra_ps_e_0/inst
create_clock -period 20.000 -name clk_pl_0 [get_pins {PS8_i/PLCLK[0]}]



current_instance -quiet
set_property DONT_TOUCH true [get_cells ps_emio_eth_1g_i/zynq_ultra_ps_e_0/inst/PS8_i]


####################################################################################
# Constraints from file : 'ps_emio_eth_1g.xdc'
####################################################################################

set_property PACKAGE_PIN A12 [get_ports {sfp_tx_dis[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {sfp_tx_dis[0]}]

#USER_MGT_SI570_CLOCK2_C_P
set_property PACKAGE_PIN C8 [get_ports gtrefclk_in_clk_p]

create_clock -period 8.000 -name gt_ref_clk [get_ports gtrefclk_in_clk_p]


set_property IOSTANDARD LVCMOS25 [get_ports *led]

#GPIO_LED[0]
set_property PACKAGE_PIN AG14 [get_ports {xcvr_rst_done_led[0]}]

#GPIO_LED[1]
set_property PACKAGE_PIN AF13 [get_ports {link_status_led[0]}]
#GPIO_LED[2]
set_property PACKAGE_PIN AE13 [get_ports {link_sync_led[0]}]
#GPIO_LED[3]
set_property PACKAGE_PIN AJ14 [get_ports {pcs_clk_led[0]}]

#GPIO_LED[4]
#set_property PACKAGE_PIN    aj15  [get_ports rx_clk_led]

#GPIO_LED[5]
set_property PACKAGE_PIN AH13 [get_ports {pl_reset_led[0]}]

#GPIO_LED[6]
set_property PACKAGE_PIN AH14 [get_ports {mdc_clk_led[0]}]

#GPIO_LED[7]
set_property PACKAGE_PIN AL12 [get_ports {gmii_rx_clk_led[0]}]


####################################################################################
# Constraints from file : 'ps_emio_eth_1g_gig_ethernet_pcs_pma_0_0.xdc'
####################################################################################



current_instance ps_emio_eth_1g_i/gig_ethernet_pcs_pma_0/inst
set_false_path -to [get_pins -hier -filter {name =~  *core_resets_i/pma_reset_pipe_reg*/PRE}]
set_false_path -to [get_pins -hier -filter {name =~  *core_resets_i/pma_reset_pipe*[0]/D}]





# Control Gray Code delay and skew across clock boundary
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~  *pcs_pma_block_i/transceiver_inst/rx_elastic_buffer_inst/wr_addr_*_reg[*]}] -to [get_pins -hier -filter { name =~ *reclock_wr_addrgray[*].sync_wr_addrgray/data_sync*/D}] 16.000
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *pcs_pma_block_i/transceiver_inst/rx_elastic_buffer_inst/rd_addr_*_reg[*]}] -to [get_pins -hier -filter { name =~ *reclock_rd_addrgray[*].sync_rd_addrgray/data_sync*/D}] 8.000

# Constrain between Distributed Memory (output data) and the 1st set of flip-flops
set_false_path -from [get_clocks -of [get_pins -hier -filter { name =~ */transceiver_inst/ps_emio_eth_1g_gig_ethernet_pcs_pma_0_0_gt_i/inst/rxoutclk_out* }]] -to [get_pins -hierarchical -filter { name =~ *rx_elastic_buffer_inst/rd_data_reg*/D }]

set_false_path -from [get_pins -hierarchical -filter { name =~  *transceiver_inst/rx_elastic_buffer_inst/initialize_ram_complete_reg/C}] -to [get_pins -hierarchical -filter { name =~ *rx_elastic_buffer_inst/sync_initialize_ram_comp/data_sync_reg*/D }]


# false path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -hier -filter {name =~ *SYNC_*/data_sync*/D }]
set_false_path -to [get_pins -hier -filter {name =~ */sync_block_reset_done/data_sync_reg1/D }]
set_false_path -to [get_pins -hier -filter {name =~ *reset_sync*/PRE }]

set_false_path -to [get_pins -hier -filter {name =~ */*sync_speed_10*/data_sync*/D }]
set_false_path -to [get_pins -hier -filter {name =~ */*gen_sync_reset/reset_sync*/PRE }]
## timing for MDIO interface
set_max_delay -datapath_only -from [get_pins -hier -filter { name =~ */*MDIO_INTERFACE_*/MDIO_OUT_reg/C }] 10.000

set_false_path -to [get_pins -hier -filter { name =~ */sgmii_logic/clock_generation/i_bufgctrl_sgmii_clk/S*}]
set_case_analysis 1 [get_pins -hier -filter { name =~  */sgmii_logic/clock_generation/i_bufgctrl_sgmii_clk/S0}]
set_case_analysis 0 [get_pins -hier -filter { name =~  */sgmii_logic/clock_generation/i_bufgctrl_sgmii_clk/S1}]






####################################################################################
# Constraints from file : 'ps_emio_eth_1g.xdc'
####################################################################################

current_instance -quiet
set_property PACKAGE_PIN D2 [get_ports sgmii_0_rxp]
set_property PACKAGE_PIN D1 [get_ports sgmii_0_rxn]
set_property PACKAGE_PIN E4 [get_ports sgmii_0_txp]
set_property PACKAGE_PIN E3 [get_ports sgmii_0_txn]

# Vivado Generated miscellaneous constraints 

#revert back to original instance
current_instance -quiet