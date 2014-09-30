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
# PCIE_EP              0x70101000
# SBA                  0x70110000
# DEVCPU_ORG           0x71000000
# SYS                  0x71010000
# REW                  0x71030000
# ES0                  0x71040000
# S1                   0x71050000
# S2                   0x71060000
# DEVCPU_GCB           0x71070000
# DEVCPU_QS            0x71080000
# HSIO                 0x710a0000
# IS0                  0x710b0000
# OAM_MEP              0x710c0000
# DEV_0                0x711e0000
# DEV_1                0x711f0000
# DEV_2                0x71200000
# DEV_3                0x71210000
# DEV_4                0x71220000
# DEV_5                0x71230000
# DEV_6                0x71240000
# DEV_7                0x71250000
# DEV_8                0x71260000
# DEV_9                0x71270000
# DEV_10               0x71280000
# QSYS                 0x71800000
# ANA                  0x71900000
#

#********************************************************************** 
#
# Target DEVCPU_GCB
#
# CPU device configuration
#
#**********************************************************************

#*********************************************************************
# Register group: DEVCPU_GCB:CHIP_REGS
# Software/hardware interaction

#***** Register DEVCPU_GCB:CHIP_REGS:CHIP_ID ***************************
# Chip ID register
set CHIP_REGS_CHIP_ID 0x71070000
global CHIP_REGS_CHIP_ID

#***** Register DEVCPU_GCB:CHIP_REGS:GPR *******************************
# General purpose register
set CHIP_REGS_GPR 0x71070004
global CHIP_REGS_GPR

#***** Register DEVCPU_GCB:CHIP_REGS:SOFT_RST **************************
# Reset control register
set CHIP_REGS_SOFT_RST 0x71070008
global CHIP_REGS_SOFT_RST

#***** Register DEVCPU_GCB:CHIP_REGS:HW_CFG ****************************
# Various configrations
set CHIP_REGS_HW_CFG 0x7107000c
global CHIP_REGS_HW_CFG

#***** Register DEVCPU_GCB:CHIP_REGS:HW_STAT ***************************
# Various status indications
set CHIP_REGS_HW_STAT 0x71070010
global CHIP_REGS_HW_STAT

#***** Register DEVCPU_GCB:CHIP_REGS:FEA_STAT **************************
# Encoded features
set CHIP_REGS_FEA_STAT 0x71070014
global CHIP_REGS_FEA_STAT

#***** Register DEVCPU_GCB:CHIP_REGS:FEA_DIS ***************************
# Disable of features
set CHIP_REGS_FEA_DIS 0x71070018
global CHIP_REGS_FEA_DIS

#*********************************************************************
# Register group: DEVCPU_GCB:SW_REGS
# Software/software interaction

#***** Register DEVCPU_GCB:SW_REGS:SW_INTR *****************************
# Manually assert software interrupt
set SW_REGS_SW_INTR 0x7107001c
global SW_REGS_SW_INTR

#*********************************************************************
# Register group: DEVCPU_GCB:VCORE_ACCESS
#  VCore SBA access

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_CTRL ************************
# Control register for VCore accesses
set VCORE_ACCESS_VA_CTRL 0x71070020
global VCORE_ACCESS_VA_CTRL

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_ADDR ************************
# Address register for VCore accesses
set VCORE_ACCESS_VA_ADDR 0x71070024
global VCORE_ACCESS_VA_ADDR

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA ************************
# Data register for VCore accesses
set VCORE_ACCESS_VA_DATA 0x71070028
global VCORE_ACCESS_VA_DATA

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INCR *******************
# Data register for VCore accesses (w. auto increment of address)
set VCORE_ACCESS_VA_DATA_INCR 0x7107002c
global VCORE_ACCESS_VA_DATA_INCR

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INERT ******************
# Data register for VCore accesses (will not initiate access)
set VCORE_ACCESS_VA_DATA_INERT 0x71070030
global VCORE_ACCESS_VA_DATA_INERT

#*********************************************************************
# Register group: DEVCPU_GCB:GPIO
# GPIO configuration/status

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_SET ***************************
# Atomic set of GPIO output value
set GPIO_OUT_SET 0x71070034
global GPIO_OUT_SET

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_CLR ***************************
# Atomic clear of GPIO output value
set GPIO_OUT_CLR 0x71070038
global GPIO_OUT_CLR

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT *******************************
# GPIO output value
set GPIO_OUT 0x7107003c
global GPIO_OUT

#***** Register DEVCPU_GCB:GPIO:GPIO_IN ********************************
# Current value at GPIO pins
set GPIO_IN 0x71070040
global GPIO_IN

#***** Register DEVCPU_GCB:GPIO:GPIO_OE ********************************
# Direction of GPIOs (output enable)
set GPIO_OE 0x71070044
global GPIO_OE

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR ******************************
# Interrupt (GPIO input value change event)
set GPIO_INTR 0x71070048
global GPIO_INTR

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_ENA **************************
# GPIO interrupt enable
set GPIO_INTR_ENA 0x7107004c
global GPIO_INTR_ENA

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_IDENT ************************
# Currently interrupting GPIOs
set GPIO_INTR_ID 0x71070050
global GPIO_INTR_ID

#***** Register DEVCPU_GCB:GPIO:GPIO_ALT *******************************
# GPIO alternate functions
set GPIO_ALT_0 0x71070054
global GPIO_ALT_0
set GPIO_ALT_1 0x71070058
global GPIO_ALT_1

#*********************************************************************
# Register group: DEVCPU_GCB:MIIM
# MIIM master controller

#***** Register DEVCPU_GCB:MIIM:MII_STATUS *****************************
# MIIM status
set MIIM0_MII_STATUS 0x7107005c
global MIIM0_MII_STATUS
set MIIM1_MII_STATUS 0x71070080
global MIIM1_MII_STATUS

