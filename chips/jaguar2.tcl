#
# Copyright (c) 2002-2014 Vitesse Semiconductor Corporation "Vitesse". All
# Rights Reserved.
#
# Unpublished rights reserved under the copyright laws of the United States of
# America, other countries and international treaties. Permission to use, copy,
# store and modify, the software and its source code is granted. Permission to
# integrate into other products, disclose, transmit and distribute the software
# in an absolute machine readable format (e.g. HEX file) is also granted.  The
# source code of the software may not be disclosed, transmitted or distributed
# without the written permission of Vitesse. The software and its source code
# may only be used in products utilizing the Vitesse switch products.
#
# This copyright notice must appear in any copy, modification, disclosure,
# transmission or distribution of the software. Vitesse retains all ownership,
# copyright, trade secret and proprietary rights in the software.
#
# THIS SOFTWARE HAS BEEN PROVIDED "AS IS," WITHOUT EXPRESS OR IMPLIED WARRANTY
# INCLUDING, WITHOUT LIMITATION, IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR USE AND NON-INFRINGEMENT.
#

# Main target address offsets:
# CFG                  0x70000000
# UART                 0x70100000
# TWI                  0x70100400
# UART2                0x70100800
# TWI2                 0x70100c00
# SIMC                 0x70101000
# SBA                  0x70110000
# PCIE_EP              0x70111000
# DEVCPU_ORG           0x71000000
# DEVCPU_GCB           0x71010000
# DEVCPU_QS            0x71020000
# DEV1G_0              0x71040000
# DEV1G_1              0x71050000
# DEV1G_2              0x71060000
# DEV1G_3              0x71070000
# DEV1G_4              0x71080000
# DEV1G_5              0x71090000
# DEV1G_6              0x710a0000
# DEV1G_7              0x710b0000
# DEV1G_8              0x710c0000
# DEV1G_9              0x710d0000
# DEV1G_10             0x710e0000
# DEV1G_11             0x710f0000
# DEV1G_12             0x71100000
# DEV1G_13             0x71110000
# DEV1G_14             0x71120000
# DEV1G_15             0x71130000
# DEV1G_16             0x71140000
# DEV1G_17             0x71150000
# DEV1G_18             0x71160000
# DEV1G_19             0x71170000
# DEV1G_20             0x71180000
# DEV1G_21             0x71190000
# DEV1G_22             0x711a0000
# DEV1G_23             0x711b0000
# DEV2G5_0             0x711c0000
# DEV2G5_1             0x711d0000
# DEV2G5_2             0x711e0000
# DEV2G5_3             0x711f0000
# DEV2G5_4             0x71200000
# DEV2G5_5             0x71210000
# DEV2G5_6             0x71220000
# DEV2G5_7             0x71230000
# DEV2G5_8             0x71240000
# DEV2G5_9             0x71250000
# DEV2G5_10            0x71260000
# DEV2G5_11            0x71270000
# DEV2G5_12            0x71280000
# DEV2G5_13            0x71290000
# DEV2G5_14            0x712a0000
# DEV2G5_15            0x712b0000
# DEV2G5_16            0x712c0000
# DEV2G5_17            0x712d0000
# DEV2G5_18            0x712e0000
# DEV2G5_19            0x712f0000
# DEV2G5_20            0x71300000
# DEV2G5_21            0x71310000
# DEV2G5_22            0x71320000
# DEV2G5_23            0x71330000
# DEV2G5_24            0x71340000
# DEV2G5_25            0x71350000
# DEV2G5_26            0x71360000
# DEV2G5_27            0x71370000
# DEV2G5_28            0x71380000
# DEV10G_0             0x71390000
# DEV10G_1             0x713a0000
# DEV10G_2             0x713b0000
# DEV10G_3             0x713c0000
# PCS10G_BR_0          0x713d0000
# PCS10G_BR_1          0x713e0000
# PCS10G_BR_2          0x713f0000
# PCS10G_BR_3          0x71400000
# ASM                  0x71410000
# LRN                  0x71420000
# ANA_ACL              0x71430000
# VCAP_SUPER           0x71440000
# DSM                  0x71450000
# HSIO                 0x71460000
# VCAP_ES0             0x71470000
# XGANA_0              0x71480000
# XGANA_1              0x71490000
# XGANA_2              0x714a0000
# XGANA_3              0x714b0000
# XGDIG_0              0x714c0000
# XGDIG_1              0x714d0000
# XGDIG_2              0x714e0000
# XGDIG_3              0x714f0000
# XGXFI_0              0x71500000
# XGXFI_1              0x71510000
# XGXFI_2              0x71520000
# XGXFI_3              0x71530000
# XGKR0_0              0x71540000
# XGKR0_1              0x71550000
# XGKR0_2              0x71560000
# XGKR0_3              0x71570000
# XGKR1_0              0x71580000
# XGKR1_1              0x71590000
# XGKR1_2              0x715a0000
# XGKR1_3              0x715b0000
# VAUI0                0x717b0000
# VAUI1                0x717c0000
# QFWD                 0x717d0000
# QSYS                 0x717e0000
# DEVCPU_PTP           0x717f0000
# ANA_L3               0x71800000
# HSCH                 0x71880000
# QRES                 0x71900000
# ANA_AC_POL           0x71980000
# VOP_MPLS             0x71a00000
# AFI                  0x71a80000
# REW                  0x71b00000
# ANA_AC_OAM_MOD       0x71b80000
# VOP                  0x71c00000
# ANA_CL               0x71d00000
# ANA_L2               0x71e00000
# ANA_AC               0x71f00000
#

#********************************************************************** 
#
# Target DEVCPU_GCB
#
# General Configuration Block
#
#**********************************************************************

#*********************************************************************
# Register group: DEVCPU_GCB:CHIP_REGS
# 

#***** Register DEVCPU_GCB:CHIP_REGS:CHIP_ID ***************************
# Chip ID register
set CHIP_REGS_CHIP_ID 0x71010000
global CHIP_REGS_CHIP_ID

#***** Register DEVCPU_GCB:CHIP_REGS:GPR *******************************
# General purpose register
set CHIP_REGS_GPR 0x71010004
global CHIP_REGS_GPR

#***** Register DEVCPU_GCB:CHIP_REGS:SOFT_RST **************************
# Reset control register
set CHIP_REGS_SOFT_RST 0x71010008
global CHIP_REGS_SOFT_RST

#***** Register DEVCPU_GCB:CHIP_REGS:HW_CFG ****************************
# Various configrations
set CHIP_REGS_HW_CFG 0x7101000c
global CHIP_REGS_HW_CFG

#***** Register DEVCPU_GCB:CHIP_REGS:HW_STAT ***************************
# Various status indications
set CHIP_REGS_HW_STAT 0x71010010
global CHIP_REGS_HW_STAT

#***** Register DEVCPU_GCB:CHIP_REGS:HW_SGPIO_SD_CFG *******************
# Additional configuration of SGPIO signal detect 
set CHIP_REGS_HW_SGPIO_SD_CFG 0x71010014
global CHIP_REGS_HW_SGPIO_SD_CFG

#***** Register DEVCPU_GCB:CHIP_REGS:FEA_STAT **************************
# Encoded features
set CHIP_REGS_FEA_STAT 0x71010018
global CHIP_REGS_FEA_STAT

#***** Register DEVCPU_GCB:CHIP_REGS:FEA_DIS ***************************
# Disable of features
set CHIP_REGS_FEA_DIS 0x7101001c
global CHIP_REGS_FEA_DIS

#*********************************************************************
# Register group: DEVCPU_GCB:SW_REGS
# Registers for software/software interaction

#***** Register DEVCPU_GCB:SW_REGS:SW_INTR *****************************
# Manually assert software interrupt
set SW_REGS_SW_INTR 0x71010020
global SW_REGS_SW_INTR

#*********************************************************************
# Register group: DEVCPU_GCB:VCORE_ACCESS
# Registers for accessing the VCore

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_CTRL ************************
# Control register for VCore accesses
set VCORE_ACCESS_VA_CTRL 0x71010024
global VCORE_ACCESS_VA_CTRL

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_ADDR ************************
# Address register for VCore accesses
set VCORE_ACCESS_VA_ADDR 0x71010028
global VCORE_ACCESS_VA_ADDR

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA ************************
# Data register for VCore accesses
set VCORE_ACCESS_VA_DATA 0x7101002c
global VCORE_ACCESS_VA_DATA

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INCR *******************
# Data register for VCore accesses (w. auto increment of address)
set VCORE_ACCESS_VA_DATA_INCR 0x71010030
global VCORE_ACCESS_VA_DATA_INCR

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INERT ******************
# Data register for VCore accesses (will not initiate access)
set VCORE_ACCESS_VA_DATA_INERT 0x71010034
global VCORE_ACCESS_VA_DATA_INERT

#*********************************************************************
# Register group: DEVCPU_GCB:GPIO
# 

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_SET ***************************
# GPIO output set
set GPIO_OUT_SET 0x71010038
global GPIO_OUT_SET

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_SET1 **************************
# GPIO output set
set GPIO_OUT_SET1 0x7101003c
global GPIO_OUT_SET1

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_CLR ***************************
# GPIO output clear
set GPIO_OUT_CLR 0x71010040
global GPIO_OUT_CLR

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_CLR1 **************************
# GPIO output clear
set GPIO_OUT_CLR1 0x71010044
global GPIO_OUT_CLR1

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT *******************************
# GPIO output
set GPIO_OUT 0x71010048
global GPIO_OUT

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT1 ******************************
# GPIO output
set GPIO_OUT1 0x7101004c
global GPIO_OUT1

#***** Register DEVCPU_GCB:GPIO:GPIO_IN ********************************
# GPIO input
set GPIO_IN 0x71010050
global GPIO_IN

#***** Register DEVCPU_GCB:GPIO:GPIO_IN1 *******************************
# GPIO input
set GPIO_IN1 0x71010054
global GPIO_IN1

#***** Register DEVCPU_GCB:GPIO:GPIO_OE ********************************
# GPIO pin direction
set GPIO_OE 0x71010058
global GPIO_OE

#***** Register DEVCPU_GCB:GPIO:GPIO_OE1 *******************************
# GPIO pin direction
set GPIO_OE1 0x7101005c
global GPIO_OE1

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR ******************************
# GPIO interrupt
set GPIO_INTR 0x71010060
global GPIO_INTR

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR1 *****************************
# GPIO interrupt
set GPIO_INTR1 0x71010064
global GPIO_INTR1

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_ENA **************************
# GPIO interrupt enable
set GPIO_INTR_ENA 0x71010068
global GPIO_INTR_ENA

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_ENA1 *************************
# GPIO interrupt enable
set GPIO_INTR_ENA1 0x7101006c
global GPIO_INTR_ENA1

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_IDENT ************************
# GPIO interrupt identity
set GPIO_INTR_ID 0x71010070
global GPIO_INTR_ID

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_IDENT1 ***********************
# GPIO interrupt identity
set GPIO_INTR_ID1 0x71010074
global GPIO_INTR_ID1

