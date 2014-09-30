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
# DEVCPU_ORG           0x60000000
# DEVCPU_GCB           0x60010000
# DEVCPU_QS            0x60020000
# DEVCPU_PI            0x60030000
# DEV1G_0              0x60040000
# DEV1G_1              0x60050000
# DEV1G_2              0x60060000
# DEV1G_3              0x60070000
# DEV1G_4              0x60080000
# DEV1G_5              0x60090000
# DEV1G_6              0x600a0000
# DEV1G_7              0x600b0000
# DEV1G_8              0x600c0000
# DEV1G_9              0x600d0000
# DEV1G_10             0x600e0000
# DEV1G_11             0x600f0000
# DEV1G_12             0x60100000
# DEV1G_13             0x60110000
# DEV1G_14             0x60120000
# DEV1G_15             0x60130000
# DEV1G_16             0x60140000
# DEV1G_17             0x60150000
# DEV2G5_0             0x60160000
# DEV2G5_1             0x60170000
# DEV2G5_2             0x60180000
# DEV2G5_3             0x60190000
# DEV2G5_4             0x601a0000
# DEV2G5_5             0x601b0000
# DEV2G5_6             0x601c0000
# DEV2G5_7             0x601d0000
# DEV2G5_8             0x601e0000
# DEVRGMII_0           0x601f0000
# DEV10G_0             0x60200000
# DEV10G_1             0x60210000
# DEV10G_2             0x60220000
# DEV10G_3             0x60230000
# ASM                  0x60240000
# ANA_CL               0x60250000
# LRN                  0x60260000
# VCAP_IS0             0x60270000
# VCAP_IS1             0x60280000
# VCAP_IS2             0x60290000
# ARB                  0x602a0000
# SCH                  0x602b0000
# DSM                  0x602c0000
# HSIO                 0x602d0000
# VCAP_ES0             0x602e0000
# ANA_L3               0x60800000
# ANA_L2               0x60900000
# ANA_AC               0x60a00000
# IQS                  0x60b00000
# OQS                  0x60c00000
# REW                  0x60d00000
# CFG                  0x70000000
# UART                 0x70100000
# TWI                  0x70100400
# SBA                  0x70110000
# DMAC                 0x70110800
#

#********************************************************************** 
#
# Target DEVCPU_GCB
#
# General configuration block.
#
#**********************************************************************

#*********************************************************************
# Register group: DEVCPU_GCB:CHIP_REGS
# General registers

#***** Register DEVCPU_GCB:CHIP_REGS:GENERAL_PURPOSE *******************
# general purpose register
set CHIP_REGS_GEN_PURPOSE 0x60010000
global CHIP_REGS_GEN_PURPOSE

#***** Register DEVCPU_GCB:CHIP_REGS:SI ********************************
# SI registers
set CHIP_REGS_SI 0x60010004
global CHIP_REGS_SI

#***** Register DEVCPU_GCB:CHIP_REGS:CHIP_ID ***************************
# Chip Id
set CHIP_REGS_CHIP_ID 0x60010008
global CHIP_REGS_CHIP_ID

#***** Register DEVCPU_GCB:CHIP_REGS:HW_STAT ***************************
# Startup state of the chip
set CHIP_REGS_HW_STAT 0x6001000c
global CHIP_REGS_HW_STAT

#*********************************************************************
# Register group: DEVCPU_GCB:DBG
# Debug registers

#***** Register DEVCPU_GCB:DBG:QS_DBG **********************************
# DBG
set DBG_QS_DBG 0x60010010
global DBG_QS_DBG

#*********************************************************************
# Register group: DEVCPU_GCB:SW_REGS
# Registers for software/software interaction

#***** Register DEVCPU_GCB:SW_REGS:SEMA_INTR_ENA ***********************
# Semaphore SW interrupt enable
set SW_REGS_SEMA_INTR_ENA 0x60010014
global SW_REGS_SEMA_INTR_ENA

#***** Register DEVCPU_GCB:SW_REGS:SEMA_INTR_ENA_CLR *******************
# Clear of semaphore SW interrupt enables
set SW_REGS_SEMA_INTR_ENA_CLR 0x60010018
global SW_REGS_SEMA_INTR_ENA_CLR

#***** Register DEVCPU_GCB:SW_REGS:SEMA_INTR_ENA_SET *******************
# Masking of semaphore
set SW_REGS_SEMA_INTR_ENA_SET 0x6001001c
global SW_REGS_SEMA_INTR_ENA_SET

#***** Register DEVCPU_GCB:SW_REGS:SEMA ********************************
# Semaphore register
set SW_REGS_SEMA_0 0x60010020
global SW_REGS_SEMA_0
set SW_REGS_SEMA_1 0x60010024
global SW_REGS_SEMA_1
set SW_REGS_SEMA_2 0x60010028
global SW_REGS_SEMA_2
set SW_REGS_SEMA_3 0x6001002c
global SW_REGS_SEMA_3
set SW_REGS_SEMA_4 0x60010030
global SW_REGS_SEMA_4
set SW_REGS_SEMA_5 0x60010034
global SW_REGS_SEMA_5
set SW_REGS_SEMA_6 0x60010038
global SW_REGS_SEMA_6
set SW_REGS_SEMA_7 0x6001003c
global SW_REGS_SEMA_7

#***** Register DEVCPU_GCB:SW_REGS:SEMA_FREE ***************************
# Semaphore status
set SW_REGS_SEMA_FREE 0x60010040
global SW_REGS_SEMA_FREE

#***** Register DEVCPU_GCB:SW_REGS:SW_INTR *****************************
# Manually assert software interrupt
set SW_REGS_SW_INTR 0x60010044
global SW_REGS_SW_INTR

#***** Register DEVCPU_GCB:SW_REGS:MAILBOX *****************************
# Mailbox register
set SW_REGS_MAILBOX 0x60010048
global SW_REGS_MAILBOX

#***** Register DEVCPU_GCB:SW_REGS:MAILBOX_CLR *************************
# Mailbox register atomic clear
set SW_REGS_MAILBOX_CLR 0x6001004c
global SW_REGS_MAILBOX_CLR

#***** Register DEVCPU_GCB:SW_REGS:MAILBOX_SET *************************
# Mailbox register atomic set
set SW_REGS_MAILBOX_SET 0x60010050
global SW_REGS_MAILBOX_SET

#*********************************************************************
# Register group: DEVCPU_GCB:VCORE_ACCESS
# Registers for access to the VCore SBA

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_CTRL ************************
# Control register for VCore accesses
set VCORE_ACCESS_VA_CTRL 0x60010054
global VCORE_ACCESS_VA_CTRL

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_ADDR ************************
# Address register for VCore accesses
set VCORE_ACCESS_VA_ADDR 0x60010058
global VCORE_ACCESS_VA_ADDR

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA ************************
# Data register for VCore accesses
set VCORE_ACCESS_VA_DATA 0x6001005c
global VCORE_ACCESS_VA_DATA

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INCR *******************
# Data register for VCore accesses (w. auto increment of address)
set VCORE_ACCESS_VA_DATA_INCR 0x60010060
global VCORE_ACCESS_VA_DATA_INCR

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INERT ******************
# Data register for VCore accesses (will not initiate access)
set VCORE_ACCESS_VA_DATA_INERT 0x60010064
global VCORE_ACCESS_VA_DATA_INERT