#***** Register DEVCPU_GCB:MIIM:MII_CFG_7226 ***************************
# MIIM VSC7226 configuration
set MIIM0_MII_CFG_7226 0x71070060
global MIIM0_MII_CFG_7226
set MIIM1_MII_CFG_7226 0x71070084
global MIIM1_MII_CFG_7226

#***** Register DEVCPU_GCB:MIIM:MII_CMD ********************************
# MIIM command
set MIIM0_MII_CMD 0x71070064
global MIIM0_MII_CMD
set MIIM1_MII_CMD 0x71070088
global MIIM1_MII_CMD

#***** Register DEVCPU_GCB:MIIM:MII_DATA *******************************
# MIIM reply data
set MIIM0_MII_DATA 0x71070068
global MIIM0_MII_DATA
set MIIM1_MII_DATA 0x7107008c
global MIIM1_MII_DATA

#***** Register DEVCPU_GCB:MIIM:MII_CFG ********************************
# MIIM configuration
set MIIM0_MII_CFG 0x7107006c
global MIIM0_MII_CFG
set MIIM1_MII_CFG 0x71070090
global MIIM1_MII_CFG

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_0 *****************************
# MIIM scan 0
set MIIM0_MII_SCAN_0 0x71070070
global MIIM0_MII_SCAN_0
set MIIM1_MII_SCAN_0 0x71070094
global MIIM1_MII_SCAN_0

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_1 *****************************
# MIIM scan 1
set MIIM0_MII_SCAN_1 0x71070074
global MIIM0_MII_SCAN_1
set MIIM1_MII_SCAN_1 0x71070098
global MIIM1_MII_SCAN_1

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS ********************
# MIIM results
set MIIM0_LAST_SCAN 0x71070078
global MIIM0_LAST_SCAN
set MIIM1_LAST_SCAN 0x7107009c
global MIIM1_LAST_SCAN

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS_VLD ****************
# MIIM results valid
set MIIM0_LAST_SCAN_VLD 0x7107007c
global MIIM0_LAST_SCAN_VLD
set MIIM1_LAST_SCAN_VLD 0x710700a0
global MIIM1_LAST_SCAN_VLD

#*********************************************************************
# Register group: DEVCPU_GCB:MIIM_READ_SCAN
# MIIM master controller scan results

#***** Register DEVCPU_GCB:MIIM_READ_SCAN:MII_SCAN_RSLTS_STICKY ********
# MIIM results sticky
set MIIM_READ_SCAN_MII_RSLTS_ST_0 0x710700a4
global MIIM_READ_SCAN_MII_RSLTS_ST_0
set MIIM_READ_SCAN_MII_RSLTS_ST_1 0x710700a8
global MIIM_READ_SCAN_MII_RSLTS_ST_1

#*********************************************************************
# Register group: DEVCPU_GCB:TEMP_SENSOR
# Temperature sensor control

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_CTRL ****************
# Temperature sensor control
set TEMP_CTRL 0x710700ac
global TEMP_CTRL

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_DATA ****************
# Temperature sensor data
set TEMP_DATA 0x710700b0
global TEMP_DATA