#***** Register DEVCPU_GCB:GPIO:GPIO_ALT *******************************
# GPIO alternate functions
set GPIO_ALT_0 0x71010078
global GPIO_ALT_0
set GPIO_ALT_1 0x7101007c
global GPIO_ALT_1

#***** Register DEVCPU_GCB:GPIO:GPIO_ALT1 ******************************
# GPIO alternate functions
set GPIO_ALT1_0 0x71010080
global GPIO_ALT1_0
set GPIO_ALT1_1 0x71010084
global GPIO_ALT1_1

#***** Register DEVCPU_GCB:GPIO:GPIO_SD_MAP ****************************
# GPIO Signal Detect Mapping
set GPIO_SD_MAP_0 0x71010088
global GPIO_SD_MAP_0
set GPIO_SD_MAP_1 0x7101008c
global GPIO_SD_MAP_1
set GPIO_SD_MAP_2 0x71010090
global GPIO_SD_MAP_2
set GPIO_SD_MAP_3 0x71010094
global GPIO_SD_MAP_3
set GPIO_SD_MAP_4 0x71010098
global GPIO_SD_MAP_4
set GPIO_SD_MAP_5 0x7101009c
global GPIO_SD_MAP_5
set GPIO_SD_MAP_6 0x710100a0
global GPIO_SD_MAP_6
set GPIO_SD_MAP_7 0x710100a4
global GPIO_SD_MAP_7
set GPIO_SD_MAP_8 0x710100a8
global GPIO_SD_MAP_8
set GPIO_SD_MAP_9 0x710100ac
global GPIO_SD_MAP_9
set GPIO_SD_MAP_10 0x710100b0
global GPIO_SD_MAP_10
set GPIO_SD_MAP_11 0x710100b4
global GPIO_SD_MAP_11
set GPIO_SD_MAP_12 0x710100b8
global GPIO_SD_MAP_12
set GPIO_SD_MAP_13 0x710100bc
global GPIO_SD_MAP_13
set GPIO_SD_MAP_14 0x710100c0
global GPIO_SD_MAP_14
set GPIO_SD_MAP_15 0x710100c4
global GPIO_SD_MAP_15

#*********************************************************************
# Register group: DEVCPU_GCB:MIIM
# 

#***** Register DEVCPU_GCB:MIIM:MII_STATUS *****************************
# MIIM Status
set MIIM0_MII_STATUS 0x710100c8
global MIIM0_MII_STATUS
set MIIM1_MII_STATUS 0x710100ec
global MIIM1_MII_STATUS
set MIIM2_MII_STATUS 0x71010110
global MIIM2_MII_STATUS

#***** Register DEVCPU_GCB:MIIM:MII_CFG_7226 ***************************
# MIIM Configuration
set MIIM0_MII_CFG_7226 0x710100cc
global MIIM0_MII_CFG_7226
set MIIM1_MII_CFG_7226 0x710100f0
global MIIM1_MII_CFG_7226
set MIIM2_MII_CFG_7226 0x71010114
global MIIM2_MII_CFG_7226

#***** Register DEVCPU_GCB:MIIM:MII_CMD ********************************
# MIIM Command
set MIIM0_MII_CMD 0x710100d0
global MIIM0_MII_CMD
set MIIM1_MII_CMD 0x710100f4
global MIIM1_MII_CMD
set MIIM2_MII_CMD 0x71010118
global MIIM2_MII_CMD

#***** Register DEVCPU_GCB:MIIM:MII_DATA *******************************
# MIIM Reply Data
set MIIM0_MII_DATA 0x710100d4
global MIIM0_MII_DATA
set MIIM1_MII_DATA 0x710100f8
global MIIM1_MII_DATA
set MIIM2_MII_DATA 0x7101011c
global MIIM2_MII_DATA

#***** Register DEVCPU_GCB:MIIM:MII_CFG ********************************
# MIIM Configuration
set MIIM0_MII_CFG 0x710100d8
global MIIM0_MII_CFG
set MIIM1_MII_CFG 0x710100fc
global MIIM1_MII_CFG
set MIIM2_MII_CFG 0x71010120
global MIIM2_MII_CFG

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_0 *****************************
# MIIM Scan 0
set MIIM0_MII_SCAN_0 0x710100dc
global MIIM0_MII_SCAN_0
set MIIM1_MII_SCAN_0 0x71010100
global MIIM1_MII_SCAN_0
set MIIM2_MII_SCAN_0 0x71010124
global MIIM2_MII_SCAN_0

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_1 *****************************
# MIIM Scan 1
set MIIM0_MII_SCAN_1 0x710100e0
global MIIM0_MII_SCAN_1
set MIIM1_MII_SCAN_1 0x71010104
global MIIM1_MII_SCAN_1
set MIIM2_MII_SCAN_1 0x71010128
global MIIM2_MII_SCAN_1

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS ********************
# MIIM Results
set MIIM0_LAST_SCAN 0x710100e4
global MIIM0_LAST_SCAN
set MIIM1_LAST_SCAN 0x71010108
global MIIM1_LAST_SCAN
set MIIM2_LAST_SCAN 0x7101012c
global MIIM2_LAST_SCAN

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS_VLD ****************
# MIIM Results
set MIIM0_LAST_SCAN_VLD 0x710100e8
global MIIM0_LAST_SCAN_VLD
set MIIM1_LAST_SCAN_VLD 0x7101010c
global MIIM1_LAST_SCAN_VLD
set MIIM2_LAST_SCAN_VLD 0x71010130
global MIIM2_LAST_SCAN_VLD

#*********************************************************************
# Register group: DEVCPU_GCB:MIIM_READ_SCAN
# 

#***** Register DEVCPU_GCB:MIIM_READ_SCAN:MII_SCAN_RSLTS_STICKY ********
# MIIM Results
set MIIM_READ_SCAN_MII_RSLTS_ST_0 0x71010134
global MIIM_READ_SCAN_MII_RSLTS_ST_0
set MIIM_READ_SCAN_MII_RSLTS_ST_1 0x71010138
global MIIM_READ_SCAN_MII_RSLTS_ST_1
set MIIM_READ_SCAN_MII_RSLTS_ST_2 0x7101013c
global MIIM_READ_SCAN_MII_RSLTS_ST_2

#*********************************************************************
# Register group: DEVCPU_GCB:TEMP_SENSOR
# Temperature sensor control

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_CTRL ****************
# Temperature Sensor Control
set TEMP_CTRL 0x71010140
global TEMP_CTRL

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_CFG *****************
# Temperature sensor sample period
set TEMP_CFG 0x71010144
global TEMP_CFG

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_STAT ****************
# Temperature Sensor Status
set TEMP_STAT 0x71010148
global TEMP_STAT

#*********************************************************************
# Register group: DEVCPU_GCB:MIIM_SLAVE
# 

#***** Register DEVCPU_GCB:MIIM_SLAVE:MIIM_SLAVE_CFG *******************
# MIIM Slave Spike Filter
set MIIM_SLAVE_CFG 0x7101014c
global MIIM_SLAVE_CFG