#*********************************************************************
# Register group: DEVCPU_GCB:GPIO
# GPIO registers

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_SET ***************************
# GPIO output set
set GPIO_OUT_SET 0x60010068
global GPIO_OUT_SET

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_CLR ***************************
# GPIO output clear
set GPIO_OUT_CLR 0x6001006c
global GPIO_OUT_CLR

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT *******************************
# GPIO output
set GPIO_OUT 0x60010070
global GPIO_OUT

#***** Register DEVCPU_GCB:GPIO:GPIO_IN ********************************
# GPIO input
set GPIO_IN 0x60010074
global GPIO_IN

#***** Register DEVCPU_GCB:GPIO:GPIO_OE ********************************
# GPIO pin direction
set GPIO_OE 0x60010078
global GPIO_OE

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR ******************************
# GPIO interrupt
set GPIO_INTR 0x6001007c
global GPIO_INTR

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_ENA **************************
# GPIO interrupt enable
set GPIO_INTR_ENA 0x60010080
global GPIO_INTR_ENA

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_IDENT ************************
# GPIO interrupt identity
set GPIO_INTR_ID 0x60010084
global GPIO_INTR_ID

#***** Register DEVCPU_GCB:GPIO:GPIO_ALT *******************************
# GPIO alternate functions
set GPIO_ALT_0 0x60010088
global GPIO_ALT_0
set GPIO_ALT_1 0x6001008c
global GPIO_ALT_1

#*********************************************************************
# Register group: DEVCPU_GCB:DEVCPU_RST_REGS
# Control of resets in the cip

#***** Register DEVCPU_GCB:DEVCPU_RST_REGS:SOFT_CHIP_RST ***************
# Reset part or the whole chip
set DEVCPU_RST_REGS_SOFT_CHIP_RST 0x60010090
global DEVCPU_RST_REGS_SOFT_CHIP_RST

#***** Register DEVCPU_GCB:DEVCPU_RST_REGS:SOFT_DEVCPU_RST *************
# Soft reset of devcpu.
set DEVCPU_RST_REGS_SOFT_DEVCPU_RST 0x60010094
global DEVCPU_RST_REGS_SOFT_DEVCPU_RST

#*********************************************************************
# Register group: DEVCPU_GCB:ALIGN
# Configruation of the CSR ring

#***** Register DEVCPU_GCB:ALIGN:WD_SETUP ******************************
# WD conf
set ALIGN_WD_SETUP 0x60010098
global ALIGN_WD_SETUP

#***** Register DEVCPU_GCB:ALIGN:DBG ***********************************
# Debug reigsters for the control align block
set ALIGN_DBG 0x6001009c
global ALIGN_DBG

#*********************************************************************
# Register group: DEVCPU_GCB:MIIM
# 

#***** Register DEVCPU_GCB:MIIM:MII_STATUS *****************************
# MIIM Status
set MIIM0_MII_STATUS 0x600100a0
global MIIM0_MII_STATUS
set MIIM1_MII_STATUS 0x600100c4
global MIIM1_MII_STATUS

#***** Register DEVCPU_GCB:MIIM:MII_CFG_7226 ***************************
# MIIM Configuration
set MIIM0_MII_CFG_7226 0x600100a4
global MIIM0_MII_CFG_7226
set MIIM1_MII_CFG_7226 0x600100c8
global MIIM1_MII_CFG_7226

#***** Register DEVCPU_GCB:MIIM:MII_CMD ********************************
# MIIM Command
set MIIM0_MII_CMD 0x600100a8
global MIIM0_MII_CMD
set MIIM1_MII_CMD 0x600100cc
global MIIM1_MII_CMD

#***** Register DEVCPU_GCB:MIIM:MII_DATA *******************************
# MIIM Reply Data
set MIIM0_MII_DATA 0x600100ac
global MIIM0_MII_DATA
set MIIM1_MII_DATA 0x600100d0
global MIIM1_MII_DATA

#***** Register DEVCPU_GCB:MIIM:MII_CFG ********************************
# MIIM Configuration
set MIIM0_MII_CFG 0x600100b0
global MIIM0_MII_CFG
set MIIM1_MII_CFG 0x600100d4
global MIIM1_MII_CFG

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_0 *****************************
# MIIM Scan 0
set MIIM0_MII_SCAN_0 0x600100b4
global MIIM0_MII_SCAN_0
set MIIM1_MII_SCAN_0 0x600100d8
global MIIM1_MII_SCAN_0

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_1 *****************************
# MIIM Scan 1
set MIIM0_MII_SCAN_1 0x600100b8
global MIIM0_MII_SCAN_1
set MIIM1_MII_SCAN_1 0x600100dc
global MIIM1_MII_SCAN_1

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS ********************
# MIIM Results
set MIIM0_MII_SCAN_LAST_RSLTS 0x600100bc
global MIIM0_MII_SCAN_LAST_RSLTS
set MIIM1_MII_SCAN_LAST_RSLTS 0x600100e0
global MIIM1_MII_SCAN_LAST_RSLTS

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS_VLD ****************
# MIIM Results
set MIIM0_MII_SCAN_LAST_RSLTS_VLD 0x600100c0
global MIIM0_MII_SCAN_LAST_RSLTS_VLD
set MIIM1_MII_SCAN_LAST_RSLTS_VLD 0x600100e4
global MIIM1_MII_SCAN_LAST_RSLTS_VLD

#*********************************************************************
# Register group: DEVCPU_GCB:MIIM_READ_SCAN
# 

#***** Register DEVCPU_GCB:MIIM_READ_SCAN:MII_SCAN_RSLTS_STICKY ********
# MIIM Results
set MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_0 0x600100e8
global MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_0
set MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_1 0x600100ec
global MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_1

#*********************************************************************
# Register group: DEVCPU_GCB:VAUI2_MUX
# Group for the control signals of the vaui2 mux.

#***** Register DEVCPU_GCB:VAUI2_MUX:VAUI2_MUX *************************
# DEV10G, DEV2G5 mux configuration
set VAUI2_MUX_VAUI2_MUX 0x600100f0
global VAUI2_MUX_VAUI2_MUX

#*********************************************************************
# Register group: DEVCPU_GCB:FEATURES
# Chip features

#***** Register DEVCPU_GCB:FEATURES:FEA_STAT ***************************
# Chip features
set FEATURES_FEA_STAT 0x600100f4
global FEATURES_FEA_STAT

#***** Register DEVCPU_GCB:FEATURES:FEA_DISABLE ************************
# Force feature degredation
set FEATURES_FEA_DISABLE 0x600100f8
global FEATURES_FEA_DISABLE

#*********************************************************************
# Register group: DEVCPU_GCB:RAM_STAT
# QS RAM status

#***** Register DEVCPU_GCB:RAM_STAT:RAM_INTEGRITY_ERR_STICKY ***********
# 
set RAM_STAT_RAM_INTEG_ERR_ST 0x600100fc
global RAM_STAT_RAM_INTEG_ERR_ST

#*********************************************************************
# Register group: DEVCPU_GCB:TEMP_SENSOR
# Temperature sensor control

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_CTRL ****************
# Control the state of the Temperature Sensor
set TEMP_SENSOR_CTRL 0x60010100
global TEMP_SENSOR_CTRL

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_DATA ****************
# Read Temperature Data from Temperature Sensor
set TEMP_SENSOR_DATA 0x60010104
global TEMP_SENSOR_DATA