#*********************************************************************
# Register group: DEVCPU_GCB:SIO_CTRL
# Serial IO control configuration

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INPUT_DATA *********************
# Last value at SGPIO pins
set SIO_CTRL_SIO_INPUT_DATA_0 0x710700b4
global SIO_CTRL_SIO_INPUT_DATA_0
set SIO_CTRL_SIO_INPUT_DATA_1 0x710700b8
global SIO_CTRL_SIO_INPUT_DATA_1
set SIO_CTRL_SIO_INPUT_DATA_2 0x710700bc
global SIO_CTRL_SIO_INPUT_DATA_2
set SIO_CTRL_SIO_INPUT_DATA_3 0x710700c0
global SIO_CTRL_SIO_INPUT_DATA_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_POL ************************
# SGPIO interrupt polarity
set SIO_CTRL_SIO_INT_POL_0 0x710700c4
global SIO_CTRL_SIO_INT_POL_0
set SIO_CTRL_SIO_INT_POL_1 0x710700c8
global SIO_CTRL_SIO_INT_POL_1
set SIO_CTRL_SIO_INT_POL_2 0x710700cc
global SIO_CTRL_SIO_INT_POL_2
set SIO_CTRL_SIO_INT_POL_3 0x710700d0
global SIO_CTRL_SIO_INT_POL_3

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_INT_ENA *******************
# SGPIO interrupt enable per port
set SIO_CTRL_SIO_PORT_INT_ENA 0x710700d4
global SIO_CTRL_SIO_PORT_INT_ENA

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_CONFIG ********************
# Output configuration
set SIO_CTRL_SIO_PORT_CONFIG_0 0x710700d8
global SIO_CTRL_SIO_PORT_CONFIG_0
set SIO_CTRL_SIO_PORT_CONFIG_1 0x710700dc
global SIO_CTRL_SIO_PORT_CONFIG_1
set SIO_CTRL_SIO_PORT_CONFIG_2 0x710700e0
global SIO_CTRL_SIO_PORT_CONFIG_2
set SIO_CTRL_SIO_PORT_CONFIG_3 0x710700e4
global SIO_CTRL_SIO_PORT_CONFIG_3
set SIO_CTRL_SIO_PORT_CONFIG_4 0x710700e8
global SIO_CTRL_SIO_PORT_CONFIG_4
set SIO_CTRL_SIO_PORT_CONFIG_5 0x710700ec
global SIO_CTRL_SIO_PORT_CONFIG_5
set SIO_CTRL_SIO_PORT_CONFIG_6 0x710700f0
global SIO_CTRL_SIO_PORT_CONFIG_6
set SIO_CTRL_SIO_PORT_CONFIG_7 0x710700f4
global SIO_CTRL_SIO_PORT_CONFIG_7
set SIO_CTRL_SIO_PORT_CONFIG_8 0x710700f8
global SIO_CTRL_SIO_PORT_CONFIG_8
set SIO_CTRL_SIO_PORT_CONFIG_9 0x710700fc
global SIO_CTRL_SIO_PORT_CONFIG_9
set SIO_CTRL_SIO_PORT_CONFIG_10 0x71070100
global SIO_CTRL_SIO_PORT_CONFIG_10
set SIO_CTRL_SIO_PORT_CONFIG_11 0x71070104
global SIO_CTRL_SIO_PORT_CONFIG_11
set SIO_CTRL_SIO_PORT_CONFIG_12 0x71070108
global SIO_CTRL_SIO_PORT_CONFIG_12
set SIO_CTRL_SIO_PORT_CONFIG_13 0x7107010c
global SIO_CTRL_SIO_PORT_CONFIG_13
set SIO_CTRL_SIO_PORT_CONFIG_14 0x71070110
global SIO_CTRL_SIO_PORT_CONFIG_14
set SIO_CTRL_SIO_PORT_CONFIG_15 0x71070114
global SIO_CTRL_SIO_PORT_CONFIG_15
set SIO_CTRL_SIO_PORT_CONFIG_16 0x71070118
global SIO_CTRL_SIO_PORT_CONFIG_16
set SIO_CTRL_SIO_PORT_CONFIG_17 0x7107011c
global SIO_CTRL_SIO_PORT_CONFIG_17
set SIO_CTRL_SIO_PORT_CONFIG_18 0x71070120
global SIO_CTRL_SIO_PORT_CONFIG_18
set SIO_CTRL_SIO_PORT_CONFIG_19 0x71070124
global SIO_CTRL_SIO_PORT_CONFIG_19
set SIO_CTRL_SIO_PORT_CONFIG_20 0x71070128
global SIO_CTRL_SIO_PORT_CONFIG_20
set SIO_CTRL_SIO_PORT_CONFIG_21 0x7107012c
global SIO_CTRL_SIO_PORT_CONFIG_21
set SIO_CTRL_SIO_PORT_CONFIG_22 0x71070130
global SIO_CTRL_SIO_PORT_CONFIG_22
set SIO_CTRL_SIO_PORT_CONFIG_23 0x71070134
global SIO_CTRL_SIO_PORT_CONFIG_23
set SIO_CTRL_SIO_PORT_CONFIG_24 0x71070138
global SIO_CTRL_SIO_PORT_CONFIG_24
set SIO_CTRL_SIO_PORT_CONFIG_25 0x7107013c
global SIO_CTRL_SIO_PORT_CONFIG_25
set SIO_CTRL_SIO_PORT_CONFIG_26 0x71070140
global SIO_CTRL_SIO_PORT_CONFIG_26
set SIO_CTRL_SIO_PORT_CONFIG_27 0x71070144
global SIO_CTRL_SIO_PORT_CONFIG_27
set SIO_CTRL_SIO_PORT_CONFIG_28 0x71070148
global SIO_CTRL_SIO_PORT_CONFIG_28
set SIO_CTRL_SIO_PORT_CONFIG_29 0x7107014c
global SIO_CTRL_SIO_PORT_CONFIG_29
set SIO_CTRL_SIO_PORT_CONFIG_30 0x71070150
global SIO_CTRL_SIO_PORT_CONFIG_30
set SIO_CTRL_SIO_PORT_CONFIG_31 0x71070154
global SIO_CTRL_SIO_PORT_CONFIG_31

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_ENABLE ********************
# Port enable
set SIO_CTRL_SIO_PORT_ENABLE 0x71070158
global SIO_CTRL_SIO_PORT_ENABLE

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CONFIG *************************
# General configurations
set SIO_CTRL_SIO_CONFIG 0x7107015c
global SIO_CTRL_SIO_CONFIG

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CLOCK **************************
# SGPIO shift clock frequency
set SIO_CTRL_SIO_CLOCK 0x71070160
global SIO_CTRL_SIO_CLOCK

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_REG ************************
# Currently interrupting SGPIOs
set SIO_CTRL_SIO_INT_REG_0 0x71070164
global SIO_CTRL_SIO_INT_REG_0
set SIO_CTRL_SIO_INT_REG_1 0x71070168
global SIO_CTRL_SIO_INT_REG_1
set SIO_CTRL_SIO_INT_REG_2 0x7107016c
global SIO_CTRL_SIO_INT_REG_2
set SIO_CTRL_SIO_INT_REG_3 0x71070170
global SIO_CTRL_SIO_INT_REG_3

#*********************************************************************
# Register group: DEVCPU_GCB:FAN_CFG
# Fan controller configuration

#***** Register DEVCPU_GCB:FAN_CFG:FAN_CFG *****************************
# Fan controller configuration
set FAN_CFG_FAN_CFG 0x71070174
global FAN_CFG_FAN_CFG

#*********************************************************************
# Register group: DEVCPU_GCB:FAN_STAT
# Fan controller status

#***** Register DEVCPU_GCB:FAN_STAT:FAN_CNT ****************************
# TACH counter
set FAN_STAT_FAN_CNT 0x71070178
global FAN_STAT_FAN_CNT

#*********************************************************************
# Register group: DEVCPU_GCB:PTP_CFG
# PTP controller configuation

#***** Register DEVCPU_GCB:PTP_CFG:PTP_MISC_CFG ************************
# Misc PTP configurations
set PTP_CFG_MISC_CFG 0x7107017c
global PTP_CFG_MISC_CFG

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_CFG *****************
# Master counter upper limit
set PTP_CFG_ULIM_CFG 0x71070180
global PTP_CFG_ULIM_CFG

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_1_TIME_ADJ_CFG ******
# Master counter upper limit one time adjust
set PTP_CFG_ULIM_TIME_ADJ 0x71070184
global PTP_CFG_ULIM_TIME_ADJ