#*********************************************************************
# Register group: DEVCPU_GCB:SIO_CTRL
# Serial IO control configuration

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INPUT_DATA *********************
# Last value at SGPIO pins
set SIO_CTRL0_SIO_INPUT_DATA_0 0x71010150
global SIO_CTRL0_SIO_INPUT_DATA_0
set SIO_CTRL0_SIO_INPUT_DATA_1 0x71010154
global SIO_CTRL0_SIO_INPUT_DATA_1
set SIO_CTRL0_SIO_INPUT_DATA_2 0x71010158
global SIO_CTRL0_SIO_INPUT_DATA_2
set SIO_CTRL0_SIO_INPUT_DATA_3 0x7101015c
global SIO_CTRL0_SIO_INPUT_DATA_3
set SIO_CTRL1_SIO_INPUT_DATA_0 0x7101025c
global SIO_CTRL1_SIO_INPUT_DATA_0
set SIO_CTRL1_SIO_INPUT_DATA_1 0x71010260
global SIO_CTRL1_SIO_INPUT_DATA_1
set SIO_CTRL1_SIO_INPUT_DATA_2 0x71010264
global SIO_CTRL1_SIO_INPUT_DATA_2
set SIO_CTRL1_SIO_INPUT_DATA_3 0x71010268
global SIO_CTRL1_SIO_INPUT_DATA_3
set SIO_CTRL2_SIO_INPUT_DATA_0 0x71010368
global SIO_CTRL2_SIO_INPUT_DATA_0
set SIO_CTRL2_SIO_INPUT_DATA_1 0x7101036c
global SIO_CTRL2_SIO_INPUT_DATA_1
set SIO_CTRL2_SIO_INPUT_DATA_2 0x71010370
global SIO_CTRL2_SIO_INPUT_DATA_2
set SIO_CTRL2_SIO_INPUT_DATA_3 0x71010374
global SIO_CTRL2_SIO_INPUT_DATA_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CFG ****************************
# General configurations
set SIO_CTRL0_SIO_CFG 0x71010160
global SIO_CTRL0_SIO_CFG
set SIO_CTRL1_SIO_CFG 0x7101026c
global SIO_CTRL1_SIO_CFG
set SIO_CTRL2_SIO_CFG 0x71010378
global SIO_CTRL2_SIO_CFG

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CLOCK **************************
# SGPIO shift clock frequency
set SIO_CTRL0_SIO_CLOCK 0x71010164
global SIO_CTRL0_SIO_CLOCK
set SIO_CTRL1_SIO_CLOCK 0x71010270
global SIO_CTRL1_SIO_CLOCK
set SIO_CTRL2_SIO_CLOCK 0x7101037c
global SIO_CTRL2_SIO_CLOCK

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_CFG ***********************
# Output configuration
set SIO_CTRL0_SIO_PORT_CFG_0 0x71010168
global SIO_CTRL0_SIO_PORT_CFG_0
set SIO_CTRL0_SIO_PORT_CFG_1 0x7101016c
global SIO_CTRL0_SIO_PORT_CFG_1
set SIO_CTRL0_SIO_PORT_CFG_2 0x71010170
global SIO_CTRL0_SIO_PORT_CFG_2
set SIO_CTRL0_SIO_PORT_CFG_3 0x71010174
global SIO_CTRL0_SIO_PORT_CFG_3
set SIO_CTRL0_SIO_PORT_CFG_4 0x71010178
global SIO_CTRL0_SIO_PORT_CFG_4
set SIO_CTRL0_SIO_PORT_CFG_5 0x7101017c
global SIO_CTRL0_SIO_PORT_CFG_5
set SIO_CTRL0_SIO_PORT_CFG_6 0x71010180
global SIO_CTRL0_SIO_PORT_CFG_6
set SIO_CTRL0_SIO_PORT_CFG_7 0x71010184
global SIO_CTRL0_SIO_PORT_CFG_7
set SIO_CTRL0_SIO_PORT_CFG_8 0x71010188
global SIO_CTRL0_SIO_PORT_CFG_8
set SIO_CTRL0_SIO_PORT_CFG_9 0x7101018c
global SIO_CTRL0_SIO_PORT_CFG_9
set SIO_CTRL0_SIO_PORT_CFG_10 0x71010190
global SIO_CTRL0_SIO_PORT_CFG_10
set SIO_CTRL0_SIO_PORT_CFG_11 0x71010194
global SIO_CTRL0_SIO_PORT_CFG_11
set SIO_CTRL0_SIO_PORT_CFG_12 0x71010198
global SIO_CTRL0_SIO_PORT_CFG_12
set SIO_CTRL0_SIO_PORT_CFG_13 0x7101019c
global SIO_CTRL0_SIO_PORT_CFG_13
set SIO_CTRL0_SIO_PORT_CFG_14 0x710101a0
global SIO_CTRL0_SIO_PORT_CFG_14
set SIO_CTRL0_SIO_PORT_CFG_15 0x710101a4
global SIO_CTRL0_SIO_PORT_CFG_15
set SIO_CTRL0_SIO_PORT_CFG_16 0x710101a8
global SIO_CTRL0_SIO_PORT_CFG_16
set SIO_CTRL0_SIO_PORT_CFG_17 0x710101ac
global SIO_CTRL0_SIO_PORT_CFG_17
set SIO_CTRL0_SIO_PORT_CFG_18 0x710101b0
global SIO_CTRL0_SIO_PORT_CFG_18
set SIO_CTRL0_SIO_PORT_CFG_19 0x710101b4
global SIO_CTRL0_SIO_PORT_CFG_19
set SIO_CTRL0_SIO_PORT_CFG_20 0x710101b8
global SIO_CTRL0_SIO_PORT_CFG_20
set SIO_CTRL0_SIO_PORT_CFG_21 0x710101bc
global SIO_CTRL0_SIO_PORT_CFG_21
set SIO_CTRL0_SIO_PORT_CFG_22 0x710101c0
global SIO_CTRL0_SIO_PORT_CFG_22
set SIO_CTRL0_SIO_PORT_CFG_23 0x710101c4
global SIO_CTRL0_SIO_PORT_CFG_23
set SIO_CTRL0_SIO_PORT_CFG_24 0x710101c8
global SIO_CTRL0_SIO_PORT_CFG_24
set SIO_CTRL0_SIO_PORT_CFG_25 0x710101cc
global SIO_CTRL0_SIO_PORT_CFG_25
set SIO_CTRL0_SIO_PORT_CFG_26 0x710101d0
global SIO_CTRL0_SIO_PORT_CFG_26
set SIO_CTRL0_SIO_PORT_CFG_27 0x710101d4
global SIO_CTRL0_SIO_PORT_CFG_27
set SIO_CTRL0_SIO_PORT_CFG_28 0x710101d8
global SIO_CTRL0_SIO_PORT_CFG_28
set SIO_CTRL0_SIO_PORT_CFG_29 0x710101dc
global SIO_CTRL0_SIO_PORT_CFG_29
set SIO_CTRL0_SIO_PORT_CFG_30 0x710101e0
global SIO_CTRL0_SIO_PORT_CFG_30
set SIO_CTRL0_SIO_PORT_CFG_31 0x710101e4
global SIO_CTRL0_SIO_PORT_CFG_31
set SIO_CTRL1_SIO_PORT_CFG_0 0x71010274
global SIO_CTRL1_SIO_PORT_CFG_0
set SIO_CTRL1_SIO_PORT_CFG_1 0x71010278
global SIO_CTRL1_SIO_PORT_CFG_1
set SIO_CTRL1_SIO_PORT_CFG_2 0x7101027c
global SIO_CTRL1_SIO_PORT_CFG_2
set SIO_CTRL1_SIO_PORT_CFG_3 0x71010280
global SIO_CTRL1_SIO_PORT_CFG_3
set SIO_CTRL1_SIO_PORT_CFG_4 0x71010284
global SIO_CTRL1_SIO_PORT_CFG_4
set SIO_CTRL1_SIO_PORT_CFG_5 0x71010288
global SIO_CTRL1_SIO_PORT_CFG_5
set SIO_CTRL1_SIO_PORT_CFG_6 0x7101028c
global SIO_CTRL1_SIO_PORT_CFG_6
set SIO_CTRL1_SIO_PORT_CFG_7 0x71010290
global SIO_CTRL1_SIO_PORT_CFG_7
set SIO_CTRL1_SIO_PORT_CFG_8 0x71010294
global SIO_CTRL1_SIO_PORT_CFG_8
set SIO_CTRL1_SIO_PORT_CFG_9 0x71010298
global SIO_CTRL1_SIO_PORT_CFG_9
set SIO_CTRL1_SIO_PORT_CFG_10 0x7101029c
global SIO_CTRL1_SIO_PORT_CFG_10
set SIO_CTRL1_SIO_PORT_CFG_11 0x710102a0
global SIO_CTRL1_SIO_PORT_CFG_11
set SIO_CTRL1_SIO_PORT_CFG_12 0x710102a4
global SIO_CTRL1_SIO_PORT_CFG_12
set SIO_CTRL1_SIO_PORT_CFG_13 0x710102a8
global SIO_CTRL1_SIO_PORT_CFG_13
set SIO_CTRL1_SIO_PORT_CFG_14 0x710102ac
global SIO_CTRL1_SIO_PORT_CFG_14
set SIO_CTRL1_SIO_PORT_CFG_15 0x710102b0
global SIO_CTRL1_SIO_PORT_CFG_15
set SIO_CTRL1_SIO_PORT_CFG_16 0x710102b4
global SIO_CTRL1_SIO_PORT_CFG_16
set SIO_CTRL1_SIO_PORT_CFG_17 0x710102b8
global SIO_CTRL1_SIO_PORT_CFG_17
set SIO_CTRL1_SIO_PORT_CFG_18 0x710102bc
global SIO_CTRL1_SIO_PORT_CFG_18
set SIO_CTRL1_SIO_PORT_CFG_19 0x710102c0
global SIO_CTRL1_SIO_PORT_CFG_19
set SIO_CTRL1_SIO_PORT_CFG_20 0x710102c4
global SIO_CTRL1_SIO_PORT_CFG_20
set SIO_CTRL1_SIO_PORT_CFG_21 0x710102c8
global SIO_CTRL1_SIO_PORT_CFG_21
set SIO_CTRL1_SIO_PORT_CFG_22 0x710102cc
global SIO_CTRL1_SIO_PORT_CFG_22
set SIO_CTRL1_SIO_PORT_CFG_23 0x710102d0
global SIO_CTRL1_SIO_PORT_CFG_23
set SIO_CTRL1_SIO_PORT_CFG_24 0x710102d4
global SIO_CTRL1_SIO_PORT_CFG_24
set SIO_CTRL1_SIO_PORT_CFG_25 0x710102d8
global SIO_CTRL1_SIO_PORT_CFG_25
set SIO_CTRL1_SIO_PORT_CFG_26 0x710102dc
global SIO_CTRL1_SIO_PORT_CFG_26
set SIO_CTRL1_SIO_PORT_CFG_27 0x710102e0
global SIO_CTRL1_SIO_PORT_CFG_27
set SIO_CTRL1_SIO_PORT_CFG_28 0x710102e4
global SIO_CTRL1_SIO_PORT_CFG_28
set SIO_CTRL1_SIO_PORT_CFG_29 0x710102e8
global SIO_CTRL1_SIO_PORT_CFG_29
set SIO_CTRL1_SIO_PORT_CFG_30 0x710102ec
global SIO_CTRL1_SIO_PORT_CFG_30
set SIO_CTRL1_SIO_PORT_CFG_31 0x710102f0
global SIO_CTRL1_SIO_PORT_CFG_31
set SIO_CTRL2_SIO_PORT_CFG_0 0x71010380
global SIO_CTRL2_SIO_PORT_CFG_0
set SIO_CTRL2_SIO_PORT_CFG_1 0x71010384
global SIO_CTRL2_SIO_PORT_CFG_1
set SIO_CTRL2_SIO_PORT_CFG_2 0x71010388
global SIO_CTRL2_SIO_PORT_CFG_2
set SIO_CTRL2_SIO_PORT_CFG_3 0x7101038c
global SIO_CTRL2_SIO_PORT_CFG_3
set SIO_CTRL2_SIO_PORT_CFG_4 0x71010390
global SIO_CTRL2_SIO_PORT_CFG_4
set SIO_CTRL2_SIO_PORT_CFG_5 0x71010394
global SIO_CTRL2_SIO_PORT_CFG_5
set SIO_CTRL2_SIO_PORT_CFG_6 0x71010398
global SIO_CTRL2_SIO_PORT_CFG_6
set SIO_CTRL2_SIO_PORT_CFG_7 0x7101039c
global SIO_CTRL2_SIO_PORT_CFG_7
set SIO_CTRL2_SIO_PORT_CFG_8 0x710103a0
global SIO_CTRL2_SIO_PORT_CFG_8
set SIO_CTRL2_SIO_PORT_CFG_9 0x710103a4
global SIO_CTRL2_SIO_PORT_CFG_9
set SIO_CTRL2_SIO_PORT_CFG_10 0x710103a8
global SIO_CTRL2_SIO_PORT_CFG_10
set SIO_CTRL2_SIO_PORT_CFG_11 0x710103ac
global SIO_CTRL2_SIO_PORT_CFG_11
set SIO_CTRL2_SIO_PORT_CFG_12 0x710103b0
global SIO_CTRL2_SIO_PORT_CFG_12
set SIO_CTRL2_SIO_PORT_CFG_13 0x710103b4
global SIO_CTRL2_SIO_PORT_CFG_13
set SIO_CTRL2_SIO_PORT_CFG_14 0x710103b8
global SIO_CTRL2_SIO_PORT_CFG_14
set SIO_CTRL2_SIO_PORT_CFG_15 0x710103bc
global SIO_CTRL2_SIO_PORT_CFG_15
set SIO_CTRL2_SIO_PORT_CFG_16 0x710103c0
global SIO_CTRL2_SIO_PORT_CFG_16
set SIO_CTRL2_SIO_PORT_CFG_17 0x710103c4
global SIO_CTRL2_SIO_PORT_CFG_17
set SIO_CTRL2_SIO_PORT_CFG_18 0x710103c8
global SIO_CTRL2_SIO_PORT_CFG_18
set SIO_CTRL2_SIO_PORT_CFG_19 0x710103cc
global SIO_CTRL2_SIO_PORT_CFG_19
set SIO_CTRL2_SIO_PORT_CFG_20 0x710103d0
global SIO_CTRL2_SIO_PORT_CFG_20
set SIO_CTRL2_SIO_PORT_CFG_21 0x710103d4
global SIO_CTRL2_SIO_PORT_CFG_21
set SIO_CTRL2_SIO_PORT_CFG_22 0x710103d8
global SIO_CTRL2_SIO_PORT_CFG_22
set SIO_CTRL2_SIO_PORT_CFG_23 0x710103dc
global SIO_CTRL2_SIO_PORT_CFG_23
set SIO_CTRL2_SIO_PORT_CFG_24 0x710103e0
global SIO_CTRL2_SIO_PORT_CFG_24
set SIO_CTRL2_SIO_PORT_CFG_25 0x710103e4
global SIO_CTRL2_SIO_PORT_CFG_25
set SIO_CTRL2_SIO_PORT_CFG_26 0x710103e8
global SIO_CTRL2_SIO_PORT_CFG_26
set SIO_CTRL2_SIO_PORT_CFG_27 0x710103ec
global SIO_CTRL2_SIO_PORT_CFG_27
set SIO_CTRL2_SIO_PORT_CFG_28 0x710103f0
global SIO_CTRL2_SIO_PORT_CFG_28
set SIO_CTRL2_SIO_PORT_CFG_29 0x710103f4
global SIO_CTRL2_SIO_PORT_CFG_29
set SIO_CTRL2_SIO_PORT_CFG_30 0x710103f8
global SIO_CTRL2_SIO_PORT_CFG_30
set SIO_CTRL2_SIO_PORT_CFG_31 0x710103fc
global SIO_CTRL2_SIO_PORT_CFG_31

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_ENA ***********************
# Port enable
set SIO_CTRL0_SIO_PORT_ENA 0x710101e8
global SIO_CTRL0_SIO_PORT_ENA
set SIO_CTRL1_SIO_PORT_ENA 0x710102f4
global SIO_CTRL1_SIO_PORT_ENA
set SIO_CTRL2_SIO_PORT_ENA 0x71010400
global SIO_CTRL2_SIO_PORT_ENA

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PWM_CFG ************************
# Pulse-width modulation configuration
set SIO_CTRL0_SIO_PWM_CFG_0 0x710101ec
global SIO_CTRL0_SIO_PWM_CFG_0
set SIO_CTRL0_SIO_PWM_CFG_1 0x710101f0
global SIO_CTRL0_SIO_PWM_CFG_1
set SIO_CTRL0_SIO_PWM_CFG_2 0x710101f4
global SIO_CTRL0_SIO_PWM_CFG_2
set SIO_CTRL1_SIO_PWM_CFG_0 0x710102f8
global SIO_CTRL1_SIO_PWM_CFG_0
set SIO_CTRL1_SIO_PWM_CFG_1 0x710102fc
global SIO_CTRL1_SIO_PWM_CFG_1
set SIO_CTRL1_SIO_PWM_CFG_2 0x71010300
global SIO_CTRL1_SIO_PWM_CFG_2
set SIO_CTRL2_SIO_PWM_CFG_0 0x71010404
global SIO_CTRL2_SIO_PWM_CFG_0
set SIO_CTRL2_SIO_PWM_CFG_1 0x71010408
global SIO_CTRL2_SIO_PWM_CFG_1
set SIO_CTRL2_SIO_PWM_CFG_2 0x7101040c
global SIO_CTRL2_SIO_PWM_CFG_2

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INTR_POL ***********************
# SGPIO interrupt polarity
set SIO_CTRL0_SIO_INTR_POL_0 0x710101f8
global SIO_CTRL0_SIO_INTR_POL_0
set SIO_CTRL0_SIO_INTR_POL_1 0x710101fc
global SIO_CTRL0_SIO_INTR_POL_1
set SIO_CTRL0_SIO_INTR_POL_2 0x71010200
global SIO_CTRL0_SIO_INTR_POL_2
set SIO_CTRL0_SIO_INTR_POL_3 0x71010204
global SIO_CTRL0_SIO_INTR_POL_3
set SIO_CTRL1_SIO_INTR_POL_0 0x71010304
global SIO_CTRL1_SIO_INTR_POL_0
set SIO_CTRL1_SIO_INTR_POL_1 0x71010308
global SIO_CTRL1_SIO_INTR_POL_1
set SIO_CTRL1_SIO_INTR_POL_2 0x7101030c
global SIO_CTRL1_SIO_INTR_POL_2
set SIO_CTRL1_SIO_INTR_POL_3 0x71010310
global SIO_CTRL1_SIO_INTR_POL_3
set SIO_CTRL2_SIO_INTR_POL_0 0x71010410
global SIO_CTRL2_SIO_INTR_POL_0
set SIO_CTRL2_SIO_INTR_POL_1 0x71010414
global SIO_CTRL2_SIO_INTR_POL_1
set SIO_CTRL2_SIO_INTR_POL_2 0x71010418
global SIO_CTRL2_SIO_INTR_POL_2
set SIO_CTRL2_SIO_INTR_POL_3 0x7101041c
global SIO_CTRL2_SIO_INTR_POL_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INTR_RAW ***********************
# Interrupt raw status
set SIO_CTRL0_SIO_INTR_RAW_0 0x71010208
global SIO_CTRL0_SIO_INTR_RAW_0
set SIO_CTRL0_SIO_INTR_RAW_1 0x7101020c
global SIO_CTRL0_SIO_INTR_RAW_1
set SIO_CTRL0_SIO_INTR_RAW_2 0x71010210
global SIO_CTRL0_SIO_INTR_RAW_2
set SIO_CTRL0_SIO_INTR_RAW_3 0x71010214
global SIO_CTRL0_SIO_INTR_RAW_3
set SIO_CTRL1_SIO_INTR_RAW_0 0x71010314
global SIO_CTRL1_SIO_INTR_RAW_0
set SIO_CTRL1_SIO_INTR_RAW_1 0x71010318
global SIO_CTRL1_SIO_INTR_RAW_1
set SIO_CTRL1_SIO_INTR_RAW_2 0x7101031c
global SIO_CTRL1_SIO_INTR_RAW_2
set SIO_CTRL1_SIO_INTR_RAW_3 0x71010320
global SIO_CTRL1_SIO_INTR_RAW_3
set SIO_CTRL2_SIO_INTR_RAW_0 0x71010420
global SIO_CTRL2_SIO_INTR_RAW_0
set SIO_CTRL2_SIO_INTR_RAW_1 0x71010424
global SIO_CTRL2_SIO_INTR_RAW_1
set SIO_CTRL2_SIO_INTR_RAW_2 0x71010428
global SIO_CTRL2_SIO_INTR_RAW_2
set SIO_CTRL2_SIO_INTR_RAW_3 0x7101042c
global SIO_CTRL2_SIO_INTR_RAW_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INTR_TRIGGER0 ******************
# Interrupt trigger mode 0
set SIO_CTRL0_SIO_INTR_TRG0_0 0x71010218
global SIO_CTRL0_SIO_INTR_TRG0_0
set SIO_CTRL0_SIO_INTR_TRG0_1 0x7101021c
global SIO_CTRL0_SIO_INTR_TRG0_1
set SIO_CTRL0_SIO_INTR_TRG0_2 0x71010220
global SIO_CTRL0_SIO_INTR_TRG0_2
set SIO_CTRL0_SIO_INTR_TRG0_3 0x71010224
global SIO_CTRL0_SIO_INTR_TRG0_3
set SIO_CTRL1_SIO_INTR_TRG0_0 0x71010324
global SIO_CTRL1_SIO_INTR_TRG0_0
set SIO_CTRL1_SIO_INTR_TRG0_1 0x71010328
global SIO_CTRL1_SIO_INTR_TRG0_1
set SIO_CTRL1_SIO_INTR_TRG0_2 0x7101032c
global SIO_CTRL1_SIO_INTR_TRG0_2
set SIO_CTRL1_SIO_INTR_TRG0_3 0x71010330
global SIO_CTRL1_SIO_INTR_TRG0_3
set SIO_CTRL2_SIO_INTR_TRG0_0 0x71010430
global SIO_CTRL2_SIO_INTR_TRG0_0
set SIO_CTRL2_SIO_INTR_TRG0_1 0x71010434
global SIO_CTRL2_SIO_INTR_TRG0_1
set SIO_CTRL2_SIO_INTR_TRG0_2 0x71010438
global SIO_CTRL2_SIO_INTR_TRG0_2
set SIO_CTRL2_SIO_INTR_TRG0_3 0x7101043c
global SIO_CTRL2_SIO_INTR_TRG0_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INTR_TRIGGER1 ******************
# Interrupt trigger mode 1
set SIO_CTRL0_SIO_INTR_TRG1_0 0x71010228
global SIO_CTRL0_SIO_INTR_TRG1_0
set SIO_CTRL0_SIO_INTR_TRG1_1 0x7101022c
global SIO_CTRL0_SIO_INTR_TRG1_1
set SIO_CTRL0_SIO_INTR_TRG1_2 0x71010230
global SIO_CTRL0_SIO_INTR_TRG1_2
set SIO_CTRL0_SIO_INTR_TRG1_3 0x71010234
global SIO_CTRL0_SIO_INTR_TRG1_3
set SIO_CTRL1_SIO_INTR_TRG1_0 0x71010334
global SIO_CTRL1_SIO_INTR_TRG1_0
set SIO_CTRL1_SIO_INTR_TRG1_1 0x71010338
global SIO_CTRL1_SIO_INTR_TRG1_1
set SIO_CTRL1_SIO_INTR_TRG1_2 0x7101033c
global SIO_CTRL1_SIO_INTR_TRG1_2
set SIO_CTRL1_SIO_INTR_TRG1_3 0x71010340
global SIO_CTRL1_SIO_INTR_TRG1_3
set SIO_CTRL2_SIO_INTR_TRG1_0 0x71010440
global SIO_CTRL2_SIO_INTR_TRG1_0
set SIO_CTRL2_SIO_INTR_TRG1_1 0x71010444
global SIO_CTRL2_SIO_INTR_TRG1_1
set SIO_CTRL2_SIO_INTR_TRG1_2 0x71010448
global SIO_CTRL2_SIO_INTR_TRG1_2
set SIO_CTRL2_SIO_INTR_TRG1_3 0x7101044c
global SIO_CTRL2_SIO_INTR_TRG1_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INTR ***************************
# Currently interrupting SGPIOs
set SIO_CTRL0_SIO_INTR_0 0x71010238
global SIO_CTRL0_SIO_INTR_0
set SIO_CTRL0_SIO_INTR_1 0x7101023c
global SIO_CTRL0_SIO_INTR_1
set SIO_CTRL0_SIO_INTR_2 0x71010240
global SIO_CTRL0_SIO_INTR_2
set SIO_CTRL0_SIO_INTR_3 0x71010244
global SIO_CTRL0_SIO_INTR_3
set SIO_CTRL1_SIO_INTR_0 0x71010344
global SIO_CTRL1_SIO_INTR_0
set SIO_CTRL1_SIO_INTR_1 0x71010348
global SIO_CTRL1_SIO_INTR_1
set SIO_CTRL1_SIO_INTR_2 0x7101034c
global SIO_CTRL1_SIO_INTR_2
set SIO_CTRL1_SIO_INTR_3 0x71010350
global SIO_CTRL1_SIO_INTR_3
set SIO_CTRL2_SIO_INTR_0 0x71010450
global SIO_CTRL2_SIO_INTR_0
set SIO_CTRL2_SIO_INTR_1 0x71010454
global SIO_CTRL2_SIO_INTR_1
set SIO_CTRL2_SIO_INTR_2 0x71010458
global SIO_CTRL2_SIO_INTR_2
set SIO_CTRL2_SIO_INTR_3 0x7101045c
global SIO_CTRL2_SIO_INTR_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INTR_ENA ***********************
# SGPIO interrupt enable per port
set SIO_CTRL0_SIO_INTR_ENA 0x71010248
global SIO_CTRL0_SIO_INTR_ENA
set SIO_CTRL1_SIO_INTR_ENA 0x71010354
global SIO_CTRL1_SIO_INTR_ENA
set SIO_CTRL2_SIO_INTR_ENA 0x71010460
global SIO_CTRL2_SIO_INTR_ENA

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INTR_IDENT *********************
# Currently active interrupts
set SIO_CTRL0_SIO_INTR_ID_0 0x7101024c
global SIO_CTRL0_SIO_INTR_ID_0
set SIO_CTRL0_SIO_INTR_ID_1 0x71010250
global SIO_CTRL0_SIO_INTR_ID_1
set SIO_CTRL0_SIO_INTR_ID_2 0x71010254
global SIO_CTRL0_SIO_INTR_ID_2
set SIO_CTRL0_SIO_INTR_ID_3 0x71010258
global SIO_CTRL0_SIO_INTR_ID_3
set SIO_CTRL1_SIO_INTR_ID_0 0x71010358
global SIO_CTRL1_SIO_INTR_ID_0
set SIO_CTRL1_SIO_INTR_ID_1 0x7101035c
global SIO_CTRL1_SIO_INTR_ID_1
set SIO_CTRL1_SIO_INTR_ID_2 0x71010360
global SIO_CTRL1_SIO_INTR_ID_2
set SIO_CTRL1_SIO_INTR_ID_3 0x71010364
global SIO_CTRL1_SIO_INTR_ID_3
set SIO_CTRL2_SIO_INTR_ID_0 0x71010464
global SIO_CTRL2_SIO_INTR_ID_0
set SIO_CTRL2_SIO_INTR_ID_1 0x71010468
global SIO_CTRL2_SIO_INTR_ID_1
set SIO_CTRL2_SIO_INTR_ID_2 0x7101046c
global SIO_CTRL2_SIO_INTR_ID_2
set SIO_CTRL2_SIO_INTR_ID_3 0x71010470
global SIO_CTRL2_SIO_INTR_ID_3