#*********************************************************************
# Register group: DEVCPU_GCB:SIO_CTRL
# Serial IO control configuration

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INPUT_DATA *********************
# Input data registers
set SIO_CTRL0_SIO_INPUT_DATA_0 0x60010108
global SIO_CTRL0_SIO_INPUT_DATA_0
set SIO_CTRL0_SIO_INPUT_DATA_1 0x6001010c
global SIO_CTRL0_SIO_INPUT_DATA_1
set SIO_CTRL0_SIO_INPUT_DATA_2 0x60010110
global SIO_CTRL0_SIO_INPUT_DATA_2
set SIO_CTRL0_SIO_INPUT_DATA_3 0x60010114
global SIO_CTRL0_SIO_INPUT_DATA_3
set SIO_CTRL1_SIO_INPUT_DATA_0 0x600101c8
global SIO_CTRL1_SIO_INPUT_DATA_0
set SIO_CTRL1_SIO_INPUT_DATA_1 0x600101cc
global SIO_CTRL1_SIO_INPUT_DATA_1
set SIO_CTRL1_SIO_INPUT_DATA_2 0x600101d0
global SIO_CTRL1_SIO_INPUT_DATA_2
set SIO_CTRL1_SIO_INPUT_DATA_3 0x600101d4
global SIO_CTRL1_SIO_INPUT_DATA_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_POL ************************
# Interrupt polarity for each GPIO
set SIO_CTRL0_SIO_INT_POL_0 0x60010118
global SIO_CTRL0_SIO_INT_POL_0
set SIO_CTRL0_SIO_INT_POL_1 0x6001011c
global SIO_CTRL0_SIO_INT_POL_1
set SIO_CTRL0_SIO_INT_POL_2 0x60010120
global SIO_CTRL0_SIO_INT_POL_2
set SIO_CTRL0_SIO_INT_POL_3 0x60010124
global SIO_CTRL0_SIO_INT_POL_3
set SIO_CTRL1_SIO_INT_POL_0 0x600101d8
global SIO_CTRL1_SIO_INT_POL_0
set SIO_CTRL1_SIO_INT_POL_1 0x600101dc
global SIO_CTRL1_SIO_INT_POL_1
set SIO_CTRL1_SIO_INT_POL_2 0x600101e0
global SIO_CTRL1_SIO_INT_POL_2
set SIO_CTRL1_SIO_INT_POL_3 0x600101e4
global SIO_CTRL1_SIO_INT_POL_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_INT_ENA *******************
# Interrupt enable register for each port.
set SIO_CTRL0_SIO_PORT_INT_ENA 0x60010128
global SIO_CTRL0_SIO_PORT_INT_ENA
set SIO_CTRL1_SIO_PORT_INT_ENA 0x600101e8
global SIO_CTRL1_SIO_PORT_INT_ENA

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_CONFIG ********************
# Configuration of output data values
set SIO_CTRL0_SIO_PORT_CONFIG_0 0x6001012c
global SIO_CTRL0_SIO_PORT_CONFIG_0
set SIO_CTRL0_SIO_PORT_CONFIG_1 0x60010130
global SIO_CTRL0_SIO_PORT_CONFIG_1
set SIO_CTRL0_SIO_PORT_CONFIG_2 0x60010134
global SIO_CTRL0_SIO_PORT_CONFIG_2
set SIO_CTRL0_SIO_PORT_CONFIG_3 0x60010138
global SIO_CTRL0_SIO_PORT_CONFIG_3
set SIO_CTRL0_SIO_PORT_CONFIG_4 0x6001013c
global SIO_CTRL0_SIO_PORT_CONFIG_4
set SIO_CTRL0_SIO_PORT_CONFIG_5 0x60010140
global SIO_CTRL0_SIO_PORT_CONFIG_5
set SIO_CTRL0_SIO_PORT_CONFIG_6 0x60010144
global SIO_CTRL0_SIO_PORT_CONFIG_6
set SIO_CTRL0_SIO_PORT_CONFIG_7 0x60010148
global SIO_CTRL0_SIO_PORT_CONFIG_7
set SIO_CTRL0_SIO_PORT_CONFIG_8 0x6001014c
global SIO_CTRL0_SIO_PORT_CONFIG_8
set SIO_CTRL0_SIO_PORT_CONFIG_9 0x60010150
global SIO_CTRL0_SIO_PORT_CONFIG_9
set SIO_CTRL0_SIO_PORT_CONFIG_10 0x60010154
global SIO_CTRL0_SIO_PORT_CONFIG_10
set SIO_CTRL0_SIO_PORT_CONFIG_11 0x60010158
global SIO_CTRL0_SIO_PORT_CONFIG_11
set SIO_CTRL0_SIO_PORT_CONFIG_12 0x6001015c
global SIO_CTRL0_SIO_PORT_CONFIG_12
set SIO_CTRL0_SIO_PORT_CONFIG_13 0x60010160
global SIO_CTRL0_SIO_PORT_CONFIG_13
set SIO_CTRL0_SIO_PORT_CONFIG_14 0x60010164
global SIO_CTRL0_SIO_PORT_CONFIG_14
set SIO_CTRL0_SIO_PORT_CONFIG_15 0x60010168
global SIO_CTRL0_SIO_PORT_CONFIG_15
set SIO_CTRL0_SIO_PORT_CONFIG_16 0x6001016c
global SIO_CTRL0_SIO_PORT_CONFIG_16
set SIO_CTRL0_SIO_PORT_CONFIG_17 0x60010170
global SIO_CTRL0_SIO_PORT_CONFIG_17
set SIO_CTRL0_SIO_PORT_CONFIG_18 0x60010174
global SIO_CTRL0_SIO_PORT_CONFIG_18
set SIO_CTRL0_SIO_PORT_CONFIG_19 0x60010178
global SIO_CTRL0_SIO_PORT_CONFIG_19
set SIO_CTRL0_SIO_PORT_CONFIG_20 0x6001017c
global SIO_CTRL0_SIO_PORT_CONFIG_20
set SIO_CTRL0_SIO_PORT_CONFIG_21 0x60010180
global SIO_CTRL0_SIO_PORT_CONFIG_21
set SIO_CTRL0_SIO_PORT_CONFIG_22 0x60010184
global SIO_CTRL0_SIO_PORT_CONFIG_22
set SIO_CTRL0_SIO_PORT_CONFIG_23 0x60010188
global SIO_CTRL0_SIO_PORT_CONFIG_23
set SIO_CTRL0_SIO_PORT_CONFIG_24 0x6001018c
global SIO_CTRL0_SIO_PORT_CONFIG_24
set SIO_CTRL0_SIO_PORT_CONFIG_25 0x60010190
global SIO_CTRL0_SIO_PORT_CONFIG_25
set SIO_CTRL0_SIO_PORT_CONFIG_26 0x60010194
global SIO_CTRL0_SIO_PORT_CONFIG_26
set SIO_CTRL0_SIO_PORT_CONFIG_27 0x60010198
global SIO_CTRL0_SIO_PORT_CONFIG_27
set SIO_CTRL0_SIO_PORT_CONFIG_28 0x6001019c
global SIO_CTRL0_SIO_PORT_CONFIG_28
set SIO_CTRL0_SIO_PORT_CONFIG_29 0x600101a0
global SIO_CTRL0_SIO_PORT_CONFIG_29
set SIO_CTRL0_SIO_PORT_CONFIG_30 0x600101a4
global SIO_CTRL0_SIO_PORT_CONFIG_30
set SIO_CTRL0_SIO_PORT_CONFIG_31 0x600101a8
global SIO_CTRL0_SIO_PORT_CONFIG_31
set SIO_CTRL1_SIO_PORT_CONFIG_0 0x600101ec
global SIO_CTRL1_SIO_PORT_CONFIG_0
set SIO_CTRL1_SIO_PORT_CONFIG_1 0x600101f0
global SIO_CTRL1_SIO_PORT_CONFIG_1
set SIO_CTRL1_SIO_PORT_CONFIG_2 0x600101f4
global SIO_CTRL1_SIO_PORT_CONFIG_2
set SIO_CTRL1_SIO_PORT_CONFIG_3 0x600101f8
global SIO_CTRL1_SIO_PORT_CONFIG_3
set SIO_CTRL1_SIO_PORT_CONFIG_4 0x600101fc
global SIO_CTRL1_SIO_PORT_CONFIG_4
set SIO_CTRL1_SIO_PORT_CONFIG_5 0x60010200
global SIO_CTRL1_SIO_PORT_CONFIG_5
set SIO_CTRL1_SIO_PORT_CONFIG_6 0x60010204
global SIO_CTRL1_SIO_PORT_CONFIG_6
set SIO_CTRL1_SIO_PORT_CONFIG_7 0x60010208
global SIO_CTRL1_SIO_PORT_CONFIG_7
set SIO_CTRL1_SIO_PORT_CONFIG_8 0x6001020c
global SIO_CTRL1_SIO_PORT_CONFIG_8
set SIO_CTRL1_SIO_PORT_CONFIG_9 0x60010210
global SIO_CTRL1_SIO_PORT_CONFIG_9
set SIO_CTRL1_SIO_PORT_CONFIG_10 0x60010214
global SIO_CTRL1_SIO_PORT_CONFIG_10
set SIO_CTRL1_SIO_PORT_CONFIG_11 0x60010218
global SIO_CTRL1_SIO_PORT_CONFIG_11
set SIO_CTRL1_SIO_PORT_CONFIG_12 0x6001021c
global SIO_CTRL1_SIO_PORT_CONFIG_12
set SIO_CTRL1_SIO_PORT_CONFIG_13 0x60010220
global SIO_CTRL1_SIO_PORT_CONFIG_13
set SIO_CTRL1_SIO_PORT_CONFIG_14 0x60010224
global SIO_CTRL1_SIO_PORT_CONFIG_14
set SIO_CTRL1_SIO_PORT_CONFIG_15 0x60010228
global SIO_CTRL1_SIO_PORT_CONFIG_15
set SIO_CTRL1_SIO_PORT_CONFIG_16 0x6001022c
global SIO_CTRL1_SIO_PORT_CONFIG_16
set SIO_CTRL1_SIO_PORT_CONFIG_17 0x60010230
global SIO_CTRL1_SIO_PORT_CONFIG_17
set SIO_CTRL1_SIO_PORT_CONFIG_18 0x60010234
global SIO_CTRL1_SIO_PORT_CONFIG_18
set SIO_CTRL1_SIO_PORT_CONFIG_19 0x60010238
global SIO_CTRL1_SIO_PORT_CONFIG_19
set SIO_CTRL1_SIO_PORT_CONFIG_20 0x6001023c
global SIO_CTRL1_SIO_PORT_CONFIG_20
set SIO_CTRL1_SIO_PORT_CONFIG_21 0x60010240
global SIO_CTRL1_SIO_PORT_CONFIG_21
set SIO_CTRL1_SIO_PORT_CONFIG_22 0x60010244
global SIO_CTRL1_SIO_PORT_CONFIG_22
set SIO_CTRL1_SIO_PORT_CONFIG_23 0x60010248
global SIO_CTRL1_SIO_PORT_CONFIG_23
set SIO_CTRL1_SIO_PORT_CONFIG_24 0x6001024c
global SIO_CTRL1_SIO_PORT_CONFIG_24
set SIO_CTRL1_SIO_PORT_CONFIG_25 0x60010250
global SIO_CTRL1_SIO_PORT_CONFIG_25
set SIO_CTRL1_SIO_PORT_CONFIG_26 0x60010254
global SIO_CTRL1_SIO_PORT_CONFIG_26
set SIO_CTRL1_SIO_PORT_CONFIG_27 0x60010258
global SIO_CTRL1_SIO_PORT_CONFIG_27
set SIO_CTRL1_SIO_PORT_CONFIG_28 0x6001025c
global SIO_CTRL1_SIO_PORT_CONFIG_28
set SIO_CTRL1_SIO_PORT_CONFIG_29 0x60010260
global SIO_CTRL1_SIO_PORT_CONFIG_29
set SIO_CTRL1_SIO_PORT_CONFIG_30 0x60010264
global SIO_CTRL1_SIO_PORT_CONFIG_30
set SIO_CTRL1_SIO_PORT_CONFIG_31 0x60010268
global SIO_CTRL1_SIO_PORT_CONFIG_31

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_ENABLE ********************
# Port enable register
set SIO_CTRL0_SIO_PORT_ENABLE 0x600101ac
global SIO_CTRL0_SIO_PORT_ENABLE
set SIO_CTRL1_SIO_PORT_ENABLE 0x6001026c
global SIO_CTRL1_SIO_PORT_ENABLE

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CONFIG *************************
# General configuration register
set SIO_CTRL0_SIO_CONFIG 0x600101b0
global SIO_CTRL0_SIO_CONFIG
set SIO_CTRL1_SIO_CONFIG 0x60010270
global SIO_CTRL1_SIO_CONFIG

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CLOCK **************************
# Configuration of the serial IO clock frequency
set SIO_CTRL0_SIO_CLOCK 0x600101b4
global SIO_CTRL0_SIO_CLOCK
set SIO_CTRL1_SIO_CLOCK 0x60010274
global SIO_CTRL1_SIO_CLOCK

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_REG ************************
# Interrupt register
set SIO_CTRL0_SIO_INT_REG_0 0x600101b8
global SIO_CTRL0_SIO_INT_REG_0
set SIO_CTRL0_SIO_INT_REG_1 0x600101bc
global SIO_CTRL0_SIO_INT_REG_1
set SIO_CTRL0_SIO_INT_REG_2 0x600101c0
global SIO_CTRL0_SIO_INT_REG_2
set SIO_CTRL0_SIO_INT_REG_3 0x600101c4
global SIO_CTRL0_SIO_INT_REG_3
set SIO_CTRL1_SIO_INT_REG_0 0x60010278
global SIO_CTRL1_SIO_INT_REG_0
set SIO_CTRL1_SIO_INT_REG_1 0x6001027c
global SIO_CTRL1_SIO_INT_REG_1
set SIO_CTRL1_SIO_INT_REG_2 0x60010280
global SIO_CTRL1_SIO_INT_REG_2
set SIO_CTRL1_SIO_INT_REG_3 0x60010284
global SIO_CTRL1_SIO_INT_REG_3