#***** Register DEVCPU_GCB:PTP_CFG:PTP_SYNC_INTR_ENA_CFG ***************
# Sync Interrupt enable
set PTP_CFG_SYNC_INTR_ENA_CFG 0x71070188
global PTP_CFG_SYNC_INTR_ENA_CFG

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_HIGH_PERIOD_CFG *********
# Generated external clock high period
set PTP_CFG_GEN_ECLK_HPER_CFG_0 0x7107018c
global PTP_CFG_GEN_ECLK_HPER_CFG_0
set PTP_CFG_GEN_ECLK_HPER_CFG_1 0x71070190
global PTP_CFG_GEN_ECLK_HPER_CFG_1

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_LOW_PERIOD_CFG **********
# Generated external clock low period
set PTP_CFG_GEN_ECLK_LPER_CFG_0 0x71070194
global PTP_CFG_GEN_ECLK_LPER_CFG_0
set PTP_CFG_GEN_ECLK_LPER_CFG_1 0x71070198
global PTP_CFG_GEN_ECLK_LPER_CFG_1

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_CFG *********************
# External clock to internal master synchronization configuration
set PTP_CFG_GEN_ECLK_CFG_0 0x7107019c
global PTP_CFG_GEN_ECLK_CFG_0
set PTP_CFG_GEN_ECLK_CFG_1 0x710701a0
global PTP_CFG_GEN_ECLK_CFG_1

#***** Register DEVCPU_GCB:PTP_CFG:CLK_ADJ_CFG *************************
# Generated clock adjustment configuration
set PTP_CFG_CLK_ADJ_CFG 0x710701a4
global PTP_CFG_CLK_ADJ_CFG

#***** Register DEVCPU_GCB:PTP_CFG:CLK_ADJ_FRQ *************************
# Generated clock frequency adjustment
set PTP_CFG_CLK_ADJ_FRQ 0x710701a8
global PTP_CFG_CLK_ADJ_FRQ

#***** Register DEVCPU_GCB:PTP_CFG:PTP_EXT_SYNC_TIME_CFG ***************
# External sync time configuration
set PTP_CFG_EXT_SYNC_TIME_CFG_0 0x710701ac
global PTP_CFG_EXT_SYNC_TIME_CFG_0
set PTP_CFG_EXT_SYNC_TIME_CFG_1 0x710701b0
global PTP_CFG_EXT_SYNC_TIME_CFG_1

#*********************************************************************
# Register group: DEVCPU_GCB:PTP_STAT
# PTP controller status

#***** Register DEVCPU_GCB:PTP_STAT:PTP_CURRENT_TIME_STAT **************
# Current PTP master timer value
set PTP_STAT_PTP_CURTIME_STAT 0x710701b4
global PTP_STAT_PTP_CURTIME_STAT

#***** Register DEVCPU_GCB:PTP_STAT:EXT_SYNC_CURRENT_TIME_STAT *********
# External sync time status
set PTP_EXT_SYNC_CURTIME_STAT_0 0x710701b8
global PTP_EXT_SYNC_CURTIME_STAT_0
set PTP_EXT_SYNC_CURTIME_STAT_1 0x710701bc
global PTP_EXT_SYNC_CURTIME_STAT_1

#***** Register DEVCPU_GCB:PTP_STAT:PTP_EVT_STAT ***********************
# External sync time events
set PTP_STAT_PTP_EVT_STAT 0x710701c0
global PTP_STAT_PTP_EVT_STAT

#*********************************************************************
# Register group: DEVCPU_GCB:MEMITGR
# Memory integrity monitor

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_CTRL ************************
# Monitor control
set MEMITGR_CTRL 0x710701c4
global MEMITGR_CTRL

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_STAT ************************
# Monitor status
set MEMITGR_STAT 0x710701c8
global MEMITGR_STAT

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_INFO ************************
# Memory indication
set MEMITGR_INFO 0x710701cc
global MEMITGR_INFO

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_IDX *************************
# Memory index
set MEMITGR_IDX 0x710701d0
global MEMITGR_IDX

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DIV *************************
# Monitor ring sync divider
set MEMITGR_DIV 0x710701d4
global MEMITGR_DIV

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DBG *************************
# Debug registers
set MEMITGR_DBG 0x710701d8
global MEMITGR_DBG

#*********************************************************************
# Register group: DEVCPU_GCB:VRAP
# VRAP controller

#***** Register DEVCPU_GCB:VRAP:VRAP_ACCESS_STAT ***********************
# VRAP events
set VRAP_ACCESS_STAT 0x710701dc
global VRAP_ACCESS_STAT

#********************************************************************** 
#
# Target CFG
#
# VCore configuration
#
#**********************************************************************

#*********************************************************************
# Register group: ICPU_CFG:CPU_SYSTEM_CTRL
# CPU system configurations

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GPR ***************************
# General purpose registers
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
# Reset settings
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

#***** Register ICPU_CFG:MPU8051:MPU8051_TIMER_CLK_DIV *****************
# 8051 timer tick divider
set I8051_TIMER_CLK_DIV 0x7000006c
global I8051_TIMER_CLK_DIV

#*********************************************************************
# Register group: ICPU_CFG:INTR
# Interrupt controller

#***** Register ICPU_CFG:INTR:INTR_RAW *********************************
# Interrupt raw status
set INTR_RAW 0x70000070
global INTR_RAW

#***** Register ICPU_CFG:INTR:INTR_TRIGGER *****************************
# Interrupt trigger mode
set INTR_TRG 0x70000074
global INTR_TRG

#***** Register ICPU_CFG:INTR:INTR_FORCE *******************************
# Interrupt force sticky event
set INTR_FORCE 0x70000078
global INTR_FORCE

#***** Register ICPU_CFG:INTR:INTR_STICKY ******************************
# Interrupt sticky status
set INTR_ST 0x7000007c
global INTR_ST

#***** Register ICPU_CFG:INTR:INTR_BYPASS ******************************
# Interrupt bypass enable
set INTR_BYPASS 0x70000080
global INTR_BYPASS

#***** Register ICPU_CFG:INTR:INTR_ENA *********************************
# Interrupt enable
set INTR_ENA 0x70000084
global INTR_ENA