#*********************************************************************
# Register group: DEVCPU_GCB:FAN_CTRL
# Fan controller configuration and status

#***** Register DEVCPU_GCB:FAN_CTRL:FAN_CFG ****************************
# Fan controller configuration
set FAN_CTRL_FAN_CFG 0x71010474
global FAN_CTRL_FAN_CFG

#***** Register DEVCPU_GCB:FAN_CTRL:FAN_CNT ****************************
# TACH counter
set FAN_CTRL_FAN_CNT 0x71010478
global FAN_CTRL_FAN_CNT

#*********************************************************************
# Register group: DEVCPU_GCB:MEMITGR
# Memory integrity monitor

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_CTRL ************************
# Monitor control
set MEMITGR_CTRL 0x7101047c
global MEMITGR_CTRL

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_STAT ************************
# Monitor status
set MEMITGR_STAT 0x71010480
global MEMITGR_STAT

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_INFO ************************
# Memory indication
set MEMITGR_INFO 0x71010484
global MEMITGR_INFO

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_IDX *************************
# Memory index
set MEMITGR_IDX 0x71010488
global MEMITGR_IDX

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DIV *************************
# Monitor speed
set MEMITGR_DIV 0x7101048c
global MEMITGR_DIV

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DBG *************************
# Debug registers
set MEMITGR_DBG 0x71010490
global MEMITGR_DBG