#*********************************************************************
# Register group: DEVCPU_GCB:PTP_CFG
# Configuration registers for PTP

#***** Register DEVCPU_GCB:PTP_CFG:PTP_MISC_CFG ************************
# Misc Configuration Register for PTP
set PTP_CFG_PTP_MISC_CFG 0x60010288
global PTP_CFG_PTP_MISC_CFG

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_CFG *****************
# Configuration register for master counter upper limit
set PTP_CFG_PTP_UPPER_LIMIT_CFG 0x6001028c
global PTP_CFG_PTP_UPPER_LIMIT_CFG

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_1_TIME_ADJ_CFG ******
# Configuration register for master counter upper limit one time adjustment
set PTP_CFG_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG 0x60010290
global PTP_CFG_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG

#***** Register DEVCPU_GCB:PTP_CFG:PTP_SYNC_INTR_ENA_CFG ***************
# Sync Interrupt enable register
set PTP_CFG_PTP_SYNC_INTR_ENA_CFG 0x60010294
global PTP_CFG_PTP_SYNC_INTR_ENA_CFG

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_HIGH_PERIOD_CFG *********
# Generated external clock high period configuration register
set PTP_CFG_GEN_EXT_CLK_HIGH_PERIOD_CFG 0x60010298
global PTP_CFG_GEN_EXT_CLK_HIGH_PERIOD_CFG

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_LOW_PERIOD_CFG **********
# Generated external clock low period configuration register
set PTP_CFG_GEN_EXT_CLK_LOW_PERIOD_CFG 0x6001029c
global PTP_CFG_GEN_EXT_CLK_LOW_PERIOD_CFG

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_CFG *********************
# Configuration register for sync. of external clock to internal master sync.
set PTP_CFG_GEN_EXT_CLK_CFG 0x600102a0
global PTP_CFG_GEN_EXT_CLK_CFG