#***** Register ICPU_CFG:INTR:INTR_ENA_CLR *****************************
# Atomic clear of interrupt enable
set INTR_ENA_CLR 0x70000088
global INTR_ENA_CLR

#***** Register ICPU_CFG:INTR:INTR_ENA_SET *****************************
# Atomic set of interrupt
set INTR_ENA_SET 0x7000008c
global INTR_ENA_SET

#***** Register ICPU_CFG:INTR:INTR_IDENT *******************************
# Currently active interrupt sources
set INTR_ID 0x70000090
global INTR_ID

#***** Register ICPU_CFG:INTR:DST_INTR_MAP *****************************
# Mapping of source to destination interrupts
set INTR_DST_INTR_MAP_0 0x70000094
global INTR_DST_INTR_MAP_0
set INTR_DST_INTR_MAP_1 0x70000098
global INTR_DST_INTR_MAP_1
set INTR_DST_INTR_MAP_2 0x7000009c
global INTR_DST_INTR_MAP_2
set INTR_DST_INTR_MAP_3 0x700000a0
global INTR_DST_INTR_MAP_3

#***** Register ICPU_CFG:INTR:DST_INTR_IDENT ***************************
# Currently active interrupt sources per destination
set INTR_DST_INTR_ID_0 0x700000a4
global INTR_DST_INTR_ID_0
set INTR_DST_INTR_ID_1 0x700000a8
global INTR_DST_INTR_ID_1
set INTR_DST_INTR_ID_2 0x700000ac
global INTR_DST_INTR_ID_2
set INTR_DST_INTR_ID_3 0x700000b0
global INTR_DST_INTR_ID_3

#***** Register ICPU_CFG:INTR:EXT_INTR_POL *****************************
# External interrupt polarity
set INTR_EXT_INTR_POL 0x700000b4
global INTR_EXT_INTR_POL

#***** Register ICPU_CFG:INTR:EXT_INTR_DRV *****************************
# External interrupt output drive mode
set INTR_EXT_INTR_DRV 0x700000b8
global INTR_EXT_INTR_DRV

#***** Register ICPU_CFG:INTR:EXT_INTR_DIR *****************************
# External interrupt output enable
set INTR_EXT_INTR_DIR 0x700000bc
global INTR_EXT_INTR_DIR

#***** Register ICPU_CFG:INTR:DEV_INTR_POL *****************************
# Device interrupt polarity
set INTR_DEV_INTR_POL 0x700000c0
global INTR_DEV_INTR_POL

#***** Register ICPU_CFG:INTR:DEV_INTR_RAW *****************************
# Device interrupt raw status
set INTR_DEV_INTR_RAW 0x700000c4
global INTR_DEV_INTR_RAW

#***** Register ICPU_CFG:INTR:DEV_INTR_TRIGGER *************************
# Device interrupt trigger mode
set INTR_DEV_INTR_TRG 0x700000c8
global INTR_DEV_INTR_TRG

#***** Register ICPU_CFG:INTR:DEV_INTR_STICKY **************************
# Device interrupt sticky status
set INTR_DEV_INTR_ST 0x700000cc
global INTR_DEV_INTR_ST

#***** Register ICPU_CFG:INTR:DEV_INTR_BYPASS **************************
# Device interrupt bypass enable
set INTR_DEV_INTR_BYPASS 0x700000d0
global INTR_DEV_INTR_BYPASS

#***** Register ICPU_CFG:INTR:DEV_INTR_ENA *****************************
# Device interrupt enable
set INTR_DEV_INTR_ENA 0x700000d4
global INTR_DEV_INTR_ENA

#***** Register ICPU_CFG:INTR:DEV_INTR_IDENT ***************************
# Currently active device interrupts
set INTR_DEV_INTR_ID 0x700000d8
global INTR_DEV_INTR_ID

#*********************************************************************
# Register group: ICPU_CFG:TIMERS
# Timers

#***** Register ICPU_CFG:TIMERS:WDT ************************************
# Watchdog timer
set TIMERS_WDT 0x700000dc
global TIMERS_WDT

#***** Register ICPU_CFG:TIMERS:TIMER_TICK_DIV *************************
# Timer tick divider
set TIMER_TICK_DIV 0x700000e0
global TIMER_TICK_DIV

#***** Register ICPU_CFG:TIMERS:TIMER_VALUE ****************************
# Timer value
set TIMER_VALUE_0 0x700000e4
global TIMER_VALUE_0
set TIMER_VALUE_1 0x700000e8
global TIMER_VALUE_1
set TIMER_VALUE_2 0x700000ec
global TIMER_VALUE_2

#***** Register ICPU_CFG:TIMERS:TIMER_RELOAD_VALUE *********************
# Timer reload value
set TIMER_RELOAD_VALUE_0 0x700000f0
global TIMER_RELOAD_VALUE_0
set TIMER_RELOAD_VALUE_1 0x700000f4
global TIMER_RELOAD_VALUE_1
set TIMER_RELOAD_VALUE_2 0x700000f8
global TIMER_RELOAD_VALUE_2

#***** Register ICPU_CFG:TIMERS:TIMER_CTRL *****************************
# Timer control
set TIMER_CTRL_0 0x700000fc
global TIMER_CTRL_0
set TIMER_CTRL_1 0x70000100
global TIMER_CTRL_1
set TIMER_CTRL_2 0x70000104
global TIMER_CTRL_2