#*********************************************************************
# Register group: DEVCPU_GCB:VRAP
# VRAP controller

#***** Register DEVCPU_GCB:VRAP:VRAP_ACCESS_STAT ***********************
# VRAP events
set VRAP_ACCESS_STAT 0x71010494
global VRAP_ACCESS_STAT

#********************************************************************** 
#
# Target CFG
#
# VCore Configuration
#
#**********************************************************************

#*********************************************************************
# Register group: ICPU_CFG:CPU_SYSTEM_CTRL
# Configurations for the CPU system.

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GPR ***************************
# General Purpose Register
set SYS_GPR_0 0x70000000
global SYS_GPR_0
set SYS_GPR_1 0x70000004
global SYS_GPR_1
set SYS_GPR_2 0x70000008
global SYS_GPR_2
set SYS_GPR_3 0x7000000c
global SYS_GPR_3
set SYS_GPR_4 0x70000010
global SYS_GPR_4
set SYS_GPR_5 0x70000014
global SYS_GPR_5
set SYS_GPR_6 0x70000018
global SYS_GPR_6
set SYS_GPR_7 0x7000001c
global SYS_GPR_7

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:RESET *************************
# Reset Settings
set SYS_RESET 0x70000020
global SYS_RESET

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_CTRL ******************
# General control
set SYS_GEN_CTRL 0x70000024
global SYS_GEN_CTRL

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_STAT ******************
# General status
set SYS_GEN_STAT 0x70000028
global SYS_GEN_STAT

#*********************************************************************
# Register group: ICPU_CFG:PI_MST
# Parallel Interface Configuration

#***** Register ICPU_CFG:PI_MST:PI_MST_CFG *****************************
# PI Master Configuration
set PI_MST_CFG 0x7000002c
global PI_MST_CFG

#***** Register ICPU_CFG:PI_MST:PI_MST_CTRL ****************************
# PI Master Control Register
set PI_MST_CTRL 0x70000030
global PI_MST_CTRL

#***** Register ICPU_CFG:PI_MST:PI_MST_STATUS **************************
# PI Master Status Registers
set PI_MST_STATUS 0x70000034
global PI_MST_STATUS

#***** Register ICPU_CFG:PI_MST:PI_SLV_CFG *****************************
# PI Slave Configuration
set PI_MST_PI_SLV_CFG 0x70000038
global PI_MST_PI_SLV_CFG

#*********************************************************************
# Register group: ICPU_CFG:SPI_MST
# SPI boot master

#***** Register ICPU_CFG:SPI_MST:SPI_MST_CFG ***************************
# SPI boot master configuration
set SPI_MST_CFG 0x7000003c
global SPI_MST_CFG

#***** Register ICPU_CFG:SPI_MST:SPI_MST_STATUS ************************
# SPI boot master status
set SPI_MST_STATUS_0 0x70000040
global SPI_MST_STATUS_0
set SPI_MST_STATUS_1 0x70000044
global SPI_MST_STATUS_1
set SPI_MST_STATUS_2 0x70000048
global SPI_MST_STATUS_2
set SPI_MST_STATUS_3 0x7000004c
global SPI_MST_STATUS_3

#***** Register ICPU_CFG:SPI_MST:SW_MODE *******************************
# Manual control of the SPI interface
set SPI_MST_SW_MODE 0x70000050
global SPI_MST_SW_MODE

#*********************************************************************
# Register group: ICPU_CFG:MPU8051
# Configuration/status for the 8051

#***** Register ICPU_CFG:MPU8051:MPU8051_CFG ***************************
# 8051 configuration
set MPU8051_CFG 0x70000054
global MPU8051_CFG

#***** Register ICPU_CFG:MPU8051:MPU8051_STAT **************************
# 8051 status
set MPU8051_STAT 0x70000058
global MPU8051_STAT

#***** Register ICPU_CFG:MPU8051:MPU8051_MMAP **************************
# 8051 memory mapping mechanism
set MPU8051_MMAP 0x7000005c
global MPU8051_MMAP

#***** Register ICPU_CFG:MPU8051:MEMACC_CTRL ***************************
# 8051 memory load/examine configuration/status
set MPU8051_MEMACC_CTRL 0x70000060
global MPU8051_MEMACC_CTRL

#***** Register ICPU_CFG:MPU8051:MEMACC ********************************
# 8051 memory offset configuration
set MPU8051_MEMACC 0x70000064
global MPU8051_MEMACC

#***** Register ICPU_CFG:MPU8051:MEMACC_SBA ****************************
# SBA memory offset configuration
set MPU8051_MEMACC_SBA 0x70000068
global MPU8051_MEMACC_SBA

#***** Register ICPU_CFG:MPU8051:MPU8051_IROM **************************
# 8051 ROM configuration
set MPU8051_IROM 0x7000006c
global MPU8051_IROM

#*********************************************************************
# Register group: ICPU_CFG:INTR
# Interrupt controller

#***** Register ICPU_CFG:INTR:INTR_RAW *********************************
# Interrupt raw status
set INTR_RAW 0x70000070
global INTR_RAW

#***** Register ICPU_CFG:INTR:INTR_TRIGGER *****************************
# Interrupt trigger mode
set INTR_TRG_0 0x70000074
global INTR_TRG_0
set INTR_TRG_1 0x70000078
global INTR_TRG_1

#***** Register ICPU_CFG:INTR:INTR_FORCE *******************************
# Interrupt force sticky event
set INTR_FORCE 0x7000007c
global INTR_FORCE

#***** Register ICPU_CFG:INTR:INTR_STICKY ******************************
# Interrupt sticky status
set INTR_ST 0x70000080
global INTR_ST

#***** Register ICPU_CFG:INTR:INTR_BYPASS ******************************
# Interrupt bypass enable
set INTR_BYPASS 0x70000084
global INTR_BYPASS

#***** Register ICPU_CFG:INTR:INTR_ENA *********************************
# Interrupt enable
set INTR_ENA 0x70000088
global INTR_ENA

#***** Register ICPU_CFG:INTR:INTR_ENA_CLR *****************************
# Atomic clear of interrupt enable
set INTR_ENA_CLR 0x7000008c
global INTR_ENA_CLR

#***** Register ICPU_CFG:INTR:INTR_ENA_SET *****************************
# Atomic set of interrupt
set INTR_ENA_SET 0x70000090
global INTR_ENA_SET

#***** Register ICPU_CFG:INTR:INTR_IDENT *******************************
# Currently active interrupt sources
set INTR_ID 0x70000094
global INTR_ID