#***** Register DEVCPU_GCB:PTP_CFG:CLK_ADJ_CFG *************************
# Configuration register for generated clock frequency adjustment
set PTP_CFG_CLK_ADJ_CFG 0x600102a4
global PTP_CFG_CLK_ADJ_CFG

#*********************************************************************
# Register group: DEVCPU_GCB:PTP_STAT
# Status registers for PTP

#***** Register DEVCPU_GCB:PTP_STAT:PTP_CURRENT_TIME_STAT **************
# Current PTP master timer value
set PTP_STAT_PTP_CURRENT_TIME_STAT 0x600102a8
global PTP_STAT_PTP_CURRENT_TIME_STAT

#***** Register DEVCPU_GCB:PTP_STAT:EXT_SYNC_CURRENT_TIME_STAT *********
# External sync current time status register
set PTP_STAT_EXT_SYNC_CURRENT_TIME_STAT 0x600102ac
global PTP_STAT_EXT_SYNC_CURRENT_TIME_STAT

#***** Register DEVCPU_GCB:PTP_STAT:PTP_EVT_STAT ***********************
# Stick register for external sync current time status
set PTP_STAT_PTP_EVT_STAT 0x600102b0
global PTP_STAT_PTP_EVT_STAT

#*********************************************************************
# Register group: DEVCPU_GCB:MEMITGR
# Memory integrity monitor

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_CTRL ************************
# Monitor control
set MEMITGR_CTRL 0x600102b4
global MEMITGR_CTRL

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_STAT ************************
# Monitor status
set MEMITGR_STAT 0x600102b8
global MEMITGR_STAT

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_INFO ************************
# Memory indication
set MEMITGR_INFO 0x600102bc
global MEMITGR_INFO

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_IDX *************************
# Memory index
set MEMITGR_IDX 0x600102c0
global MEMITGR_IDX

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DIV *************************
# Monitor ring sync divider
set MEMITGR_DIV 0x600102c4
global MEMITGR_DIV

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DBG *************************
# Debug registers
set MEMITGR_DBG 0x600102c8
global MEMITGR_DBG

#********************************************************************** 
#
# Target CFG
#
# Configurations for the VCore system.
#
#**********************************************************************

#*********************************************************************
# Register group: ICPU_CFG:CPU_SYSTEM_CTRL
# Configurations for the VCore system.

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

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:CLOCK *************************
# Clock Settings
set SYS_CLOCK 0x70000020
global SYS_CLOCK

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:RESET *************************
# Reset Settings
set SYS_RESET 0x70000024
global SYS_RESET

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_CTRL ******************
# General control
set SYS_GEN_CTRL 0x70000028
global SYS_GEN_CTRL

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_STAT ******************
# General status
set SYS_GEN_STAT 0x7000002c
global SYS_GEN_STAT

#*********************************************************************
# Register group: ICPU_CFG:PI_MST
# Parallel Interface Master Configuration

#***** Register ICPU_CFG:PI_MST:PI_MST_CFG *****************************
# PI Master Configuration
set PI_MST_CFG 0x70000030
global PI_MST_CFG

#***** Register ICPU_CFG:PI_MST:PI_MST_CTRL ****************************
# PI Master Control Register
set PI_MST_CTRL_0 0x70000034
global PI_MST_CTRL_0
set PI_MST_CTRL_1 0x70000038
global PI_MST_CTRL_1
set PI_MST_CTRL_2 0x7000003c
global PI_MST_CTRL_2
set PI_MST_CTRL_3 0x70000040
global PI_MST_CTRL_3

#***** Register ICPU_CFG:PI_MST:PI_MST_STATUS **************************
# PI Master Status Registers
set PI_MST_STATUS_0 0x70000044
global PI_MST_STATUS_0
set PI_MST_STATUS_1 0x70000048
global PI_MST_STATUS_1
set PI_MST_STATUS_2 0x7000004c
global PI_MST_STATUS_2
set PI_MST_STATUS_3 0x70000050
global PI_MST_STATUS_3

#*********************************************************************
# Register group: ICPU_CFG:SPI_MST
# SPI Master Configuration

#***** Register ICPU_CFG:SPI_MST:SPI_MST_CFG ***************************
# SPI Master Configuration
set SPI_MST_CFG 0x70000054
global SPI_MST_CFG

#***** Register ICPU_CFG:SPI_MST:SPI_MST_STATUS ************************
# SPI Master Status Registers
set SPI_MST_STATUS_0 0x70000058
global SPI_MST_STATUS_0
set SPI_MST_STATUS_1 0x7000005c
global SPI_MST_STATUS_1
set SPI_MST_STATUS_2 0x70000060
global SPI_MST_STATUS_2
set SPI_MST_STATUS_3 0x70000064
global SPI_MST_STATUS_3

#***** Register ICPU_CFG:SPI_MST:SW_MODE *******************************
# Manual control of the SPI interface
set SPI_MST_SW_MODE 0x70000068
global SPI_MST_SW_MODE

#*********************************************************************
# Register group: ICPU_CFG:INTR
# Interrupt Registers

#***** Register ICPU_CFG:INTR:INTR *************************************
# Interrupt sticky bits
set INTR_INTR 0x7000006c
global INTR_INTR

#***** Register ICPU_CFG:INTR:INTR_ENA *********************************
# Interrupt enable
set INTR_ENA 0x70000070
global INTR_ENA

#***** Register ICPU_CFG:INTR:INTR_ENA_CLR *****************************
# Clear interrupt enable
set INTR_ENA_CLR 0x70000074
global INTR_ENA_CLR

#***** Register ICPU_CFG:INTR:INTR_ENA_SET *****************************
# Set interrupt enable
set INTR_ENA_SET 0x70000078
global INTR_ENA_SET

#***** Register ICPU_CFG:INTR:INTR_RAW *********************************
# Raw of interrupt source
set INTR_RAW 0x7000007c
global INTR_RAW

#***** Register ICPU_CFG:INTR:MIPS_IRQ0_ENA ****************************
# Enable of ICPU_IRQ0 interrupt
set INTR_MIRQ0_ENA 0x70000080
global INTR_MIRQ0_ENA

#***** Register ICPU_CFG:INTR:MIPS_IRQ0_IDENT **************************
# Sources of ICPU_IRQ0 interrupt
set INTR_MIRQ0_ID 0x70000084
global INTR_MIRQ0_ID