#*********************************************************************
# Register group: ICPU_CFG:MEMCTRL
# DDR2/3 memory controller

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CTRL **************************
# DDR2/3 control
set MC_CTRL 0x70000108
global MC_CTRL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CFG ***************************
# DDR2/3 configuration
set MC_CFG 0x7000010c
global MC_CFG

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_STAT **************************
# DDR2/3 status
set MC_STAT 0x70000110
global MC_STAT

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_REF_PERIOD ********************
# Refresh configuration
set MC_REF_PERIOD 0x70000114
global MC_REF_PERIOD

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_ZQCAL *************************
# DDR3 ZQ-calibration
set MC_ZQCAL 0x70000118
global MC_ZQCAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING0 ***********************
# Timing configuration
set MC_TIMING0 0x7000011c
global MC_TIMING0

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING1 ***********************
# Timing configuration
set MC_TIMING1 0x70000120
global MC_TIMING1

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING2 ***********************
# Timing configuration
set MC_TIMING2 0x70000124
global MC_TIMING2

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING3 ***********************
# Timing configuration
set MC_TIMING3 0x70000128
global MC_TIMING3

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING4 ***********************
# Timing configuration
set MC_TIMING4 0x7000012c
global MC_TIMING4

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR0_VAL ***********************
# Mode register 0 value
set MC_MR0_VAL 0x70000130
global MC_MR0_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR1_VAL ***********************
# Mode register 1 value
set MC_MR1_VAL 0x70000134
global MC_MR1_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR2_VAL ***********************
# Mode register 2 value
set MC_MR2_VAL 0x70000138
global MC_MR2_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR3_VAL ***********************
# Mode register 3 value
set MC_MR3_VAL 0x7000013c
global MC_MR3_VAL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TERMRES_CTRL ******************
# On-die-termination configuration
set MC_TERMRES_CTRL 0x70000140
global MC_TERMRES_CTRL

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DFT ***************************
# Design for test features
set MC_DFT 0x70000144
global MC_DFT

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_DLY ***********************
# DQS window configuration
set MC_DQS_0 0x70000148
global MC_DQS_0
set MC_DQS_1 0x7000014c
global MC_DQS_1

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_AUTO **********************
# DQS window automatic drift detect/ajust
set MC_DQS_AUTO_0 0x70000150
global MC_DQS_AUTO_0
set MC_DQS_AUTO_1 0x70000154
global MC_DQS_AUTO_1

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_CFG ****************************
# SSTL configuration
set MC_MEMPHY_CFG 0x70000158
global MC_MEMPHY_CFG

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DFT ****************************
# Design for test features
set MC_MEMPHY_DFT 0x7000015c
global MC_MEMPHY_DFT

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG0 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG0_0 0x70000160
global MC_MEMPHY_DLLCFG0_0
set MC_MEMPHY_DLLCFG0_1 0x70000164
global MC_MEMPHY_DLLCFG0_1
set MC_MEMPHY_DLLCFG0_2 0x70000168
global MC_MEMPHY_DLLCFG0_2

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG1 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG1_0 0x7000016c
global MC_MEMPHY_DLLCFG1_0
set MC_MEMPHY_DLLCFG1_1 0x70000170
global MC_MEMPHY_DLLCFG1_1
set MC_MEMPHY_DLLCFG1_2 0x70000174
global MC_MEMPHY_DLLCFG1_2

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DQ_DLY_TRM *********************
# DQ window configuration
set MC_MEMPHY_DQ_DLY_TRM_0 0x70000178
global MC_MEMPHY_DQ_DLY_TRM_0
set MC_MEMPHY_DQ_DLY_TRM_1 0x7000017c
global MC_MEMPHY_DQ_DLY_TRM_1

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL ***************************
# SSTL drive-strength calibration
set MC_MEMPHY_ZCAL 0x70000180
global MC_MEMPHY_ZCAL

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_STAT **********************
# SSTL drive-strength status
set MC_MEMPHY_ZCAL_STAT 0x70000184
global MC_MEMPHY_ZCAL_STAT

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_OVR ***********************
# SSTL drive-strength override
set MC_MEMPHY_ZCAL_OVR 0x70000188
global MC_MEMPHY_ZCAL_OVR

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_FORCE *********************
# SSTL drive-strength force
set MC_MEMPHY_ZCAL_FORCE 0x7000018c
global MC_MEMPHY_ZCAL_FORCE

#*********************************************************************
# Register group: ICPU_CFG:TWI_DELAY
# TWI hold time configuration

#***** Register ICPU_CFG:TWI_DELAY:TWI_CONFIG **************************
# TWI hold time configuration
set TWI_DELAY_TWI_CONFIG 0x70000190
global TWI_DELAY_TWI_CONFIG

#*********************************************************************
# Register group: ICPU_CFG:TWI_SPIKE_FILTER
# TWI spike filter configuration

#***** Register ICPU_CFG:TWI_SPIKE_FILTER:TWI_SPIKE_FILTER_CFG *********
# TWI spike filter configuration
set TWI_SPIKE_FILTER_CFG 0x70000194
global TWI_SPIKE_FILTER_CFG

#*********************************************************************
# Register group: ICPU_CFG:FDMA
# Frame DMA

#***** Register ICPU_CFG:FDMA:FDMA_DCB_LLP *****************************
# Pointer to next DCB
set FDMA_DCB_LLP_0 0x70000198
global FDMA_DCB_LLP_0
set FDMA_DCB_LLP_1 0x7000019c
global FDMA_DCB_LLP_1
set FDMA_DCB_LLP_2 0x700001a0
global FDMA_DCB_LLP_2
set FDMA_DCB_LLP_3 0x700001a4
global FDMA_DCB_LLP_3

#***** Register ICPU_CFG:FDMA:FDMA_DCB_DATAP ***************************
# Pointer to data block
set FDMA_DCB_DATAP_0 0x700001a8
global FDMA_DCB_DATAP_0
set FDMA_DCB_DATAP_1 0x700001ac
global FDMA_DCB_DATAP_1
set FDMA_DCB_DATAP_2 0x700001b0
global FDMA_DCB_DATAP_2
set FDMA_DCB_DATAP_3 0x700001b4
global FDMA_DCB_DATAP_3