#***** Register ICPU_CFG:INTR:DST_INTR_MAP *****************************
# Mapping of source to destination interrupts
set INTR_DST_INTR_MAP_0 0x70000098
global INTR_DST_INTR_MAP_0
set INTR_DST_INTR_MAP_1 0x7000009c
global INTR_DST_INTR_MAP_1
set INTR_DST_INTR_MAP_2 0x700000a0
global INTR_DST_INTR_MAP_2
set INTR_DST_INTR_MAP_3 0x700000a4
global INTR_DST_INTR_MAP_3

#***** Register ICPU_CFG:INTR:DST_INTR_IDENT ***************************
# Currently active interrupt sources per destination
set INTR_DST_INTR_ID_0 0x700000a8
global INTR_DST_INTR_ID_0
set INTR_DST_INTR_ID_1 0x700000ac
global INTR_DST_INTR_ID_1
set INTR_DST_INTR_ID_2 0x700000b0
global INTR_DST_INTR_ID_2
set INTR_DST_INTR_ID_3 0x700000b4
global INTR_DST_INTR_ID_3

#***** Register ICPU_CFG:INTR:EXT_SRC_INTR_POL *************************
# External source interrupt polarity
set INTR_EXT_SRC_INTR_POL 0x700000b8
global INTR_EXT_SRC_INTR_POL

#***** Register ICPU_CFG:INTR:EXT_DST_INTR_POL *************************
# External destination interrupt polarity
set INTR_EXT_DST_INTR_POL 0x700000bc
global INTR_EXT_DST_INTR_POL

#***** Register ICPU_CFG:INTR:EXT_DST_INTR_DRV *************************
# External interrupt destination output drive mode
set INTR_EXT_DST_INTR_DRV 0x700000c0
global INTR_EXT_DST_INTR_DRV

#***** Register ICPU_CFG:INTR:DEV_INTR_POL *****************************
# Device interrupt polarity
set INTR_DEV_INTR_POL 0x700000c4
global INTR_DEV_INTR_POL

#***** Register ICPU_CFG:INTR:DEV_INTR_POL1 ****************************
# Device interrupt polarity
set INTR_DEV_INTR_POL1 0x700000c8
global INTR_DEV_INTR_POL1

#***** Register ICPU_CFG:INTR:DEV_INTR_RAW *****************************
# Device interrupt raw status
set INTR_DEV_INTR_RAW 0x700000cc
global INTR_DEV_INTR_RAW

#***** Register ICPU_CFG:INTR:DEV_INTR_RAW1 ****************************
# Device interrupt raw status
set INTR_DEV_INTR_RAW1 0x700000d0
global INTR_DEV_INTR_RAW1

#***** Register ICPU_CFG:INTR:DEV_INTR_TRIGGER *************************
# Device interrupt trigger mode
set INTR_DEV_INTR_TRG_0 0x700000d4
global INTR_DEV_INTR_TRG_0
set INTR_DEV_INTR_TRG_1 0x700000d8
global INTR_DEV_INTR_TRG_1

#***** Register ICPU_CFG:INTR:DEV_INTR_TRIGGER1 ************************
# Device interrupt trigger mode
set INTR_DEV_INTR_TRG1_0 0x700000dc
global INTR_DEV_INTR_TRG1_0
set INTR_DEV_INTR_TRG1_1 0x700000e0
global INTR_DEV_INTR_TRG1_1

#***** Register ICPU_CFG:INTR:DEV_INTR_STICKY **************************
# Device interrupt sticky status
set INTR_DEV_INTR_ST 0x700000e4
global INTR_DEV_INTR_ST

#***** Register ICPU_CFG:INTR:DEV_INTR_STICKY1 *************************
# Device interrupt sticky status
set INTR_DEV_INTR_ST1 0x700000e8
global INTR_DEV_INTR_ST1

#***** Register ICPU_CFG:INTR:DEV_INTR_BYPASS **************************
# Device interrupt bypass enable
set INTR_DEV_INTR_BYPASS 0x700000ec
global INTR_DEV_INTR_BYPASS

#***** Register ICPU_CFG:INTR:DEV_INTR_BYPASS1 *************************
# Device interrupt bypass enable
set INTR_DEV_INTR_BYPASS1 0x700000f0
global INTR_DEV_INTR_BYPASS1

#***** Register ICPU_CFG:INTR:DEV_INTR_ENA *****************************
# Device interrupt enable
set INTR_DEV_INTR_ENA 0x700000f4
global INTR_DEV_INTR_ENA

#***** Register ICPU_CFG:INTR:DEV_INTR_ENA1 ****************************
# Device interrupt enable
set INTR_DEV_INTR_ENA1 0x700000f8
global INTR_DEV_INTR_ENA1

#***** Register ICPU_CFG:INTR:DEV_INTR_IDENT ***************************
# Currently active device interrupts
set INTR_DEV_INTR_ID 0x700000fc
global INTR_DEV_INTR_ID

#***** Register ICPU_CFG:INTR:DEV_INTR_IDENT1 **************************
# Currently active device interrupts
set INTR_DEV_INTR_ID1 0x70000100
global INTR_DEV_INTR_ID1

#*********************************************************************
# Register group: ICPU_CFG:TIMERS
# Timers

#***** Register ICPU_CFG:TIMERS:WDT ************************************
# Watchdog timer
set TIMERS_WDT 0x70000104
global TIMERS_WDT

#***** Register ICPU_CFG:TIMERS:TIMER_TICK_DIV *************************
# Timer tick divider
set TIMER_TICK_DIV 0x70000108
global TIMER_TICK_DIV

#***** Register ICPU_CFG:TIMERS:TIMER_VALUE ****************************
# Timer value
set TIMER_VALUE_0 0x7000010c
global TIMER_VALUE_0
set TIMER_VALUE_1 0x70000110
global TIMER_VALUE_1
set TIMER_VALUE_2 0x70000114
global TIMER_VALUE_2

#***** Register ICPU_CFG:TIMERS:TIMER_RELOAD_VALUE *********************
# Timer reload value
set TIMER_RELOAD_VALUE_0 0x70000118
global TIMER_RELOAD_VALUE_0
set TIMER_RELOAD_VALUE_1 0x7000011c
global TIMER_RELOAD_VALUE_1
set TIMER_RELOAD_VALUE_2 0x70000120
global TIMER_RELOAD_VALUE_2

#***** Register ICPU_CFG:TIMERS:TIMER_CTRL *****************************
# Timer control
set TIMER_CTRL_0 0x70000124
global TIMER_CTRL_0
set TIMER_CTRL_1 0x70000128
global TIMER_CTRL_1
set TIMER_CTRL_2 0x7000012c
global TIMER_CTRL_2

#*********************************************************************
# Register group: ICPU_CFG:MEMCTRL
# DDR2/3 memory controller

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CTRL **************************
# DDR2/3 control
set MC_CTRL 0x70000130
global MC_CTRL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CFG ***************************
# DDR2/3 configuration
set MC_CFG 0x70000134
global MC_CFG

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_STAT **************************
# DDR2/3 status
set MC_STAT 0x70000138
global MC_STAT

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_REF_PERIOD ********************
# Refresh configuration
set MC_REF_PERIOD 0x7000013c
global MC_REF_PERIOD

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_ZQCAL *************************
# DDR3 ZQ-calibration
set MC_ZQCAL 0x70000140
global MC_ZQCAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING0 ***********************
# Timing configuration
set MC_TIMING0 0x70000144
global MC_TIMING0

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING1 ***********************
# Timing configuration
set MC_TIMING1 0x70000148
global MC_TIMING1

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING2 ***********************
# Timing configuration
set MC_TIMING2 0x7000014c
global MC_TIMING2

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING3 ***********************
# Timing configuration
set MC_TIMING3 0x70000150
global MC_TIMING3

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING4 ***********************
# Timing configuration
set MC_TIMING4 0x70000154
global MC_TIMING4

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR0_VAL ***********************
# Mode register 0 value
set MC_MR0_VAL 0x70000158
global MC_MR0_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR1_VAL ***********************
# Mode register 1 value
set MC_MR1_VAL 0x7000015c
global MC_MR1_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR2_VAL ***********************
# Mode register 2 value
set MC_MR2_VAL 0x70000160
global MC_MR2_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR3_VAL ***********************
# Mode register 3 value
set MC_MR3_VAL 0x70000164
global MC_MR3_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TERMRES_CTRL ******************
# On-die-termination configuration
set MC_TERMRES_CTRL 0x70000168
global MC_TERMRES_CTRL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DFT ***************************
# Design for test features
set MC_DFT 0x7000016c
global MC_DFT

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_DLY ***********************
# DQS window configuration
set MC_DQS_0 0x70000170
global MC_DQS_0
set MC_DQS_1 0x70000174
global MC_DQS_1

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_AUTO **********************
# DQS window automatic drift detect/ajust
set MC_DQS_AUTO_0 0x70000178
global MC_DQS_AUTO_0
set MC_DQS_AUTO_1 0x7000017c
global MC_DQS_AUTO_1

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_CFG ****************************
# SSTL configuration
set MC_MEMPHY_CFG 0x70000180
global MC_MEMPHY_CFG

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DFT ****************************
# Design for test features
set MC_MEMPHY_DFT 0x70000184
global MC_MEMPHY_DFT

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG0 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG0_0 0x70000188
global MC_MEMPHY_DLLCFG0_0
set MC_MEMPHY_DLLCFG0_1 0x7000018c
global MC_MEMPHY_DLLCFG0_1
set MC_MEMPHY_DLLCFG0_2 0x70000190
global MC_MEMPHY_DLLCFG0_2

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG1 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG1_0 0x70000194
global MC_MEMPHY_DLLCFG1_0
set MC_MEMPHY_DLLCFG1_1 0x70000198
global MC_MEMPHY_DLLCFG1_1
set MC_MEMPHY_DLLCFG1_2 0x7000019c
global MC_MEMPHY_DLLCFG1_2

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DQ_DLY_TRM *********************
# DQ window configuration
set MC_MEMPHY_DQ_DLY_TRM_0 0x700001a0
global MC_MEMPHY_DQ_DLY_TRM_0
set MC_MEMPHY_DQ_DLY_TRM_1 0x700001a4
global MC_MEMPHY_DQ_DLY_TRM_1

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL ***************************
# SSTL drive-strength calibration
set MC_MEMPHY_ZCAL 0x700001a8
global MC_MEMPHY_ZCAL

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_STAT **********************
# SSTL drive-strength status
set MC_MEMPHY_ZCAL_STAT 0x700001ac
global MC_MEMPHY_ZCAL_STAT

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_OVR ***********************
# SSTL drive-strength override
set MC_MEMPHY_ZCAL_OVR 0x700001b0
global MC_MEMPHY_ZCAL_OVR

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_FORCE *********************
# SSTL drive-strength force
set MC_MEMPHY_ZCAL_FORCE 0x700001b4
global MC_MEMPHY_ZCAL_FORCE