#***** Register ICPU_CFG:INTR:MIPS_IRQ1_ENA ****************************
# Enable of ICPU_IRQ1 interrupt
set INTR_MIRQ1_ENA 0x70000088
global INTR_MIRQ1_ENA

#***** Register ICPU_CFG:INTR:MIPS_IRQ1_IDENT **************************
# Sources of ICPU_IRQ1 interrupt
set INTR_MIRQ1_ID 0x7000008c
global INTR_MIRQ1_ID

#***** Register ICPU_CFG:INTR:EXT_IRQ0_ENA *****************************
# Enable of EXT_IRQ0 interrupt
set INTR_EXT_IRQ0_ENA 0x70000090
global INTR_EXT_IRQ0_ENA

#***** Register ICPU_CFG:INTR:EXT_IRQ0_IDENT ***************************
# Sources of EXT_IRQ0 interrupt
set INTR_EXT_IRQ0_ID 0x70000094
global INTR_EXT_IRQ0_ID

#***** Register ICPU_CFG:INTR:EXT_IRQ1_ENA *****************************
# Enable of EXT_IRQ1 interrupt
set INTR_EXT_IRQ1_ENA 0x70000098
global INTR_EXT_IRQ1_ENA

#***** Register ICPU_CFG:INTR:EXT_IRQ1_IDENT ***************************
# Sources of EXT_IRQ1 interrupt
set INTR_EXT_IRQ1_ID 0x7000009c
global INTR_EXT_IRQ1_ID

#***** Register ICPU_CFG:INTR:DEV_IDENT ********************************
# Device interrupts
set INTR_DEV_ID 0x700000a0
global INTR_DEV_ID

#***** Register ICPU_CFG:INTR:EXT0_INTR_CONFIG *************************
# EXT_IRQ0 interrupt configuration
set INTR_EXT0_CONFIG 0x700000a4
global INTR_EXT0_CONFIG

#***** Register ICPU_CFG:INTR:EXT1_INTR_CONFIG *************************
# EXT_IRQ1 interrupt configuration
set INTR_EXT1_CONFIG 0x700000a8
global INTR_EXT1_CONFIG

#***** Register ICPU_CFG:INTR:SW0_INTR_CONFIG **************************
# SW0 interrupt configuration
set INTR_SW0_CONFIG 0x700000ac
global INTR_SW0_CONFIG

#***** Register ICPU_CFG:INTR:SW1_INTR_CONFIG **************************
# SW1 interrupt configuration
set INTR_SW1_CONFIG 0x700000b0
global INTR_SW1_CONFIG

#***** Register ICPU_CFG:INTR:MIIM1_INTR_CONFIG ************************
# MIIM1 interrupt configuration
set INTR_MIIM1_CONFIG 0x700000b4
global INTR_MIIM1_CONFIG

#***** Register ICPU_CFG:INTR:MIIM0_INTR_CONFIG ************************
# MIIM0 interrupt configuration
set INTR_MIIM0_CONFIG 0x700000b8
global INTR_MIIM0_CONFIG

#***** Register ICPU_CFG:INTR:PI_SD0_INTR_CONFIG ***********************
# PI_SD0 interrupt configuration
set INTR_PI_SD0_CONFIG 0x700000bc
global INTR_PI_SD0_CONFIG

#***** Register ICPU_CFG:INTR:PI_SD1_INTR_CONFIG ***********************
# PI_SD1 interrupt configuration
set INTR_PI_SD1_CONFIG 0x700000c0
global INTR_PI_SD1_CONFIG

#***** Register ICPU_CFG:INTR:UART_INTR_CONFIG *************************
# UART interrupt configuration
set INTR_UART_CONFIG 0x700000c4
global INTR_UART_CONFIG

#***** Register ICPU_CFG:INTR:TIMER0_INTR_CONFIG ***********************
# TIMER0 interrupt configuration
set INTR_TIMER0_CONFIG 0x700000c8
global INTR_TIMER0_CONFIG

#***** Register ICPU_CFG:INTR:TIMER1_INTR_CONFIG ***********************
# TIMER1 interrupt configuration
set INTR_TIMER1_CONFIG 0x700000cc
global INTR_TIMER1_CONFIG

#***** Register ICPU_CFG:INTR:TIMER2_INTR_CONFIG ***********************
# TIMER2 interrupt configuration
set INTR_TIMER2_CONFIG 0x700000d0
global INTR_TIMER2_CONFIG

#***** Register ICPU_CFG:INTR:FDMA_INTR_CONFIG *************************
# FDMA interrupt configuration
set INTR_FDMA_CONFIG 0x700000d4
global INTR_FDMA_CONFIG

#***** Register ICPU_CFG:INTR:TWI_INTR_CONFIG **************************
# TWI interrupt configuration
set INTR_TWI_CONFIG 0x700000d8
global INTR_TWI_CONFIG

#***** Register ICPU_CFG:INTR:GPIO_INTR_CONFIG *************************
# GPIO interrupt configuration
set INTR_GPIO_CONFIG 0x700000dc
global INTR_GPIO_CONFIG

#***** Register ICPU_CFG:INTR:SGPIO_INTR_CONFIG ************************
# SGPIO interrupt configuration
set INTR_SGPIO_CONFIG 0x700000e0
global INTR_SGPIO_CONFIG

#***** Register ICPU_CFG:INTR:DEV_ALL_INTR_CONFIG **********************
# DEV_ALL interrupt configuration
set INTR_DEV_ALL_CONFIG 0x700000e4
global INTR_DEV_ALL_CONFIG

#***** Register ICPU_CFG:INTR:BLK_ANA_INTR_CONFIG **********************
# BLK_ANA interrupt configuration
set INTR_BLK_ANA_CONFIG 0x700000e8
global INTR_BLK_ANA_CONFIG

#***** Register ICPU_CFG:INTR:XTR_RDY0_INTR_CONFIG *********************
# XTR_RDY0 interrupt configuration
set INTR_XTR_RDY0_CONFIG 0x700000ec
global INTR_XTR_RDY0_CONFIG

#***** Register ICPU_CFG:INTR:XTR_RDY1_INTR_CONFIG *********************
# XTR_RDY1 interrupt configuration
set INTR_XTR_RDY1_CONFIG 0x700000f0
global INTR_XTR_RDY1_CONFIG

#***** Register ICPU_CFG:INTR:XTR_RDY2_INTR_CONFIG *********************
# XTR_RDY2 interrupt configuration
set INTR_XTR_RDY2_CONFIG 0x700000f4
global INTR_XTR_RDY2_CONFIG

#***** Register ICPU_CFG:INTR:XTR_RDY3_INTR_CONFIG *********************
# XTR_RDY3 interrupt configuration
set INTR_XTR_RDY3_CONFIG 0x700000f8
global INTR_XTR_RDY3_CONFIG

#***** Register ICPU_CFG:INTR:INJ_RDY0_INTR_CONFIG *********************
# INJ_RDY0 interrupt configuration
set INTR_INJ_RDY0_CONFIG 0x700000fc
global INTR_INJ_RDY0_CONFIG

#***** Register ICPU_CFG:INTR:INJ_RDY1_INTR_CONFIG *********************
# INJ_RDY1 interrupt configuration
set INTR_INJ_RDY1_CONFIG 0x70000100
global INTR_INJ_RDY1_CONFIG