#***** Register ICPU_CFG:FDMA:FDMA_DCB_DATAL ***************************
# Length of data block
set FDMA_DCB_DATAL_0 0x700001b8
global FDMA_DCB_DATAL_0
set FDMA_DCB_DATAL_1 0x700001bc
global FDMA_DCB_DATAL_1
set FDMA_DCB_DATAL_2 0x700001c0
global FDMA_DCB_DATAL_2
set FDMA_DCB_DATAL_3 0x700001c4
global FDMA_DCB_DATAL_3

#***** Register ICPU_CFG:FDMA:FDMA_DCB_STAT ****************************
# Status word
set FDMA_DCB_STAT_0 0x700001c8
global FDMA_DCB_STAT_0
set FDMA_DCB_STAT_1 0x700001cc
global FDMA_DCB_STAT_1
set FDMA_DCB_STAT_2 0x700001d0
global FDMA_DCB_STAT_2
set FDMA_DCB_STAT_3 0x700001d4
global FDMA_DCB_STAT_3

#***** Register ICPU_CFG:FDMA:FDMA_DCB_LLP_PREV ************************
# Pointer to current DCB
set FDMA_DCB_LLP_PREV_0 0x700001d8
global FDMA_DCB_LLP_PREV_0
set FDMA_DCB_LLP_PREV_1 0x700001dc
global FDMA_DCB_LLP_PREV_1
set FDMA_DCB_LLP_PREV_2 0x700001e0
global FDMA_DCB_LLP_PREV_2
set FDMA_DCB_LLP_PREV_3 0x700001e4
global FDMA_DCB_LLP_PREV_3

#***** Register ICPU_CFG:FDMA:FDMA_CH_STAT *****************************
# Current channel status
set FDMA_CH_STAT 0x700001e8
global FDMA_CH_STAT

#***** Register ICPU_CFG:FDMA:FDMA_CH_SAFE *****************************
# Current channel safe-status
set FDMA_CH_SAFE 0x700001ec
global FDMA_CH_SAFE

#***** Register ICPU_CFG:FDMA:FDMA_CH_ACTIVATE *************************
# Activate specific channels
set FDMA_CH_ACTIVATE 0x700001f0
global FDMA_CH_ACTIVATE

#***** Register ICPU_CFG:FDMA:FDMA_CH_DISABLE **************************
# Disable specific channels
set FDMA_CH_DISABLE 0x700001f4
global FDMA_CH_DISABLE

#***** Register ICPU_CFG:FDMA:FDMA_CH_FORCEDIS *************************
# Ungraceful disable of specific channels
set FDMA_CH_FORCEDIS 0x700001f8
global FDMA_CH_FORCEDIS

#***** Register ICPU_CFG:FDMA:FDMA_CH_CNT ******************************
# Channel counters
set FDMA_CH_CNT_0 0x700001fc
global FDMA_CH_CNT_0
set FDMA_CH_CNT_1 0x70000200
global FDMA_CH_CNT_1
set FDMA_CH_CNT_2 0x70000204
global FDMA_CH_CNT_2
set FDMA_CH_CNT_3 0x70000208
global FDMA_CH_CNT_3

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_CNT ********************
# Injection channel token counter
set FDMA_CH_INJ_TOKEN_CNT_0 0x7000020c
global FDMA_CH_INJ_TOKEN_CNT_0
set FDMA_CH_INJ_TOKEN_CNT_1 0x70000210
global FDMA_CH_INJ_TOKEN_CNT_1

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_TICK_RLD ***************
# Injection channel token tick counter reload value
set FDMA_CH_INJ_TOKEN_TICK_RLD_0 0x70000214
global FDMA_CH_INJ_TOKEN_TICK_RLD_0
set FDMA_CH_INJ_TOKEN_TICK_RLD_1 0x70000218
global FDMA_CH_INJ_TOKEN_TICK_RLD_1

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_TICK_CNT ***************
# Injection channel token tick counter
set FDMA_CH_INJ_TOKEN_TICK_CNT_0 0x7000021c
global FDMA_CH_INJ_TOKEN_TICK_CNT_0
set FDMA_CH_INJ_TOKEN_TICK_CNT_1 0x70000220
global FDMA_CH_INJ_TOKEN_TICK_CNT_1

#***** Register ICPU_CFG:FDMA:FDMA_EVT_ERR *****************************
# Error event
set FDMA_EVT_ERR 0x70000224
global FDMA_EVT_ERR

#***** Register ICPU_CFG:FDMA:FDMA_EVT_ERR_CODE ************************
# Additional error information
set FDMA_EVT_ERR_CODE 0x70000228
global FDMA_EVT_ERR_CODE

#***** Register ICPU_CFG:FDMA:FDMA_INTR_LLP ****************************
# LLP-event
set FDMA_INTR_LLP 0x7000022c
global FDMA_INTR_LLP

#***** Register ICPU_CFG:FDMA:FDMA_INTR_LLP_ENA ************************
# LLP-event interrupt enable
set FDMA_INTR_LLP_ENA 0x70000230
global FDMA_INTR_LLP_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_FRM ****************************
# FRM-event
set FDMA_INTR_FRM 0x70000234
global FDMA_INTR_FRM

#***** Register ICPU_CFG:FDMA:FDMA_INTR_FRM_ENA ************************
# FRM-event interrupt enable
set FDMA_INTR_FRM_ENA 0x70000238
global FDMA_INTR_FRM_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_SIG ****************************
# SIG-event
set FDMA_INTR_SIG 0x7000023c
global FDMA_INTR_SIG

#***** Register ICPU_CFG:FDMA:FDMA_INTR_SIG_ENA ************************
# SIG-event interrupt enable
set FDMA_INTR_SIG_ENA 0x70000240
global FDMA_INTR_SIG_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_ENA ****************************
# Channel interrupt enable
set FDMA_INTR_ENA 0x70000244
global FDMA_INTR_ENA

#***** Register ICPU_CFG:FDMA:FDMA_INTR_IDENT **************************
# Currently interrupting channels
set FDMA_INTR_ID 0x70000248
global FDMA_INTR_ID