#*********************************************************************
# Register group: ICPU_CFG:TWI_DELAY
# TWI hold time configuration

#***** Register ICPU_CFG:TWI_DELAY:TWI_CONFIG **************************
# TWI hold time configuration
set TWI_DELAY_TWI_CONFIG 0x700001b8
global TWI_DELAY_TWI_CONFIG

#*********************************************************************
# Register group: ICPU_CFG:TWI_SPIKE_FILTER
# TWI spike filter configuration

#***** Register ICPU_CFG:TWI_SPIKE_FILTER:TWI_SPIKE_FILTER_CFG *********
# TWI spike filter configuration
set TWI_SPIKE_FILTER_CFG 0x700001bc
global TWI_SPIKE_FILTER_CFG

#*********************************************************************
# Register group: ICPU_CFG:FDMA
# Frame DMA

#***** Register ICPU_CFG:FDMA:FDMA_DCB_LLP *****************************
# Pointer to next DCB
set FDMA_DCB_LLP_0 0x700001c0
global FDMA_DCB_LLP_0
set FDMA_DCB_LLP_1 0x700001c4
global FDMA_DCB_LLP_1
set FDMA_DCB_LLP_2 0x700001c8
global FDMA_DCB_LLP_2
set FDMA_DCB_LLP_3 0x700001cc
global FDMA_DCB_LLP_3
set FDMA_DCB_LLP_4 0x700001d0
global FDMA_DCB_LLP_4
set FDMA_DCB_LLP_5 0x700001d4
global FDMA_DCB_LLP_5
set FDMA_DCB_LLP_6 0x700001d8
global FDMA_DCB_LLP_6
set FDMA_DCB_LLP_7 0x700001dc
global FDMA_DCB_LLP_7
set FDMA_DCB_LLP_8 0x700001e0
global FDMA_DCB_LLP_8
set FDMA_DCB_LLP_9 0x700001e4
global FDMA_DCB_LLP_9

#***** Register ICPU_CFG:FDMA:FDMA_DCB_DATAP ***************************
# Pointer to data block
set FDMA_DCB_DATAP_0 0x700001e8
global FDMA_DCB_DATAP_0
set FDMA_DCB_DATAP_1 0x700001ec
global FDMA_DCB_DATAP_1
set FDMA_DCB_DATAP_2 0x700001f0
global FDMA_DCB_DATAP_2
set FDMA_DCB_DATAP_3 0x700001f4
global FDMA_DCB_DATAP_3
set FDMA_DCB_DATAP_4 0x700001f8
global FDMA_DCB_DATAP_4
set FDMA_DCB_DATAP_5 0x700001fc
global FDMA_DCB_DATAP_5
set FDMA_DCB_DATAP_6 0x70000200
global FDMA_DCB_DATAP_6
set FDMA_DCB_DATAP_7 0x70000204
global FDMA_DCB_DATAP_7
set FDMA_DCB_DATAP_8 0x70000208
global FDMA_DCB_DATAP_8
set FDMA_DCB_DATAP_9 0x7000020c
global FDMA_DCB_DATAP_9

#***** Register ICPU_CFG:FDMA:FDMA_DCB_DATAL ***************************
# Length of data block
set FDMA_DCB_DATAL_0 0x70000210
global FDMA_DCB_DATAL_0
set FDMA_DCB_DATAL_1 0x70000214
global FDMA_DCB_DATAL_1
set FDMA_DCB_DATAL_2 0x70000218
global FDMA_DCB_DATAL_2
set FDMA_DCB_DATAL_3 0x7000021c
global FDMA_DCB_DATAL_3
set FDMA_DCB_DATAL_4 0x70000220
global FDMA_DCB_DATAL_4
set FDMA_DCB_DATAL_5 0x70000224
global FDMA_DCB_DATAL_5
set FDMA_DCB_DATAL_6 0x70000228
global FDMA_DCB_DATAL_6
set FDMA_DCB_DATAL_7 0x7000022c
global FDMA_DCB_DATAL_7
set FDMA_DCB_DATAL_8 0x70000230
global FDMA_DCB_DATAL_8
set FDMA_DCB_DATAL_9 0x70000234
global FDMA_DCB_DATAL_9

#***** Register ICPU_CFG:FDMA:FDMA_DCB_STAT ****************************
# Status word
set FDMA_DCB_STAT_0 0x70000238
global FDMA_DCB_STAT_0
set FDMA_DCB_STAT_1 0x7000023c
global FDMA_DCB_STAT_1
set FDMA_DCB_STAT_2 0x70000240
global FDMA_DCB_STAT_2
set FDMA_DCB_STAT_3 0x70000244
global FDMA_DCB_STAT_3
set FDMA_DCB_STAT_4 0x70000248
global FDMA_DCB_STAT_4
set FDMA_DCB_STAT_5 0x7000024c
global FDMA_DCB_STAT_5
set FDMA_DCB_STAT_6 0x70000250
global FDMA_DCB_STAT_6
set FDMA_DCB_STAT_7 0x70000254
global FDMA_DCB_STAT_7
set FDMA_DCB_STAT_8 0x70000258
global FDMA_DCB_STAT_8
set FDMA_DCB_STAT_9 0x7000025c
global FDMA_DCB_STAT_9

#***** Register ICPU_CFG:FDMA:FDMA_DCB_LLP_PREV ************************
# Pointer to current DCB
set FDMA_DCB_LLP_PREV_0 0x70000260
global FDMA_DCB_LLP_PREV_0
set FDMA_DCB_LLP_PREV_1 0x70000264
global FDMA_DCB_LLP_PREV_1
set FDMA_DCB_LLP_PREV_2 0x70000268
global FDMA_DCB_LLP_PREV_2
set FDMA_DCB_LLP_PREV_3 0x7000026c
global FDMA_DCB_LLP_PREV_3
set FDMA_DCB_LLP_PREV_4 0x70000270
global FDMA_DCB_LLP_PREV_4
set FDMA_DCB_LLP_PREV_5 0x70000274
global FDMA_DCB_LLP_PREV_5
set FDMA_DCB_LLP_PREV_6 0x70000278
global FDMA_DCB_LLP_PREV_6
set FDMA_DCB_LLP_PREV_7 0x7000027c
global FDMA_DCB_LLP_PREV_7
set FDMA_DCB_LLP_PREV_8 0x70000280
global FDMA_DCB_LLP_PREV_8
set FDMA_DCB_LLP_PREV_9 0x70000284
global FDMA_DCB_LLP_PREV_9

#***** Register ICPU_CFG:FDMA:FDMA_CH_STAT *****************************
# Current channel status
set FDMA_CH_STAT 0x70000288
global FDMA_CH_STAT

#***** Register ICPU_CFG:FDMA:FDMA_CH_SAFE *****************************
# Current channel safe-status
set FDMA_CH_SAFE 0x7000028c
global FDMA_CH_SAFE

#***** Register ICPU_CFG:FDMA:FDMA_CH_ACTIVATE *************************
# Activate specific channels
set FDMA_CH_ACTIVATE 0x70000290
global FDMA_CH_ACTIVATE

#***** Register ICPU_CFG:FDMA:FDMA_CH_DISABLE **************************
# Disable specific channels
set FDMA_CH_DISABLE 0x70000294
global FDMA_CH_DISABLE

#***** Register ICPU_CFG:FDMA:FDMA_CH_FORCEDIS *************************
# Ungraceful disable of specific channels
set FDMA_CH_FORCEDIS 0x70000298
global FDMA_CH_FORCEDIS

#***** Register ICPU_CFG:FDMA:FDMA_CH_CNT ******************************
# Channel counters
set FDMA_CH_CNT_0 0x7000029c
global FDMA_CH_CNT_0
set FDMA_CH_CNT_1 0x700002a0
global FDMA_CH_CNT_1
set FDMA_CH_CNT_2 0x700002a4
global FDMA_CH_CNT_2
set FDMA_CH_CNT_3 0x700002a8
global FDMA_CH_CNT_3
set FDMA_CH_CNT_4 0x700002ac
global FDMA_CH_CNT_4
set FDMA_CH_CNT_5 0x700002b0
global FDMA_CH_CNT_5
set FDMA_CH_CNT_6 0x700002b4
global FDMA_CH_CNT_6
set FDMA_CH_CNT_7 0x700002b8
global FDMA_CH_CNT_7
set FDMA_CH_CNT_8 0x700002bc
global FDMA_CH_CNT_8
set FDMA_CH_CNT_9 0x700002c0
global FDMA_CH_CNT_9

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_CNT ********************
# Injection channel token counter
set FDMA_CH_INJ_TOKEN_CNT_0 0x700002c4
global FDMA_CH_INJ_TOKEN_CNT_0
set FDMA_CH_INJ_TOKEN_CNT_1 0x700002c8
global FDMA_CH_INJ_TOKEN_CNT_1
set FDMA_CH_INJ_TOKEN_CNT_2 0x700002cc
global FDMA_CH_INJ_TOKEN_CNT_2
set FDMA_CH_INJ_TOKEN_CNT_3 0x700002d0
global FDMA_CH_INJ_TOKEN_CNT_3
set FDMA_CH_INJ_TOKEN_CNT_4 0x700002d4
global FDMA_CH_INJ_TOKEN_CNT_4
set FDMA_CH_INJ_TOKEN_CNT_5 0x700002d8
global FDMA_CH_INJ_TOKEN_CNT_5
set FDMA_CH_INJ_TOKEN_CNT_6 0x700002dc
global FDMA_CH_INJ_TOKEN_CNT_6
set FDMA_CH_INJ_TOKEN_CNT_7 0x700002e0
global FDMA_CH_INJ_TOKEN_CNT_7

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_TICK_RLD ***************
# Injection channel token tick counter reload value
set FDMA_CH_INJ_TOKEN_TICK_RLD_0 0x700002e4
global FDMA_CH_INJ_TOKEN_TICK_RLD_0
set FDMA_CH_INJ_TOKEN_TICK_RLD_1 0x700002e8
global FDMA_CH_INJ_TOKEN_TICK_RLD_1
set FDMA_CH_INJ_TOKEN_TICK_RLD_2 0x700002ec
global FDMA_CH_INJ_TOKEN_TICK_RLD_2
set FDMA_CH_INJ_TOKEN_TICK_RLD_3 0x700002f0
global FDMA_CH_INJ_TOKEN_TICK_RLD_3
set FDMA_CH_INJ_TOKEN_TICK_RLD_4 0x700002f4
global FDMA_CH_INJ_TOKEN_TICK_RLD_4
set FDMA_CH_INJ_TOKEN_TICK_RLD_5 0x700002f8
global FDMA_CH_INJ_TOKEN_TICK_RLD_5
set FDMA_CH_INJ_TOKEN_TICK_RLD_6 0x700002fc
global FDMA_CH_INJ_TOKEN_TICK_RLD_6
set FDMA_CH_INJ_TOKEN_TICK_RLD_7 0x70000300
global FDMA_CH_INJ_TOKEN_TICK_RLD_7

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_TICK_CNT ***************
# Injection channel token tick counter
set FDMA_CH_INJ_TOKEN_TICK_CNT_0 0x70000304
global FDMA_CH_INJ_TOKEN_TICK_CNT_0
set FDMA_CH_INJ_TOKEN_TICK_CNT_1 0x70000308
global FDMA_CH_INJ_TOKEN_TICK_CNT_1
set FDMA_CH_INJ_TOKEN_TICK_CNT_2 0x7000030c
global FDMA_CH_INJ_TOKEN_TICK_CNT_2
set FDMA_CH_INJ_TOKEN_TICK_CNT_3 0x70000310
global FDMA_CH_INJ_TOKEN_TICK_CNT_3
set FDMA_CH_INJ_TOKEN_TICK_CNT_4 0x70000314
global FDMA_CH_INJ_TOKEN_TICK_CNT_4
set FDMA_CH_INJ_TOKEN_TICK_CNT_5 0x70000318
global FDMA_CH_INJ_TOKEN_TICK_CNT_5
set FDMA_CH_INJ_TOKEN_TICK_CNT_6 0x7000031c
global FDMA_CH_INJ_TOKEN_TICK_CNT_6
set FDMA_CH_INJ_TOKEN_TICK_CNT_7 0x70000320
global FDMA_CH_INJ_TOKEN_TICK_CNT_7