#***** Register ICPU_CFG:INTR:INJ_RDY2_INTR_CONFIG *********************
# INJ_RDY2 interrupt configuration
set INTR_INJ_RDY2_CONFIG 0x70000104
global INTR_INJ_RDY2_CONFIG

#***** Register ICPU_CFG:INTR:INJ_RDY3_INTR_CONFIG *********************
# INJ_RDY3 interrupt configuration
set INTR_INJ_RDY3_CONFIG 0x70000108
global INTR_INJ_RDY3_CONFIG

#***** Register ICPU_CFG:INTR:INJ_RDY4_INTR_CONFIG *********************
# INJ_RDY4 interrupt configuration
set INTR_INJ_RDY4_CONFIG 0x7000010c
global INTR_INJ_RDY4_CONFIG

#***** Register ICPU_CFG:INTR:INTEGRITY_INTR_CONFIG ********************
# INTEGRITY interrupt configuration
set INTR_INTEG_CONFIG 0x70000110
global INTR_INTEG_CONFIG

#***** Register ICPU_CFG:INTR:PTP_SYNC_INTR_CONFIG *********************
# PTP_SYNC interrupt configuration
set INTR_PTP_SYNC_CONFIG 0x70000114
global INTR_PTP_SYNC_CONFIG

#*********************************************************************
# Register group: ICPU_CFG:GPDMA
# Frame DMA

#***** Register ICPU_CFG:GPDMA:FDMA_CFG ********************************
# Common Injection or Extraction Configuration
set FDMA_CFG 0x70000118
global FDMA_CFG

#***** Register ICPU_CFG:GPDMA:FDMA_STAT *******************************
# Common Injection or Extraction Status
set FDMA_STAT 0x7000011c
global FDMA_STAT

#***** Register ICPU_CFG:GPDMA:FDMA_CH_CFG *****************************
# FDMA Channel Usage and Flow Control
set FDMA_CH_CFG_0 0x70000120
global FDMA_CH_CFG_0
set FDMA_CH_CFG_1 0x70000124
global FDMA_CH_CFG_1
set FDMA_CH_CFG_2 0x70000128
global FDMA_CH_CFG_2
set FDMA_CH_CFG_3 0x7000012c
global FDMA_CH_CFG_3
set FDMA_CH_CFG_4 0x70000130
global FDMA_CH_CFG_4
set FDMA_CH_CFG_5 0x70000134
global FDMA_CH_CFG_5
set FDMA_CH_CFG_6 0x70000138
global FDMA_CH_CFG_6
set FDMA_CH_CFG_7 0x7000013c
global FDMA_CH_CFG_7

#***** Register ICPU_CFG:GPDMA:FDMA_INJ_CFG ****************************
# FDMA Injection Parameters
set FDMA_INJ_CFG_0 0x70000140
global FDMA_INJ_CFG_0
set FDMA_INJ_CFG_1 0x70000144
global FDMA_INJ_CFG_1
set FDMA_INJ_CFG_2 0x70000148
global FDMA_INJ_CFG_2
set FDMA_INJ_CFG_3 0x7000014c
global FDMA_INJ_CFG_3
set FDMA_INJ_CFG_4 0x70000150
global FDMA_INJ_CFG_4

#***** Register ICPU_CFG:GPDMA:FDMA_XTR_CFG ****************************
# FDMA Extraction Parameters
set FDMA_XTR_CFG_0 0x70000154
global FDMA_XTR_CFG_0
set FDMA_XTR_CFG_1 0x70000158
global FDMA_XTR_CFG_1
set FDMA_XTR_CFG_2 0x7000015c
global FDMA_XTR_CFG_2
set FDMA_XTR_CFG_3 0x70000160
global FDMA_XTR_CFG_3

#***** Register ICPU_CFG:GPDMA:FDMA_XTR_STAT_LAST_DCB ******************
# Extraction Status for FDMA Engine
set GPDMA_LDCB_0 0x70000164
global GPDMA_LDCB_0
set GPDMA_LDCB_1 0x70000168
global GPDMA_LDCB_1
set GPDMA_LDCB_2 0x7000016c
global GPDMA_LDCB_2
set GPDMA_LDCB_3 0x70000170
global GPDMA_LDCB_3

#***** Register ICPU_CFG:GPDMA:FDMA_FRM_CNT ****************************
# Frame Counter and Flow Control Status
set FDMA_FRM_CNT 0x70000174
global FDMA_FRM_CNT

#***** Register ICPU_CFG:GPDMA:FDMA_BP_TO_INT **************************
# FDMA Backpressure Timeout Interrupt
set FDMA_BP2INT 0x70000178
global FDMA_BP2INT

#***** Register ICPU_CFG:GPDMA:FDMA_BP_TO_DIV **************************
# FDMA Timeout Divider
set FDMA_BP2DIV 0x7000017c
global FDMA_BP2DIV

#*********************************************************************
# Register group: ICPU_CFG:INJ_FRM_SPC
# Injection frame spacing

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_TMR *******************
# Injection frame spacing timer
set INJ_FRM_SPC0_TMR 0x70000180
global INJ_FRM_SPC0_TMR
set INJ_FRM_SPC1_TMR 0x70000190
global INJ_FRM_SPC1_TMR
set INJ_FRM_SPC2_TMR 0x700001a0
global INJ_FRM_SPC2_TMR
set INJ_FRM_SPC3_TMR 0x700001b0
global INJ_FRM_SPC3_TMR
set INJ_FRM_SPC4_TMR 0x700001c0
global INJ_FRM_SPC4_TMR
set INJ_FRM_SPC5_TMR 0x700001d0
global INJ_FRM_SPC5_TMR
set INJ_FRM_SPC6_TMR 0x700001e0
global INJ_FRM_SPC6_TMR
set INJ_FRM_SPC7_TMR 0x700001f0
global INJ_FRM_SPC7_TMR

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_TMR_CFG ***************
# Reload value for injection frame spacing timer
set INJ_FRM_SPC0_TMR_CFG 0x70000184
global INJ_FRM_SPC0_TMR_CFG
set INJ_FRM_SPC1_TMR_CFG 0x70000194
global INJ_FRM_SPC1_TMR_CFG
set INJ_FRM_SPC2_TMR_CFG 0x700001a4
global INJ_FRM_SPC2_TMR_CFG
set INJ_FRM_SPC3_TMR_CFG 0x700001b4
global INJ_FRM_SPC3_TMR_CFG
set INJ_FRM_SPC4_TMR_CFG 0x700001c4
global INJ_FRM_SPC4_TMR_CFG
set INJ_FRM_SPC5_TMR_CFG 0x700001d4
global INJ_FRM_SPC5_TMR_CFG
set INJ_FRM_SPC6_TMR_CFG 0x700001e4
global INJ_FRM_SPC6_TMR_CFG
set INJ_FRM_SPC7_TMR_CFG 0x700001f4
global INJ_FRM_SPC7_TMR_CFG

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_LACK_CNTR *************
# Lack counter
set INJ_FRM_SPC0_LCNT 0x70000188
global INJ_FRM_SPC0_LCNT
set INJ_FRM_SPC1_LCNT 0x70000198
global INJ_FRM_SPC1_LCNT
set INJ_FRM_SPC2_LCNT 0x700001a8
global INJ_FRM_SPC2_LCNT
set INJ_FRM_SPC3_LCNT 0x700001b8
global INJ_FRM_SPC3_LCNT
set INJ_FRM_SPC4_LCNT 0x700001c8
global INJ_FRM_SPC4_LCNT
set INJ_FRM_SPC5_LCNT 0x700001d8
global INJ_FRM_SPC5_LCNT
set INJ_FRM_SPC6_LCNT 0x700001e8
global INJ_FRM_SPC6_LCNT
set INJ_FRM_SPC7_LCNT 0x700001f8
global INJ_FRM_SPC7_LCNT

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_CFG *******************
# Injection frame spacing configuration register
set INJ_FRM_SPC0_CFG 0x7000018c
global INJ_FRM_SPC0_CFG
set INJ_FRM_SPC1_CFG 0x7000019c
global INJ_FRM_SPC1_CFG
set INJ_FRM_SPC2_CFG 0x700001ac
global INJ_FRM_SPC2_CFG
set INJ_FRM_SPC3_CFG 0x700001bc
global INJ_FRM_SPC3_CFG
set INJ_FRM_SPC4_CFG 0x700001cc
global INJ_FRM_SPC4_CFG
set INJ_FRM_SPC5_CFG 0x700001dc
global INJ_FRM_SPC5_CFG
set INJ_FRM_SPC6_CFG 0x700001ec
global INJ_FRM_SPC6_CFG
set INJ_FRM_SPC7_CFG 0x700001fc
global INJ_FRM_SPC7_CFG