#***** Register ICPU_CFG:FDMA:FDMA_CH_CFG ******************************
# Channel specific configurations
set FDMA_CH_CFG_0 0x7000024c
global FDMA_CH_CFG_0
set FDMA_CH_CFG_1 0x70000250
global FDMA_CH_CFG_1
set FDMA_CH_CFG_2 0x70000254
global FDMA_CH_CFG_2
set FDMA_CH_CFG_3 0x70000258
global FDMA_CH_CFG_3

#***** Register ICPU_CFG:FDMA:FDMA_GCFG ********************************
# General FDMA configurations
set FDMA_GCFG 0x7000025c
global FDMA_GCFG

#***** Register ICPU_CFG:FDMA:FDMA_GSTAT *******************************
# General FDMA status
set FDMA_GSTAT 0x70000260
global FDMA_GSTAT

#***** Register ICPU_CFG:FDMA:FDMA_IDLECNT *****************************
# FDMA idle Counter
set FDMA_IDLECNT 0x70000264
global FDMA_IDLECNT

#***** Register ICPU_CFG:FDMA:FDMA_CONST *******************************
# Constants for this FDMA implementation.
set FDMA_CONST 0x70000268
global FDMA_CONST

#*********************************************************************
# Register group: ICPU_CFG:PCIe
# PCIe endpoint

#***** Register ICPU_CFG:PCIe:PCIE_CTRL ********************************
# PCIe endpoint control
set PCIe_PCIE_CTRL 0x7000026c
global PCIe_PCIE_CTRL

#***** Register ICPU_CFG:PCIe:PCIE_CFG *********************************
# PCIe endpoint configuration
set PCIe_PCIE_CFG 0x70000270
global PCIe_PCIE_CFG

#***** Register ICPU_CFG:PCIe:PCIE_STAT ********************************
# PCIe endpoint status
set PCIe_PCIE_STAT 0x70000274
global PCIe_PCIE_STAT

#***** Register ICPU_CFG:PCIe:PCIE_AUX_CFG *****************************
# Auxiliary power configuration
set PCIe_PCIE_AUX_CFG 0x70000278
global PCIe_PCIE_AUX_CFG

#***** Register ICPU_CFG:PCIe:PCIE_DBG_STAT ****************************
# PCIe endpoint debug status
set PCIe_PCIE_DBG_STAT 0x7000027c
global PCIe_PCIE_DBG_STAT

#***** Register ICPU_CFG:PCIe:PCIEMST_REPLY_INFO ***********************
# Additional inbound reply information
set PCIe_PCIEMST_REPLY_INFO 0x70000280
global PCIe_PCIEMST_REPLY_INFO

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR1_OFFSET **********************
# BAR1 offset into SBA address space
set PCIe_PCIEMST_BAR1_OFFSET 0x70000284
global PCIe_PCIEMST_BAR1_OFFSET

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR1_MASK ************************
# BAR1 offset mask into SBA address space
set PCIe_PCIEMST_BAR1_MASK 0x70000288
global PCIe_PCIEMST_BAR1_MASK

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR2_OFFSET **********************
# BAR2 offset into SBA address space
set PCIe_PCIEMST_BAR2_OFFSET 0x7000028c
global PCIe_PCIEMST_BAR2_OFFSET

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR2_MASK ************************
# BAR2 offset mask into SBA address space
set PCIe_PCIEMST_BAR2_MASK 0x70000290
global PCIe_PCIEMST_BAR2_MASK

#***** Register ICPU_CFG:PCIe:PCIESLV_FDMA *****************************
# FDMA access into PCIe address space
set PCIe_PCIESLV_FDMA 0x70000294
global PCIe_PCIESLV_FDMA

#***** Register ICPU_CFG:PCIe:PCIESLV_SBA ******************************
# SBA access into PCIe address space
set PCIe_PCIESLV_SBA 0x70000298
global PCIe_PCIESLV_SBA

#***** Register ICPU_CFG:PCIe:PCIEPCS_CFG ******************************
# PCIe PCS configuration
set PCIe_PCIEPCS_CFG 0x7000029c
global PCIe_PCIEPCS_CFG

#***** Register ICPU_CFG:PCIe:PCIEPCS_BEACON ***************************
# PCIe beacon parameters
set PCIe_PCIEPCS_BEACON 0x700002a0
global PCIe_PCIEPCS_BEACON

#***** Register ICPU_CFG:PCIe:PCIE_INTR ********************************
# PCIe events
set PCIe_PCIE_INTR 0x700002a4
global PCIe_PCIE_INTR

#***** Register ICPU_CFG:PCIe:PCIE_INTR_ENA ****************************
# PCIe interrupt enable
set PCIe_PCIE_INTR_ENA 0x700002a8
global PCIe_PCIE_INTR_ENA

#***** Register ICPU_CFG:PCIe:PCIE_INTR_IDENT **************************
# Currently active PCIe interrupts
set PCIe_PCIE_INTR_ID 0x700002ac
global PCIe_PCIE_INTR_ID

#***** Register ICPU_CFG:PCIe:PCIE_INTR_COMMON_CFG *********************
# PCIe outbound interrupt configuration
set PCIe_PCIE_INTR_COMMON_CFG 0x700002b0
global PCIe_PCIE_INTR_COMMON_CFG

#***** Register ICPU_CFG:PCIe:PCIE_INTR_CFG ****************************
# PCIe outbound MSI interrupt configuration
set PCIe_PCIE_INTR_CFG_0 0x700002b4
global PCIe_PCIE_INTR_CFG_0
set PCIe_PCIE_INTR_CFG_1 0x700002b8
global PCIe_PCIE_INTR_CFG_1

#***** Register ICPU_CFG:PCIe:PCIE_INTR_STAT ***************************
# PCIe outbound MSI interrupt status
set PCIe_PCIE_INTR_STAT_0 0x700002bc
global PCIe_PCIE_INTR_STAT_0
set PCIe_PCIE_INTR_STAT_1 0x700002c0
global PCIe_PCIE_INTR_STAT_1

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