#***** Register ICPU_CFG:FDMA:FDMA_EVT_ERR *****************************
# Error event
set FDMA_EVT_ERR 0x70000324
global FDMA_EVT_ERR

#***** Register ICPU_CFG:FDMA:FDMA_EVT_ERR_CODE ************************
# Additional error information
set FDMA_EVT_ERR_CODE 0x70000328
global FDMA_EVT_ERR_CODE

#***** Register ICPU_CFG:FDMA:FDMA_INTR_LLP ****************************
# LLP-event
set FDMA_INTR_LLP 0x7000032c
global FDMA_INTR_LLP

#***** Register ICPU_CFG:FDMA:FDMA_INTR_LLP_ENA ************************
# LLP-event interrupt enable
set FDMA_INTR_LLP_ENA 0x70000330
global FDMA_INTR_LLP_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_FRM ****************************
# FRM-event
set FDMA_INTR_FRM 0x70000334
global FDMA_INTR_FRM

#***** Register ICPU_CFG:FDMA:FDMA_INTR_FRM_ENA ************************
# FRM-event interrupt enable
set FDMA_INTR_FRM_ENA 0x70000338
global FDMA_INTR_FRM_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_SIG ****************************
# SIG-event
set FDMA_INTR_SIG 0x7000033c
global FDMA_INTR_SIG

#***** Register ICPU_CFG:FDMA:FDMA_INTR_SIG_ENA ************************
# SIG-event interrupt enable
set FDMA_INTR_SIG_ENA 0x70000340
global FDMA_INTR_SIG_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_ENA ****************************
# Channel interrupt enable
set FDMA_INTR_ENA 0x70000344
global FDMA_INTR_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_IDENT **************************
# Currently interrupting channels
set FDMA_INTR_ID 0x70000348
global FDMA_INTR_ID

#***** Register ICPU_CFG:FDMA:FDMA_CH_CFG ******************************
# Channel specific configurations
set FDMA_CH_CFG_0 0x7000034c
global FDMA_CH_CFG_0
set FDMA_CH_CFG_1 0x70000350
global FDMA_CH_CFG_1
set FDMA_CH_CFG_2 0x70000354
global FDMA_CH_CFG_2
set FDMA_CH_CFG_3 0x70000358
global FDMA_CH_CFG_3
set FDMA_CH_CFG_4 0x7000035c
global FDMA_CH_CFG_4
set FDMA_CH_CFG_5 0x70000360
global FDMA_CH_CFG_5
set FDMA_CH_CFG_6 0x70000364
global FDMA_CH_CFG_6
set FDMA_CH_CFG_7 0x70000368
global FDMA_CH_CFG_7
set FDMA_CH_CFG_8 0x7000036c
global FDMA_CH_CFG_8
set FDMA_CH_CFG_9 0x70000370
global FDMA_CH_CFG_9

#***** Register ICPU_CFG:FDMA:FDMA_GCFG ********************************
# General FDMA configurations
set FDMA_GCFG 0x70000374
global FDMA_GCFG

#***** Register ICPU_CFG:FDMA:FDMA_GSTAT *******************************
# General FDMA status
set FDMA_GSTAT 0x70000378
global FDMA_GSTAT

#***** Register ICPU_CFG:FDMA:FDMA_IDLECNT *****************************
# FDMA idle Counter
set FDMA_IDLECNT 0x7000037c
global FDMA_IDLECNT

#***** Register ICPU_CFG:FDMA:FDMA_CONST *******************************
# Constants for this FDMA implementation.
set FDMA_CONST 0x70000380
global FDMA_CONST

#*********************************************************************
# Register group: ICPU_CFG:PCIE
# PCIe endpoint

#***** Register ICPU_CFG:PCIE:PCIE_CTRL ********************************
# PCIe endpoint control
set PCIE_CTRL 0x70000384
global PCIE_CTRL

#***** Register ICPU_CFG:PCIE:PCIE_CFG *********************************
# PCIe endpoint configuration
set PCIE_CFG 0x70000388
global PCIE_CFG

#***** Register ICPU_CFG:PCIE:PCIE_STAT ********************************
# PCIe endpoint status
set PCIE_STAT 0x7000038c
global PCIE_STAT

#***** Register ICPU_CFG:PCIE:PCIE_AUX_CFG *****************************
# Auxiliary power configuration
set PCIE_AUX_CFG 0x70000390
global PCIE_AUX_CFG

#***** Register ICPU_CFG:PCIE:PCIE_DBG_STAT ****************************
# PCIe endpoint debug status
set PCIE_DBG_STAT 0x70000394
global PCIE_DBG_STAT

#***** Register ICPU_CFG:PCIE:PCIEMST_REPLY_INFO ***********************
# Additional inbound reply information
set PCIE_PCIEMST_REPLY_INFO 0x70000398
global PCIE_PCIEMST_REPLY_INFO

#***** Register ICPU_CFG:PCIE:PCIEMST_BAR1_OFFSET **********************
# BAR1 offset into SBA address space
set PCIE_PCIEMST_BAR1_OFFSET 0x7000039c
global PCIE_PCIEMST_BAR1_OFFSET

#***** Register ICPU_CFG:PCIE:PCIEMST_BAR1_MASK ************************
# BAR1 offset mask into SBA address space
set PCIE_PCIEMST_BAR1_MASK 0x700003a0
global PCIE_PCIEMST_BAR1_MASK

#***** Register ICPU_CFG:PCIE:PCIEMST_BAR2_OFFSET **********************
# BAR2 offset into SBA address space
set PCIE_PCIEMST_BAR2_OFFSET 0x700003a4
global PCIE_PCIEMST_BAR2_OFFSET

#***** Register ICPU_CFG:PCIE:PCIEMST_BAR2_MASK ************************
# BAR2 offset mask into SBA address space
set PCIE_PCIEMST_BAR2_MASK 0x700003a8
global PCIE_PCIEMST_BAR2_MASK

#***** Register ICPU_CFG:PCIE:PCIESLV_FDMA *****************************
# FDMA access into PCIe address space
set PCIE_PCIESLV_FDMA 0x700003ac
global PCIE_PCIESLV_FDMA

#***** Register ICPU_CFG:PCIE:PCIESLV_SBA ******************************
# SBA access into PCIe address space
set PCIE_PCIESLV_SBA 0x700003b0
global PCIE_PCIESLV_SBA

#***** Register ICPU_CFG:PCIE:PCIEPCS_CFG ******************************
# PCIe PCS configuration
set PCIE_PCIEPCS_CFG 0x700003b4
global PCIE_PCIEPCS_CFG

#***** Register ICPU_CFG:PCIE:PCIEPCS_BEACON ***************************
# PCIe beacon parameters
set PCIE_PCIEPCS_BEACON 0x700003b8
global PCIE_PCIEPCS_BEACON

#***** Register ICPU_CFG:PCIE:PCIE_INTR ********************************
# PCIe events
set PCIE_INTR 0x700003bc
global PCIE_INTR

#***** Register ICPU_CFG:PCIE:PCIE_INTR_ENA ****************************
# PCIe interrupt enable
set PCIE_INTR_ENA 0x700003c0
global PCIE_INTR_ENA

#***** Register ICPU_CFG:PCIE:PCIE_INTR_IDENT **************************
# Currently active PCIe interrupts
set PCIE_INTR_ID 0x700003c4
global PCIE_INTR_ID

#***** Register ICPU_CFG:PCIE:PCIE_INTR_COMMON_CFG *********************
# PCIe outbound interrupt configuration
set PCIE_INTR_COMMON_CFG 0x700003c8
global PCIE_INTR_COMMON_CFG

#***** Register ICPU_CFG:PCIE:PCIE_INTR_CFG ****************************
# PCIe outbound MSI interrupt configuration
set PCIE_INTR_CFG_0 0x700003cc
global PCIE_INTR_CFG_0
set PCIE_INTR_CFG_1 0x700003d0
global PCIE_INTR_CFG_1

#***** Register ICPU_CFG:PCIE:PCIE_INTR_STAT ***************************
# PCIe outbound MSI interrupt status
set PCIE_INTR_STAT_0 0x700003d4
global PCIE_INTR_STAT_0
set PCIE_INTR_STAT_1 0x700003d8
global PCIE_INTR_STAT_1

#*********************************************************************
# Register group: ICPU_CFG:MANUAL_XTRINJ
# Manual extraction and injection via FDMA

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_XTR **********************
# Manual extraction replicated register-array
set MANUAL_XTRINJ_XTR 0x70004000
global MANUAL_XTRINJ_XTR

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_INJ **********************
# Manual injection replicated register-array
set MANUAL_XTRINJ_INJ 0x70008000
global MANUAL_XTRINJ_INJ

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_CFG **********************
# Manual extraction and injection configuration
set MANUAL_XTRINJ_CFG 0x7000c000
global MANUAL_XTRINJ_CFG

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_INTR *********************
# Manual extraction and injection interrupt indications
set MANUAL_XTRINJ_INTR 0x7000c004
global MANUAL_XTRINJ_INTR

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_INTR_ENA *****************
# Manual extraction and injection interrupt enables
set MANUAL_XTRINJ_INTR_ENA 0x7000c008
global MANUAL_XTRINJ_INTR_ENA