#*********************************************************************
# Register group: ICPU_CFG:TIMERS
# Timer Registers

#***** Register ICPU_CFG:TIMERS:WDT ************************************
# Watchdog Timer
set TIMERS_WDT 0x70000200
global TIMERS_WDT

#***** Register ICPU_CFG:TIMERS:TIMER_TICK_DIV *************************
# Timer Tick Divider
set TIMER_TICK_DIV 0x70000204
global TIMER_TICK_DIV

#***** Register ICPU_CFG:TIMERS:TIMER_VALUE ****************************
# Timer value
set TIMER_VALUE_0 0x70000208
global TIMER_VALUE_0
set TIMER_VALUE_1 0x7000020c
global TIMER_VALUE_1
set TIMER_VALUE_2 0x70000210
global TIMER_VALUE_2

#***** Register ICPU_CFG:TIMERS:TIMER_RELOAD_VALUE *********************
# Timer Reload Value
set TIMER_RELOAD_VALUE_0 0x70000214
global TIMER_RELOAD_VALUE_0
set TIMER_RELOAD_VALUE_1 0x70000218
global TIMER_RELOAD_VALUE_1
set TIMER_RELOAD_VALUE_2 0x7000021c
global TIMER_RELOAD_VALUE_2

#***** Register ICPU_CFG:TIMERS:TIMER_CTRL *****************************
# Timer Control
set TIMER_CTRL_0 0x70000220
global TIMER_CTRL_0
set TIMER_CTRL_1 0x70000224
global TIMER_CTRL_1
set TIMER_CTRL_2 0x70000228
global TIMER_CTRL_2

#*********************************************************************
# Register group: ICPU_CFG:MEMCTRL
# DDR2/3 Memory Controller Registers

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CTRL **************************
# Control register
set MC_CTRL 0x7000022c
global MC_CTRL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CFG ***************************
# Configuration register
set MC_CFG 0x70000230
global MC_CFG

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_STAT **************************
# Status register
set MC_STAT 0x70000234
global MC_STAT

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_REF_PERIOD ********************
# Refresh period configuration
set MC_REF_PERIOD 0x70000238
global MC_REF_PERIOD

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_ZQCAL *************************
# DDR3 zq-calibration
set MC_ZQCAL 0x7000023c
global MC_ZQCAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING0 ***********************
# Timing register 0
set MC_TIMING0 0x70000240
global MC_TIMING0

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING1 ***********************
# Timing register 1
set MC_TIMING1 0x70000244
global MC_TIMING1

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING2 ***********************
# Timing register 2
set MC_TIMING2 0x70000248
global MC_TIMING2

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING3 ***********************
# Timing register 3
set MC_TIMING3 0x7000024c
global MC_TIMING3

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR0_VAL ***********************
# Mode Register 0 Value
set MC_MR0_VAL 0x70000250
global MC_MR0_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR1_VAL ***********************
# Mode Register 1 / Extended Mode Register Value
set MC_MR1_VAL 0x70000254
global MC_MR1_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR2_VAL ***********************
# Mode Register 2 / Extended Mode Register 2 Value
set MC_MR2_VAL 0x70000258
global MC_MR2_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR3_VAL ***********************
# Mode Register 3 / Extended Mode Register 3 Value
set MC_MR3_VAL 0x7000025c
global MC_MR3_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TERMRES_CTRL ******************
# TBA
set MC_TERMRES_CTRL 0x70000260
global MC_TERMRES_CTRL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DFT ***************************
# Design for test features
set MC_DFT 0x70000264
global MC_DFT

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_DLY ***********************
# DQS window configuration
set MC_DQS_0 0x70000268
global MC_DQS_0
set MC_DQS_1 0x7000026c
global MC_DQS_1

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_AUTO **********************
# DQS window automatic drift detect/ajust
set MC_DQS_AUTO_0 0x70000270
global MC_DQS_AUTO_0
set MC_DQS_AUTO_1 0x70000274
global MC_DQS_AUTO_1

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_CFG ****************************
# Control register
set MC_MEMPHY_CFG 0x70000278
global MC_MEMPHY_CFG

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DFT ****************************
# Design for test features
set MC_MEMPHY_DFT 0x7000027c
global MC_MEMPHY_DFT

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG0 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG0_0 0x70000280
global MC_MEMPHY_DLLCFG0_0
set MC_MEMPHY_DLLCFG0_1 0x70000284
global MC_MEMPHY_DLLCFG0_1
set MC_MEMPHY_DLLCFG0_2 0x70000288
global MC_MEMPHY_DLLCFG0_2

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG1 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG1_0 0x7000028c
global MC_MEMPHY_DLLCFG1_0
set MC_MEMPHY_DLLCFG1_1 0x70000290
global MC_MEMPHY_DLLCFG1_1
set MC_MEMPHY_DLLCFG1_2 0x70000294
global MC_MEMPHY_DLLCFG1_2

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DQ_DLY_TRM *********************
# DQ window configuration
set MC_MEMPHY_DQ_DLY_TRM_0 0x70000298
global MC_MEMPHY_DQ_DLY_TRM_0
set MC_MEMPHY_DQ_DLY_TRM_1 0x7000029c
global MC_MEMPHY_DQ_DLY_TRM_1

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL ***************************
# Impedance calibration
set MC_MEMPHY_ZCAL 0x700002a0
global MC_MEMPHY_ZCAL

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_STAT **********************
# Impedance calibration status
set MC_MEMPHY_ZCAL_STAT 0x700002a4
global MC_MEMPHY_ZCAL_STAT

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_OVR ***********************
# Manual override of impedance calibration
set MC_MEMPHY_ZCAL_OVR 0x700002a8
global MC_MEMPHY_ZCAL_OVR

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_FORCE *********************
# Force of ZCAL singals to IO ring
set MC_MEMPHY_ZCAL_FORCE 0x700002ac
global MC_MEMPHY_ZCAL_FORCE

#*********************************************************************
# Register group: ICPU_CFG:TWI_DELAY
# Configuration registers

#***** Register ICPU_CFG:TWI_DELAY:TWI_CONFIG **************************
# Configuration registers
set TWI_DELAY_TWI_CONFIG 0x700002b0
global TWI_DELAY_TWI_CONFIG

