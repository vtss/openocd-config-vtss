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
proc __show_reg_CHIP_ID {name} { show_reg $name { {rev_id 31 28 } { part_id 27 12 } { mfg_id 11 1 } { one 0 0} } }
proc show_CHIP_REGS_CHIP_ID {} { __show_reg_CHIP_ID CHIP_REGS_CHIP_ID }

#***** Register DEVCPU_GCB:CHIP_REGS:GPR *******************************
# General purpose register
set CHIP_REGS_GPR 0x71070004
proc show_CHIP_REGS_GPR {} { show_reg CHIP_REGS_GPR {} }

#***** Register DEVCPU_GCB:CHIP_REGS:SOFT_RST **************************
# Reset control register
set CHIP_REGS_SOFT_RST 0x71070008
proc __show_reg_SOFT_RST {name} { show_reg $name { {rst 0 0} } }
proc show_CHIP_REGS_SOFT_RST {} { __show_reg_SOFT_RST CHIP_REGS_SOFT_RST }

#***** Register DEVCPU_GCB:CHIP_REGS:HW_CFG ****************************
# Various configrations
set CHIP_REGS_HW_CFG 0x7107000c
proc __show_reg_HW_CFG {name} { show_reg $name { {stat_ena 1 1 } { clk_mon_ena 0 0} } }
proc show_CHIP_REGS_HW_CFG {} { __show_reg_HW_CFG CHIP_REGS_HW_CFG }

#***** Register DEVCPU_GCB:CHIP_REGS:HW_STAT ***************************
# Various status indications
set CHIP_REGS_HW_STAT 0x71070010
proc __show_reg_HW_STAT {name} { show_reg $name { {fail 0 0} } }
proc show_CHIP_REGS_HW_STAT {} { __show_reg_HW_STAT CHIP_REGS_HW_STAT }

#***** Register DEVCPU_GCB:CHIP_REGS:FEA_STAT **************************
# Encoded features
set CHIP_REGS_FEA_STAT 0x71070014
proc show_CHIP_REGS_FEA_STAT {} { show_reg CHIP_REGS_FEA_STAT {} }

#***** Register DEVCPU_GCB:CHIP_REGS:FEA_DIS ***************************
# Disable of features
set CHIP_REGS_FEA_DIS 0x71070018
proc show_CHIP_REGS_FEA_DIS {} { show_reg CHIP_REGS_FEA_DIS {} }

proc show_CHIP_REGS {} {
    show_CHIP_REGS_CHIP_ID
    show_CHIP_REGS_GPR
    show_CHIP_REGS_SOFT_RST
    show_CHIP_REGS_HW_CFG
    show_CHIP_REGS_HW_STAT
    show_CHIP_REGS_FEA_STAT
    show_CHIP_REGS_FEA_DIS
}
#*********************************************************************
# Register group: DEVCPU_GCB:SW_REGS
# Software/software interaction

#***** Register DEVCPU_GCB:SW_REGS:SW_INTR *****************************
# Manually assert software interrupt
set SW_REGS_SW_INTR 0x7107001c
proc __show_reg_SW_INTR {name} { show_reg $name { {sw1_intr 1 1 } { sw0_intr 0 0} } }
proc show_SW_REGS_SW_INTR {} { __show_reg_SW_INTR SW_REGS_SW_INTR }

proc show_SW_REGS {} {
    show_SW_REGS_SW_INTR
}
#*********************************************************************
# Register group: DEVCPU_GCB:VCORE_ACCESS
#  VCore SBA access

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_CTRL ************************
# Control register for VCore accesses
set VCORE_ACCESS_VA_CTRL 0x71070020
proc __show_reg_VA_CTRL {name} { show_reg $name { {size 5 4 } { err 3 2 } { busy_rd 1 1 } { busy 0 0} } }
proc show_VCORE_ACCESS_VA_CTRL {} { __show_reg_VA_CTRL VCORE_ACCESS_VA_CTRL }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_ADDR ************************
# Address register for VCore accesses
set VCORE_ACCESS_VA_ADDR 0x71070024
proc show_VCORE_ACCESS_VA_ADDR {} { show_reg VCORE_ACCESS_VA_ADDR {} }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA ************************
# Data register for VCore accesses
set VCORE_ACCESS_VA_DATA 0x71070028
proc show_VCORE_ACCESS_VA_DATA {} { show_reg VCORE_ACCESS_VA_DATA {} }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INCR *******************
# Data register for VCore accesses (w. auto increment of address)
set VCORE_ACCESS_VA_DATA_INCR 0x7107002c
proc show_VCORE_ACCESS_VA_DATA_INCR {} { show_reg VCORE_ACCESS_VA_DATA_INCR {} }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INERT ******************
# Data register for VCore accesses (will not initiate access)
set VCORE_ACCESS_VA_DATA_INERT 0x71070030
proc show_VCORE_ACCESS_VA_DATA_INERT {} { show_reg VCORE_ACCESS_VA_DATA_INERT {} }

proc show_VCORE_ACCESS {} {
    show_VCORE_ACCESS_VA_CTRL
    show_VCORE_ACCESS_VA_ADDR
    show_VCORE_ACCESS_VA_DATA
    show_VCORE_ACCESS_VA_DATA_INCR
    show_VCORE_ACCESS_VA_DATA_INERT
}
#*********************************************************************
# Register group: DEVCPU_GCB:GPIO
# GPIO configuration/status

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_SET ***************************
# Atomic set of GPIO output value
set GPIO_OUT_SET 0x71070034
proc show_GPIO_OUT_SET {} { show_reg GPIO_OUT_SET {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_CLR ***************************
# Atomic clear of GPIO output value
set GPIO_OUT_CLR 0x71070038
proc show_GPIO_OUT_CLR {} { show_reg GPIO_OUT_CLR {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT *******************************
# GPIO output value
set GPIO_OUT 0x7107003c
proc show_GPIO_OUT {} { show_reg GPIO_OUT {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_IN ********************************
# Current value at GPIO pins
set GPIO_IN 0x71070040
proc show_GPIO_IN {} { show_reg GPIO_IN {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_OE ********************************
# Direction of GPIOs (output enable)
set GPIO_OE 0x71070044
proc show_GPIO_OE {} { show_reg GPIO_OE {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR ******************************
# Interrupt (GPIO input value change event)
set GPIO_INTR 0x71070048
proc show_GPIO_INTR {} { show_reg GPIO_INTR {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_ENA **************************
# GPIO interrupt enable
set GPIO_INTR_ENA 0x7107004c
proc show_GPIO_INTR_ENA {} { show_reg GPIO_INTR_ENA {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_IDENT ************************
# Currently interrupting GPIOs
set GPIO_INTR_ID 0x71070050
proc show_GPIO_INTR_ID {} { show_reg GPIO_INTR_ID {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_ALT *******************************
# GPIO alternate functions
set GPIO_ALT_0 0x71070054
set GPIO_ALT_1 0x71070058
proc show_GPIO_ALT_0 {} { show_reg GPIO_ALT_0 {} }
proc show_GPIO_ALT_1 {} { show_reg GPIO_ALT_1 {} }

proc show_GPIO {} {
    show_GPIO_OUT_SET
    show_GPIO_OUT_CLR
    show_GPIO_OUT
    show_GPIO_IN
    show_GPIO_OE
    show_GPIO_INTR
    show_GPIO_INTR_ENA
    show_GPIO_INTR_ID
    show_GPIO_ALT_0
    show_GPIO_ALT_1
}
#*********************************************************************
# Register group: DEVCPU_GCB:MIIM
# MIIM master controller

#***** Register DEVCPU_GCB:MIIM:MII_STATUS *****************************
# MIIM status
set MIIM0_MII_STATUS 0x7107005c
set MIIM1_MII_STATUS 0x71070080
proc __show_reg_MII_STATUS {name} { show_reg $name { {scan_complete 4 4 } { stat_busy 3 3 } { stat_opr_pend 2 2 } { stat_pending_rd 1 1 } { stat_pending_wr 0 0} } }
proc show_MIIM0_MII_STATUS {} { __show_reg_MII_STATUS MIIM0_MII_STATUS }
proc show_MIIM1_MII_STATUS {} { __show_reg_MII_STATUS MIIM1_MII_STATUS }

#***** Register DEVCPU_GCB:MIIM:MII_CFG_7226 ***************************
# MIIM VSC7226 configuration
set MIIM0_MII_CFG_7226 0x71070060
set MIIM1_MII_CFG_7226 0x71070084
proc __show_reg_MII_CFG_7226 {name} { show_reg $name { {field 9 9} } }
proc show_MIIM0_MII_CFG_7226 {} { __show_reg_MII_CFG_7226 MIIM0_MII_CFG_7226 }
proc show_MIIM1_MII_CFG_7226 {} { __show_reg_MII_CFG_7226 MIIM1_MII_CFG_7226 }

#***** Register DEVCPU_GCB:MIIM:MII_CMD ********************************
# MIIM command
set MIIM0_MII_CMD 0x71070064
set MIIM1_MII_CMD 0x71070088
proc __show_reg_MII_CMD {name} { show_reg $name { {vld 31 31 } { phyad 29 25 } { regad 24 20 } { wrdata 19 4 } { single_scan 3 3 } { opr_field 2 1 } { scan 0 0} } }
proc show_MIIM0_MII_CMD {} { __show_reg_MII_CMD MIIM0_MII_CMD }
proc show_MIIM1_MII_CMD {} { __show_reg_MII_CMD MIIM1_MII_CMD }

#***** Register DEVCPU_GCB:MIIM:MII_DATA *******************************
# MIIM reply data
set MIIM0_MII_DATA 0x71070068
set MIIM1_MII_DATA 0x7107008c
proc __show_reg_MII_DATA {name} { show_reg $name { {success 17 16 } { rddata 15 0} } }
proc show_MIIM0_MII_DATA {} { __show_reg_MII_DATA MIIM0_MII_DATA }
proc show_MIIM1_MII_DATA {} { __show_reg_MII_DATA MIIM1_MII_DATA }

#***** Register DEVCPU_GCB:MIIM:MII_CFG ********************************
# MIIM configuration
set MIIM0_MII_CFG 0x7107006c
set MIIM1_MII_CFG 0x71070090
proc __show_reg_MII_CFG {name} { show_reg $name { {deadlock_fix_dis 11 11 } { miim_cfg_prescale 7 0 } { miim_st_cfg_field 10 9 } { miim_cfg_dbg 8 8} } }
proc show_MIIM0_MII_CFG {} { __show_reg_MII_CFG MIIM0_MII_CFG }
proc show_MIIM1_MII_CFG {} { __show_reg_MII_CFG MIIM1_MII_CFG }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_0 *****************************
# MIIM scan 0
set MIIM0_MII_SCAN_0 0x71070070
set MIIM1_MII_SCAN_0 0x71070094
proc __show_reg_MII_SCAN_0 {name} { show_reg $name { {phyadhi 9 5 } { phyadlo 4 0} } }
proc show_MIIM0_MII_SCAN_0 {} { __show_reg_MII_SCAN_0 MIIM0_MII_SCAN_0 }
proc show_MIIM1_MII_SCAN_0 {} { __show_reg_MII_SCAN_0 MIIM1_MII_SCAN_0 }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_1 *****************************
# MIIM scan 1
set MIIM0_MII_SCAN_1 0x71070074
set MIIM1_MII_SCAN_1 0x71070098
proc __show_reg_MII_SCAN_1 {name} { show_reg $name { {mask 31 16 } { expect 15 0} } }
proc show_MIIM0_MII_SCAN_1 {} { __show_reg_MII_SCAN_1 MIIM0_MII_SCAN_1 }
proc show_MIIM1_MII_SCAN_1 {} { __show_reg_MII_SCAN_1 MIIM1_MII_SCAN_1 }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS ********************
# MIIM results
set MIIM0_LAST_SCAN 0x71070078
set MIIM1_LAST_SCAN 0x7107009c
proc show_MIIM0_LAST_SCAN {} { show_reg MIIM0_LAST_SCAN {} }
proc show_MIIM1_LAST_SCAN {} { show_reg MIIM1_LAST_SCAN {} }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS_VLD ****************
# MIIM results valid
set MIIM0_LAST_SCAN_VLD 0x7107007c
set MIIM1_LAST_SCAN_VLD 0x710700a0
proc show_MIIM0_LAST_SCAN_VLD {} { show_reg MIIM0_LAST_SCAN_VLD {} }
proc show_MIIM1_LAST_SCAN_VLD {} { show_reg MIIM1_LAST_SCAN_VLD {} }

proc show_MIIM {} {
    show_MIIM0_MII_STATUS
    show_MIIM1_MII_STATUS
    show_MIIM0_MII_CFG_7226
    show_MIIM1_MII_CFG_7226
    show_MIIM0_MII_CMD
    show_MIIM1_MII_CMD
    show_MIIM0_MII_DATA
    show_MIIM1_MII_DATA
    show_MIIM0_MII_CFG
    show_MIIM1_MII_CFG
    show_MIIM0_MII_SCAN_0
    show_MIIM1_MII_SCAN_0
    show_MIIM0_MII_SCAN_1
    show_MIIM1_MII_SCAN_1
    show_MIIM0_LAST_SCAN
    show_MIIM1_LAST_SCAN
    show_MIIM0_LAST_SCAN_VLD
    show_MIIM1_LAST_SCAN_VLD
}
#*********************************************************************
# Register group: DEVCPU_GCB:MIIM_READ_SCAN
# MIIM master controller scan results

#***** Register DEVCPU_GCB:MIIM_READ_SCAN:MII_SCAN_RSLTS_STICKY ********
# MIIM results sticky
set MIIM_READ_SCAN_MII_RSLTS_ST_0 0x710700a4
set MIIM_READ_SCAN_MII_RSLTS_ST_1 0x710700a8
proc show_MIIM_READ_SCAN_MII_RSLTS_ST_0 {} { show_reg MIIM_READ_SCAN_MII_RSLTS_ST_0 {} }
proc show_MIIM_READ_SCAN_MII_RSLTS_ST_1 {} { show_reg MIIM_READ_SCAN_MII_RSLTS_ST_1 {} }

proc show_MIIM_READ_SCAN {} {
    show_MIIM_READ_SCAN_MII_RSLTS_ST_0
    show_MIIM_READ_SCAN_MII_RSLTS_ST_1
}
#*********************************************************************
# Register group: DEVCPU_GCB:TEMP_SENSOR
# Temperature sensor control

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_CTRL ****************
# Temperature sensor control
set TEMP_CTRL 0x710700ac
proc __show_reg_TEMP_SENSOR_CTRL {name} { show_reg $name { {select 5 4 } { power_down 1 1 } { reset_n 0 0} } }
proc show_TEMP_CTRL {} { __show_reg_TEMP_SENSOR_CTRL TEMP_CTRL }

#***** Register DEVCPU_GCB:TEMP_SENSOR:TEMP_SENSOR_DATA ****************
# Temperature sensor data
set TEMP_DATA 0x710700b0
proc __show_reg_TEMP_SENSOR_DATA {name} { show_reg $name { {valid 8 8 } { temp_data 7 0} } }
proc show_TEMP_DATA {} { __show_reg_TEMP_SENSOR_DATA TEMP_DATA }

proc show_TEMP_SENSOR {} {
    show_TEMP_CTRL
    show_TEMP_DATA
}
#*********************************************************************
# Register group: DEVCPU_GCB:SIO_CTRL
# Serial IO control configuration

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INPUT_DATA *********************
# Last value at SGPIO pins
set SIO_CTRL_SIO_INPUT_DATA_0 0x710700b4
set SIO_CTRL_SIO_INPUT_DATA_1 0x710700b8
set SIO_CTRL_SIO_INPUT_DATA_2 0x710700bc
set SIO_CTRL_SIO_INPUT_DATA_3 0x710700c0
proc show_SIO_CTRL_SIO_INPUT_DATA_0 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_0 {} }
proc show_SIO_CTRL_SIO_INPUT_DATA_1 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_1 {} }
proc show_SIO_CTRL_SIO_INPUT_DATA_2 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_2 {} }
proc show_SIO_CTRL_SIO_INPUT_DATA_3 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_3 {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_POL ************************
# SGPIO interrupt polarity
set SIO_CTRL_SIO_INT_POL_0 0x710700c4
set SIO_CTRL_SIO_INT_POL_1 0x710700c8
set SIO_CTRL_SIO_INT_POL_2 0x710700cc
set SIO_CTRL_SIO_INT_POL_3 0x710700d0
proc show_SIO_CTRL_SIO_INT_POL_0 {} { show_reg SIO_CTRL_SIO_INT_POL_0 {} }
proc show_SIO_CTRL_SIO_INT_POL_1 {} { show_reg SIO_CTRL_SIO_INT_POL_1 {} }
proc show_SIO_CTRL_SIO_INT_POL_2 {} { show_reg SIO_CTRL_SIO_INT_POL_2 {} }
proc show_SIO_CTRL_SIO_INT_POL_3 {} { show_reg SIO_CTRL_SIO_INT_POL_3 {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_INT_ENA *******************
# SGPIO interrupt enable per port
set SIO_CTRL_SIO_PORT_INT_ENA 0x710700d4
proc show_SIO_CTRL_SIO_PORT_INT_ENA {} { show_reg SIO_CTRL_SIO_PORT_INT_ENA {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_CONFIG ********************
# Output configuration
set SIO_CTRL_SIO_PORT_CONFIG_0 0x710700d8
set SIO_CTRL_SIO_PORT_CONFIG_1 0x710700dc
set SIO_CTRL_SIO_PORT_CONFIG_2 0x710700e0
set SIO_CTRL_SIO_PORT_CONFIG_3 0x710700e4
set SIO_CTRL_SIO_PORT_CONFIG_4 0x710700e8
set SIO_CTRL_SIO_PORT_CONFIG_5 0x710700ec
set SIO_CTRL_SIO_PORT_CONFIG_6 0x710700f0
set SIO_CTRL_SIO_PORT_CONFIG_7 0x710700f4
set SIO_CTRL_SIO_PORT_CONFIG_8 0x710700f8
set SIO_CTRL_SIO_PORT_CONFIG_9 0x710700fc
set SIO_CTRL_SIO_PORT_CONFIG_10 0x71070100
set SIO_CTRL_SIO_PORT_CONFIG_11 0x71070104
set SIO_CTRL_SIO_PORT_CONFIG_12 0x71070108
set SIO_CTRL_SIO_PORT_CONFIG_13 0x7107010c
set SIO_CTRL_SIO_PORT_CONFIG_14 0x71070110
set SIO_CTRL_SIO_PORT_CONFIG_15 0x71070114
set SIO_CTRL_SIO_PORT_CONFIG_16 0x71070118
set SIO_CTRL_SIO_PORT_CONFIG_17 0x7107011c
set SIO_CTRL_SIO_PORT_CONFIG_18 0x71070120
set SIO_CTRL_SIO_PORT_CONFIG_19 0x71070124
set SIO_CTRL_SIO_PORT_CONFIG_20 0x71070128
set SIO_CTRL_SIO_PORT_CONFIG_21 0x7107012c
set SIO_CTRL_SIO_PORT_CONFIG_22 0x71070130
set SIO_CTRL_SIO_PORT_CONFIG_23 0x71070134
set SIO_CTRL_SIO_PORT_CONFIG_24 0x71070138
set SIO_CTRL_SIO_PORT_CONFIG_25 0x7107013c
set SIO_CTRL_SIO_PORT_CONFIG_26 0x71070140
set SIO_CTRL_SIO_PORT_CONFIG_27 0x71070144
set SIO_CTRL_SIO_PORT_CONFIG_28 0x71070148
set SIO_CTRL_SIO_PORT_CONFIG_29 0x7107014c
set SIO_CTRL_SIO_PORT_CONFIG_30 0x71070150
set SIO_CTRL_SIO_PORT_CONFIG_31 0x71070154
proc __show_reg_SIO_PORT_CONFIG {name} { show_reg $name { {source 11 0} } }
proc show_SIO_CTRL_SIO_PORT_CONFIG_0 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_0 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_1 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_1 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_2 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_2 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_3 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_3 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_4 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_4 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_5 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_5 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_6 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_6 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_7 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_7 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_8 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_8 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_9 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_9 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_10 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_10 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_11 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_11 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_12 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_12 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_13 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_13 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_14 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_14 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_15 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_15 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_16 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_16 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_17 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_17 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_18 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_18 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_19 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_19 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_20 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_20 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_21 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_21 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_22 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_22 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_23 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_23 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_24 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_24 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_25 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_25 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_26 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_26 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_27 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_27 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_28 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_28 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_29 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_29 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_30 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_30 }
proc show_SIO_CTRL_SIO_PORT_CONFIG_31 {} { __show_reg_SIO_PORT_CONFIG SIO_CTRL_SIO_PORT_CONFIG_31 }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_ENABLE ********************
# Port enable
set SIO_CTRL_SIO_PORT_ENABLE 0x71070158
proc show_SIO_CTRL_SIO_PORT_ENABLE {} { show_reg SIO_CTRL_SIO_PORT_ENABLE {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CONFIG *************************
# General configurations
set SIO_CTRL_SIO_CONFIG 0x7107015c
proc __show_reg_SIO_CONFIG {name} { show_reg $name { {bmode_1 21 20 } { bmode_0 19 18 } { blink_reset 17 17 } { int_ena 16 13 } { burst_gap_dis 12 12 } { burst_gap 11 7 } { single_shot 6 6 } { auto_repeat 5 5 } { ld_polarity 4 4 } { port_width 3 2 } { reverse_output 1 1 } { reverse_input 0 0} } }
proc show_SIO_CTRL_SIO_CONFIG {} { __show_reg_SIO_CONFIG SIO_CTRL_SIO_CONFIG }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CLOCK **************************
# SGPIO shift clock frequency
set SIO_CTRL_SIO_CLOCK 0x71070160
proc __show_reg_SIO_CLOCK {name} { show_reg $name { {freq 11 0} } }
proc show_SIO_CTRL_SIO_CLOCK {} { __show_reg_SIO_CLOCK SIO_CTRL_SIO_CLOCK }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_REG ************************
# Currently interrupting SGPIOs
set SIO_CTRL_SIO_INT_REG_0 0x71070164
set SIO_CTRL_SIO_INT_REG_1 0x71070168
set SIO_CTRL_SIO_INT_REG_2 0x7107016c
set SIO_CTRL_SIO_INT_REG_3 0x71070170
proc show_SIO_CTRL_SIO_INT_REG_0 {} { show_reg SIO_CTRL_SIO_INT_REG_0 {} }
proc show_SIO_CTRL_SIO_INT_REG_1 {} { show_reg SIO_CTRL_SIO_INT_REG_1 {} }
proc show_SIO_CTRL_SIO_INT_REG_2 {} { show_reg SIO_CTRL_SIO_INT_REG_2 {} }
proc show_SIO_CTRL_SIO_INT_REG_3 {} { show_reg SIO_CTRL_SIO_INT_REG_3 {} }

proc show_SIO_CTRL {} {
    show_SIO_CTRL_SIO_INPUT_DATA_0
    show_SIO_CTRL_SIO_INPUT_DATA_1
    show_SIO_CTRL_SIO_INPUT_DATA_2
    show_SIO_CTRL_SIO_INPUT_DATA_3
    show_SIO_CTRL_SIO_INT_POL_0
    show_SIO_CTRL_SIO_INT_POL_1
    show_SIO_CTRL_SIO_INT_POL_2
    show_SIO_CTRL_SIO_INT_POL_3
    show_SIO_CTRL_SIO_PORT_INT_ENA
    show_SIO_CTRL_SIO_PORT_CONFIG_0
    show_SIO_CTRL_SIO_PORT_CONFIG_1
    show_SIO_CTRL_SIO_PORT_CONFIG_2
    show_SIO_CTRL_SIO_PORT_CONFIG_3
    show_SIO_CTRL_SIO_PORT_CONFIG_4
    show_SIO_CTRL_SIO_PORT_CONFIG_5
    show_SIO_CTRL_SIO_PORT_CONFIG_6
    show_SIO_CTRL_SIO_PORT_CONFIG_7
    show_SIO_CTRL_SIO_PORT_CONFIG_8
    show_SIO_CTRL_SIO_PORT_CONFIG_9
    show_SIO_CTRL_SIO_PORT_CONFIG_10
    show_SIO_CTRL_SIO_PORT_CONFIG_11
    show_SIO_CTRL_SIO_PORT_CONFIG_12
    show_SIO_CTRL_SIO_PORT_CONFIG_13
    show_SIO_CTRL_SIO_PORT_CONFIG_14
    show_SIO_CTRL_SIO_PORT_CONFIG_15
    show_SIO_CTRL_SIO_PORT_CONFIG_16
    show_SIO_CTRL_SIO_PORT_CONFIG_17
    show_SIO_CTRL_SIO_PORT_CONFIG_18
    show_SIO_CTRL_SIO_PORT_CONFIG_19
    show_SIO_CTRL_SIO_PORT_CONFIG_20
    show_SIO_CTRL_SIO_PORT_CONFIG_21
    show_SIO_CTRL_SIO_PORT_CONFIG_22
    show_SIO_CTRL_SIO_PORT_CONFIG_23
    show_SIO_CTRL_SIO_PORT_CONFIG_24
    show_SIO_CTRL_SIO_PORT_CONFIG_25
    show_SIO_CTRL_SIO_PORT_CONFIG_26
    show_SIO_CTRL_SIO_PORT_CONFIG_27
    show_SIO_CTRL_SIO_PORT_CONFIG_28
    show_SIO_CTRL_SIO_PORT_CONFIG_29
    show_SIO_CTRL_SIO_PORT_CONFIG_30
    show_SIO_CTRL_SIO_PORT_CONFIG_31
    show_SIO_CTRL_SIO_PORT_ENABLE
    show_SIO_CTRL_SIO_CONFIG
    show_SIO_CTRL_SIO_CLOCK
    show_SIO_CTRL_SIO_INT_REG_0
    show_SIO_CTRL_SIO_INT_REG_1
    show_SIO_CTRL_SIO_INT_REG_2
    show_SIO_CTRL_SIO_INT_REG_3
}
#*********************************************************************
# Register group: DEVCPU_GCB:FAN_CFG
# Fan controller configuration

#***** Register DEVCPU_GCB:FAN_CFG:FAN_CFG *****************************
# Fan controller configuration
set FAN_CFG_FAN_CFG 0x71070174
proc __show_reg_FAN_CFG {name} { show_reg $name { {duty_cycle 23 16 } { pwm_freq 6 4 } { inv_pol 3 3 } { gate_ena 2 2 } { pwm_open_col_ena 1 1 } { fan_stat_cfg 0 0} } }
proc show_FAN_CFG_FAN_CFG {} { __show_reg_FAN_CFG FAN_CFG_FAN_CFG }

proc show_FAN_CFG {} {
    show_FAN_CFG_FAN_CFG
}
#*********************************************************************
# Register group: DEVCPU_GCB:FAN_STAT
# Fan controller status

#***** Register DEVCPU_GCB:FAN_STAT:FAN_CNT ****************************
# TACH counter
set FAN_STAT_FAN_CNT 0x71070178
proc __show_reg_FAN_CNT {name} { show_reg $name { {cnt 15 0} } }
proc show_FAN_STAT_FAN_CNT {} { __show_reg_FAN_CNT FAN_STAT_FAN_CNT }

proc show_FAN_STAT {} {
    show_FAN_STAT_FAN_CNT
}
#*********************************************************************
# Register group: DEVCPU_GCB:PTP_CFG
# PTP controller configuation

#***** Register DEVCPU_GCB:PTP_CFG:PTP_MISC_CFG ************************
# Misc PTP configurations
set PTP_CFG_MISC_CFG 0x7107017c
proc __show_reg_PTP_MISC_CFG {name} { show_reg $name { {ext_sync_outp_inv 14 13 } { ext_sync_outp_sel 12 11 } { ext_sync_outp_ena 10 9 } { ext_sync_inp_inv 8 7 } { ext_sync_inp_ena 6 5 } { ext_sync_cap_ena 4 3 } { ext_sync_ena 2 1 } { ptp_ena 0 0} } }
proc show_PTP_CFG_MISC_CFG {} { __show_reg_PTP_MISC_CFG PTP_CFG_MISC_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_CFG *****************
# Master counter upper limit
set PTP_CFG_ULIM_CFG 0x71070180
proc __show_reg_PTP_UPPER_LIMIT_CFG {name} { show_reg $name { {ulim 29 0} } }
proc show_PTP_CFG_ULIM_CFG {} { __show_reg_PTP_UPPER_LIMIT_CFG PTP_CFG_ULIM_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_1_TIME_ADJ_CFG ******
# Master counter upper limit one time adjust
set PTP_CFG_ULIM_TIME_ADJ 0x71070184
proc __show_reg_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG {name} { show_reg $name { {adj_shot 30 30 } { adj 29 0} } }
proc show_PTP_CFG_ULIM_TIME_ADJ {} { __show_reg_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG PTP_CFG_ULIM_TIME_ADJ }

#***** Register DEVCPU_GCB:PTP_CFG:PTP_SYNC_INTR_ENA_CFG ***************
# Sync Interrupt enable
set PTP_CFG_SYNC_INTR_ENA_CFG 0x71070188
proc __show_reg_PTP_SYNC_INTR_ENA_CFG {name} { show_reg $name { {ext_sync_curtime_ena 2 1 } { sync_stat_ena 0 0} } }
proc show_PTP_CFG_SYNC_INTR_ENA_CFG {} { __show_reg_PTP_SYNC_INTR_ENA_CFG PTP_CFG_SYNC_INTR_ENA_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_HIGH_PERIOD_CFG *********
# Generated external clock high period
set PTP_CFG_GEN_ECLK_HPER_CFG_0 0x7107018c
set PTP_CFG_GEN_ECLK_HPER_CFG_1 0x71070190
proc __show_reg_GEN_EXT_CLK_HIGH_PERIOD_CFG {name} { show_reg $name { {hper 29 0} } }
proc show_PTP_CFG_GEN_ECLK_HPER_CFG_0 {} { __show_reg_GEN_EXT_CLK_HIGH_PERIOD_CFG PTP_CFG_GEN_ECLK_HPER_CFG_0 }
proc show_PTP_CFG_GEN_ECLK_HPER_CFG_1 {} { __show_reg_GEN_EXT_CLK_HIGH_PERIOD_CFG PTP_CFG_GEN_ECLK_HPER_CFG_1 }

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_LOW_PERIOD_CFG **********
# Generated external clock low period
set PTP_CFG_GEN_ECLK_LPER_CFG_0 0x71070194
set PTP_CFG_GEN_ECLK_LPER_CFG_1 0x71070198
proc __show_reg_GEN_EXT_CLK_LOW_PERIOD_CFG {name} { show_reg $name { {lper 29 0} } }
proc show_PTP_CFG_GEN_ECLK_LPER_CFG_0 {} { __show_reg_GEN_EXT_CLK_LOW_PERIOD_CFG PTP_CFG_GEN_ECLK_LPER_CFG_0 }
proc show_PTP_CFG_GEN_ECLK_LPER_CFG_1 {} { __show_reg_GEN_EXT_CLK_LOW_PERIOD_CFG PTP_CFG_GEN_ECLK_LPER_CFG_1 }

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_CFG *********************
# External clock to internal master synchronization configuration
set PTP_CFG_GEN_ECLK_CFG_0 0x7107019c
set PTP_CFG_GEN_ECLK_CFG_1 0x710701a0
proc __show_reg_GEN_EXT_CLK_CFG {name} { show_reg $name { {sync_ena 2 2 } { adj_ena 1 1 } { ena 0 0} } }
proc show_PTP_CFG_GEN_ECLK_CFG_0 {} { __show_reg_GEN_EXT_CLK_CFG PTP_CFG_GEN_ECLK_CFG_0 }
proc show_PTP_CFG_GEN_ECLK_CFG_1 {} { __show_reg_GEN_EXT_CLK_CFG PTP_CFG_GEN_ECLK_CFG_1 }

#***** Register DEVCPU_GCB:PTP_CFG:CLK_ADJ_CFG *************************
# Generated clock adjustment configuration
set PTP_CFG_CLK_ADJ_CFG 0x710701a4
proc __show_reg_CLK_ADJ_CFG {name} { show_reg $name { {dir 2 2 } { ena 1 1 } { upd 0 0} } }
proc show_PTP_CFG_CLK_ADJ_CFG {} { __show_reg_CLK_ADJ_CFG PTP_CFG_CLK_ADJ_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:CLK_ADJ_FRQ *************************
# Generated clock frequency adjustment
set PTP_CFG_CLK_ADJ_FRQ 0x710701a8
proc __show_reg_CLK_ADJ_FRQ {name} { show_reg $name { {adj 29 0} } }
proc show_PTP_CFG_CLK_ADJ_FRQ {} { __show_reg_CLK_ADJ_FRQ PTP_CFG_CLK_ADJ_FRQ }

#***** Register DEVCPU_GCB:PTP_CFG:PTP_EXT_SYNC_TIME_CFG ***************
# External sync time configuration
set PTP_CFG_EXT_SYNC_TIME_CFG_0 0x710701ac
set PTP_CFG_EXT_SYNC_TIME_CFG_1 0x710701b0
proc __show_reg_PTP_EXT_SYNC_TIME_CFG {name} { show_reg $name { {time 29 0} } }
proc show_PTP_CFG_EXT_SYNC_TIME_CFG_0 {} { __show_reg_PTP_EXT_SYNC_TIME_CFG PTP_CFG_EXT_SYNC_TIME_CFG_0 }
proc show_PTP_CFG_EXT_SYNC_TIME_CFG_1 {} { __show_reg_PTP_EXT_SYNC_TIME_CFG PTP_CFG_EXT_SYNC_TIME_CFG_1 }

proc show_PTP_CFG {} {
    show_PTP_CFG_MISC_CFG
    show_PTP_CFG_ULIM_CFG
    show_PTP_CFG_ULIM_TIME_ADJ
    show_PTP_CFG_SYNC_INTR_ENA_CFG
    show_PTP_CFG_GEN_ECLK_HPER_CFG_0
    show_PTP_CFG_GEN_ECLK_HPER_CFG_1
    show_PTP_CFG_GEN_ECLK_LPER_CFG_0
    show_PTP_CFG_GEN_ECLK_LPER_CFG_1
    show_PTP_CFG_GEN_ECLK_CFG_0
    show_PTP_CFG_GEN_ECLK_CFG_1
    show_PTP_CFG_CLK_ADJ_CFG
    show_PTP_CFG_CLK_ADJ_FRQ
    show_PTP_CFG_EXT_SYNC_TIME_CFG_0
    show_PTP_CFG_EXT_SYNC_TIME_CFG_1
}
#*********************************************************************
# Register group: DEVCPU_GCB:PTP_STAT
# PTP controller status

#***** Register DEVCPU_GCB:PTP_STAT:PTP_CURRENT_TIME_STAT **************
# Current PTP master timer value
set PTP_STAT_PTP_CURTIME_STAT 0x710701b4
proc __show_reg_PTP_CURRENT_TIME_STAT {name} { show_reg $name { {curtime 29 0} } }
proc show_PTP_STAT_PTP_CURTIME_STAT {} { __show_reg_PTP_CURRENT_TIME_STAT PTP_STAT_PTP_CURTIME_STAT }

#***** Register DEVCPU_GCB:PTP_STAT:EXT_SYNC_CURRENT_TIME_STAT *********
# External sync time status
set PTP_EXT_SYNC_CURTIME_STAT_0 0x710701b8
set PTP_EXT_SYNC_CURTIME_STAT_1 0x710701bc
proc __show_reg_EXT_SYNC_CURRENT_TIME_STAT {name} { show_reg $name { {curtime 29 0} } }
proc show_PTP_EXT_SYNC_CURTIME_STAT_0 {} { __show_reg_EXT_SYNC_CURRENT_TIME_STAT PTP_EXT_SYNC_CURTIME_STAT_0 }
proc show_PTP_EXT_SYNC_CURTIME_STAT_1 {} { __show_reg_EXT_SYNC_CURRENT_TIME_STAT PTP_EXT_SYNC_CURTIME_STAT_1 }

#***** Register DEVCPU_GCB:PTP_STAT:PTP_EVT_STAT ***********************
# External sync time events
set PTP_STAT_PTP_EVT_STAT 0x710701c0
proc __show_reg_PTP_EVT_STAT {name} { show_reg $name { {clk_adj_upd_st 3 3 } { ext_sync_curtime_st 2 1 } { sync_stat 0 0} } }
proc show_PTP_STAT_PTP_EVT_STAT {} { __show_reg_PTP_EVT_STAT PTP_STAT_PTP_EVT_STAT }

proc show_PTP_STAT {} {
    show_PTP_STAT_PTP_CURTIME_STAT
    show_PTP_EXT_SYNC_CURTIME_STAT_0
    show_PTP_EXT_SYNC_CURTIME_STAT_1
    show_PTP_STAT_PTP_EVT_STAT
}
#*********************************************************************
# Register group: DEVCPU_GCB:MEMITGR
# Memory integrity monitor

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_CTRL ************************
# Monitor control
set MEMITGR_CTRL 0x710701c4
proc __show_reg_MEMITGR_CTRL {name} { show_reg $name { {activate 0 0} } }
proc show_MEMITGR_CTRL {} { __show_reg_MEMITGR_CTRL MEMITGR_CTRL }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_STAT ************************
# Monitor status
set MEMITGR_STAT 0x710701c8
proc __show_reg_MEMITGR_STAT {name} { show_reg $name { {indication_ovf 5 5 } { indication 4 4 } { mode_listen 3 3 } { mode_detect 2 2 } { mode_idle 1 1 } { mode_busy 0 0} } }
proc show_MEMITGR_STAT {} { __show_reg_MEMITGR_STAT MEMITGR_STAT }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_INFO ************************
# Memory indication
set MEMITGR_INFO 0x710701cc
proc __show_reg_MEMITGR_INFO {name} { show_reg $name { {err 31 31 } { cor 30 30 } { err_ovf 29 29 } { cor_ovf 28 28 } { addr 27 0} } }
proc show_MEMITGR_INFO {} { __show_reg_MEMITGR_INFO MEMITGR_INFO }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_IDX *************************
# Memory index
set MEMITGR_IDX 0x710701d0
proc __show_reg_MEMITGR_IDX {name} { show_reg $name { {idx 15 0} } }
proc show_MEMITGR_IDX {} { __show_reg_MEMITGR_IDX MEMITGR_IDX }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DIV *************************
# Monitor ring sync divider
set MEMITGR_DIV 0x710701d4
proc __show_reg_MEMITGR_DIV {name} { show_reg $name { {div 15 0} } }
proc show_MEMITGR_DIV {} { __show_reg_MEMITGR_DIV MEMITGR_DIV }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DBG *************************
# Debug registers
set MEMITGR_DBG 0x710701d8
proc __show_reg_MEMITGR_DBG {name} { show_reg $name { {mem_div_sense 9 9 } { force_intr 8 8 } { sync_in 7 7 } { ena_in 6 6 } { data_in 5 5 } { intr_in 4 4 } { sync_out 3 3 } { ena_out 2 2 } { force_ena 1 1 } { detect_ena 0 0} } }
proc show_MEMITGR_DBG {} { __show_reg_MEMITGR_DBG MEMITGR_DBG }

proc show_MEMITGR {} {
    show_MEMITGR_CTRL
    show_MEMITGR_STAT
    show_MEMITGR_INFO
    show_MEMITGR_IDX
    show_MEMITGR_DIV
    show_MEMITGR_DBG
}
#*********************************************************************
# Register group: DEVCPU_GCB:VRAP
# VRAP controller

#***** Register DEVCPU_GCB:VRAP:VRAP_ACCESS_STAT ***********************
# VRAP events
set VRAP_ACCESS_STAT 0x710701dc
proc __show_reg_VRAP_ACCESS_STAT {name} { show_reg $name { {frm_recv_st 3 3 } { cmd_invalid_st 2 2 } { frm_invalid_st 1 1 } { reply_abort_st 0 0} } }
proc show_VRAP_ACCESS_STAT {} { __show_reg_VRAP_ACCESS_STAT VRAP_ACCESS_STAT }

proc show_VRAP {} {
    show_VRAP_ACCESS_STAT
}
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
set SYS_GPR_1 0x70000004
set SYS_GPR_2 0x70000008
set SYS_GPR_3 0x7000000c
set SYS_GPR_4 0x70000010
set SYS_GPR_5 0x70000014
set SYS_GPR_6 0x70000018
set SYS_GPR_7 0x7000001c
proc show_SYS_GPR_0 {} { show_reg SYS_GPR_0 {} }
proc show_SYS_GPR_1 {} { show_reg SYS_GPR_1 {} }
proc show_SYS_GPR_2 {} { show_reg SYS_GPR_2 {} }
proc show_SYS_GPR_3 {} { show_reg SYS_GPR_3 {} }
proc show_SYS_GPR_4 {} { show_reg SYS_GPR_4 {} }
proc show_SYS_GPR_5 {} { show_reg SYS_GPR_5 {} }
proc show_SYS_GPR_6 {} { show_reg SYS_GPR_6 {} }
proc show_SYS_GPR_7 {} { show_reg SYS_GPR_7 {} }

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:RESET *************************
# Reset settings
set SYS_RESET 0x70000020
proc __show_reg_RESET {name} { show_reg $name { {core_rst_cpu_only 3 3 } { core_rst_protect 2 2 } { core_rst_force 1 1 } { mem_rst_force 0 0} } }
proc show_SYS_RESET {} { __show_reg_RESET SYS_RESET }

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_CTRL ******************
# General control
set SYS_GEN_CTRL 0x70000024
proc __show_reg_GENERAL_CTRL {name} { show_reg $name { {cpu_busif_sleep_dis 11 11 } { cpu_busif_werr_ena 10 10 } { cpu_8051_irom_ena 9 9 } { cpu_mips_dis 8 8 } { if_miim_slv_ena 7 7 } { if_pi_slv_donepol 6 6 } { if_pi_mst_ena 5 5 } { if_pi_slv_ena 4 4 } { if_si_mst_ena 3 3 } { cpu_be_ena 2 2 } { cpu_dis 1 1 } { boot_mode_ena 0 0} } }
proc show_SYS_GEN_CTRL {} { __show_reg_GENERAL_CTRL SYS_GEN_CTRL }

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_STAT ******************
# General status
set SYS_GEN_STAT 0x70000028
proc __show_reg_GENERAL_STAT {name} { show_reg $name { {pi_slv_wr_err 9 9 } { pi_slv_rd_err 8 8 } { vcore_cfg 7 4 } { reg_if_err 3 1 } { cpu_sleep 0 0} } }
proc show_SYS_GEN_STAT {} { __show_reg_GENERAL_STAT SYS_GEN_STAT }

proc show_CPU_SYSTEM_CTRL {} {
    show_SYS_GPR_0
    show_SYS_GPR_1
    show_SYS_GPR_2
    show_SYS_GPR_3
    show_SYS_GPR_4
    show_SYS_GPR_5
    show_SYS_GPR_6
    show_SYS_GPR_7
    show_SYS_RESET
    show_SYS_GEN_CTRL
    show_SYS_GEN_STAT
}
#*********************************************************************
# Register group: ICPU_CFG:PI_MST
# Parallel Interface Configuration

#***** Register ICPU_CFG:PI_MST:PI_MST_CFG *****************************
# PI Master Configuration
set PI_MST_CFG 0x7000002c
proc __show_reg_PI_MST_CFG {name} { show_reg $name { {ate_mode_dis 7 7 } { clk_pol 6 6 } { tristate_ctrl 5 5 } { clk_div 4 0} } }
proc show_PI_MST_CFG {} { __show_reg_PI_MST_CFG PI_MST_CFG }

#***** Register ICPU_CFG:PI_MST:PI_MST_CTRL ****************************
# PI Master Control Register
set PI_MST_CTRL 0x70000030
proc __show_reg_PI_MST_CTRL {name} { show_reg $name { {dpaced_xfer_ena 22 22 } { dpaced_timeout_ena 21 21 } { dpaced_timeout 20 18 } { cs_tristate_ctrl 17 17 } { done_pol 16 16 } { smpl_on_done 15 15 } { waitcc 14 7 } { cscc 6 5 } { oecc 4 3 } { hldcc 2 0} } }
proc show_PI_MST_CTRL {} { __show_reg_PI_MST_CTRL PI_MST_CTRL }

#***** Register ICPU_CFG:PI_MST:PI_MST_STATUS **************************
# PI Master Status Registers
set PI_MST_STATUS 0x70000034
proc __show_reg_PI_MST_STATUS {name} { show_reg $name { {st 0 0} } }
proc show_PI_MST_STATUS {} { __show_reg_PI_MST_STATUS PI_MST_STATUS }

#***** Register ICPU_CFG:PI_MST:PI_SLV_CFG *****************************
# PI Slave Configuration
set PI_MST_PI_SLV_CFG 0x70000038
proc __show_reg_PI_SLV_CFG {name} { show_reg $name { {donepol_val 28 28 } { donepol_set 27 27 } { bigendian 26 26 } { donepark 25 20 } { donewait 19 8 } { cswait 7 0} } }
proc show_PI_MST_PI_SLV_CFG {} { __show_reg_PI_SLV_CFG PI_MST_PI_SLV_CFG }

proc show_PI_MST {} {
    show_PI_MST_CFG
    show_PI_MST_CTRL
    show_PI_MST_STATUS
    show_PI_MST_PI_SLV_CFG
}
#*********************************************************************
# Register group: ICPU_CFG:SPI_MST
# SPI boot master

#***** Register ICPU_CFG:SPI_MST:SPI_MST_CFG ***************************
# SPI boot master configuration
set SPI_MST_CFG 0x7000003c
proc __show_reg_SPI_MST_CFG {name} { show_reg $name { {fast_read_ena 10 10 } { cs_deselect_time 9 5 } { clk_div 4 0} } }
proc show_SPI_MST_CFG {} { __show_reg_SPI_MST_CFG SPI_MST_CFG }

#***** Register ICPU_CFG:SPI_MST:SPI_MST_STATUS ************************
# SPI boot master status
set SPI_MST_STATUS_0 0x70000040
set SPI_MST_STATUS_1 0x70000044
set SPI_MST_STATUS_2 0x70000048
set SPI_MST_STATUS_3 0x7000004c
proc __show_reg_SPI_MST_STATUS {name} { show_reg $name { {err 0 0} } }
proc show_SPI_MST_STATUS_0 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_0 }
proc show_SPI_MST_STATUS_1 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_1 }
proc show_SPI_MST_STATUS_2 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_2 }
proc show_SPI_MST_STATUS_3 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_3 }

#***** Register ICPU_CFG:SPI_MST:SW_MODE *******************************
# Manual control of the SPI interface
set SPI_MST_SW_MODE 0x70000050
proc __show_reg_SW_MODE {name} { show_reg $name { {pin_ctrl_mode 13 13 } { spi_sck 12 12 } { spi_sck_oe 11 11 } { spi_sdo 10 10 } { spi_sdo_oe 9 9 } { spi_cs 8 5 } { spi_cs_oe 4 1 } { spi_sdi 0 0} } }
proc show_SPI_MST_SW_MODE {} { __show_reg_SW_MODE SPI_MST_SW_MODE }

proc show_SPI_MST {} {
    show_SPI_MST_CFG
    show_SPI_MST_STATUS_0
    show_SPI_MST_STATUS_1
    show_SPI_MST_STATUS_2
    show_SPI_MST_STATUS_3
    show_SPI_MST_SW_MODE
}
#*********************************************************************
# Register group: ICPU_CFG:MPU8051
# Configuration/status for the 8051

#***** Register ICPU_CFG:MPU8051:MPU8051_CFG ***************************
# 8051 configuration
set MPU8051_CFG 0x70000054
proc __show_reg_MPU8051_CFG {name} { show_reg $name { {ena 0 0} } }
proc show_MPU8051_CFG {} { __show_reg_MPU8051_CFG MPU8051_CFG }

#***** Register ICPU_CFG:MPU8051:MPU8051_STAT **************************
# 8051 status
set MPU8051_STAT 0x70000058
proc __show_reg_MPU8051_STAT {name} { show_reg $name { {sba_err 9 9 } { stop 8 8 } { gpr 7 0} } }
proc show_MPU8051_STAT {} { __show_reg_MPU8051_STAT MPU8051_STAT }

#***** Register ICPU_CFG:MPU8051:MPU8051_MMAP **************************
# 8051 memory mapping mechanism
set MPU8051_MMAP 0x7000005c
proc __show_reg_MPU8051_MMAP {name} { show_reg $name { {msaddr_code_high 7 7 } { msaddr_code_low 6 6 } { msaddr_data_high 5 5 } { msaddr_data_low 4 4 } { map_code_high 3 3 } { map_code_low 2 2 } { map_data_high 1 1 } { map_data_low 0 0} } }
proc show_MPU8051_MMAP {} { __show_reg_MPU8051_MMAP MPU8051_MMAP }

#***** Register ICPU_CFG:MPU8051:MEMACC_CTRL ***************************
# 8051 memory load/examine configuration/status
set MPU8051_MEMACC_CTRL 0x70000060
proc __show_reg_MEMACC_CTRL {name} { show_reg $name { {examine 1 1 } { do 0 0} } }
proc show_MPU8051_MEMACC_CTRL {} { __show_reg_MEMACC_CTRL MPU8051_MEMACC_CTRL }

#***** Register ICPU_CFG:MPU8051:MEMACC ********************************
# 8051 memory offset configuration
set MPU8051_MEMACC 0x70000064
proc __show_reg_MEMACC {name} { show_reg $name { {stop 31 18 } { start 15 2} } }
proc show_MPU8051_MEMACC {} { __show_reg_MEMACC MPU8051_MEMACC }

#***** Register ICPU_CFG:MPU8051:MEMACC_SBA ****************************
# SBA memory offset configuration
set MPU8051_MEMACC_SBA 0x70000068
proc __show_reg_MEMACC_SBA {name} { show_reg $name { {start 31 2} } }
proc show_MPU8051_MEMACC_SBA {} { __show_reg_MEMACC_SBA MPU8051_MEMACC_SBA }

#***** Register ICPU_CFG:MPU8051:MPU8051_TIMER_CLK_DIV *****************
# 8051 timer tick divider
set I8051_TIMER_CLK_DIV 0x7000006c
proc __show_reg_MPU8051_TIMER_CLK_DIV {name} { show_reg $name { {div 16 0} } }
proc show_I8051_TIMER_CLK_DIV {} { __show_reg_MPU8051_TIMER_CLK_DIV I8051_TIMER_CLK_DIV }

proc show_MPU8051 {} {
    show_MPU8051_CFG
    show_MPU8051_STAT
    show_MPU8051_MMAP
    show_MPU8051_MEMACC_CTRL
    show_MPU8051_MEMACC
    show_MPU8051_MEMACC_SBA
    show_I8051_TIMER_CLK_DIV
}
#*********************************************************************
# Register group: ICPU_CFG:INTR
# Interrupt controller

#***** Register ICPU_CFG:INTR:INTR_RAW *********************************
# Interrupt raw status
set INTR_RAW 0x70000070
proc __show_reg_INTR_RAW {name} { show_reg $name { {raw 24 0} } }
proc show_INTR_RAW {} { __show_reg_INTR_RAW INTR_RAW }

#***** Register ICPU_CFG:INTR:INTR_TRIGGER *****************************
# Interrupt trigger mode
set INTR_TRG 0x70000074
proc __show_reg_INTR_TRIGGER {name} { show_reg $name { {trg 24 0} } }
proc show_INTR_TRG {} { __show_reg_INTR_TRIGGER INTR_TRG }

#***** Register ICPU_CFG:INTR:INTR_FORCE *******************************
# Interrupt force sticky event
set INTR_FORCE 0x70000078
proc __show_reg_INTR_FORCE {name} { show_reg $name { {force 24 0} } }
proc show_INTR_FORCE {} { __show_reg_INTR_FORCE INTR_FORCE }

#***** Register ICPU_CFG:INTR:INTR_STICKY ******************************
# Interrupt sticky status
set INTR_ST 0x7000007c
proc __show_reg_INTR_STICKY {name} { show_reg $name { {st 24 0} } }
proc show_INTR_ST {} { __show_reg_INTR_STICKY INTR_ST }

#***** Register ICPU_CFG:INTR:INTR_BYPASS ******************************
# Interrupt bypass enable
set INTR_BYPASS 0x70000080
proc __show_reg_INTR_BYPASS {name} { show_reg $name { {bypass 24 0} } }
proc show_INTR_BYPASS {} { __show_reg_INTR_BYPASS INTR_BYPASS }

#***** Register ICPU_CFG:INTR:INTR_ENA *********************************
# Interrupt enable
set INTR_ENA 0x70000084
proc __show_reg_INTR_ENA {name} { show_reg $name { {ena 24 0} } }
proc show_INTR_ENA {} { __show_reg_INTR_ENA INTR_ENA }

#***** Register ICPU_CFG:INTR:INTR_ENA_CLR *****************************
# Atomic clear of interrupt enable
set INTR_ENA_CLR 0x70000088
proc __show_reg_INTR_ENA_CLR {name} { show_reg $name { {clr 24 0} } }
proc show_INTR_ENA_CLR {} { __show_reg_INTR_ENA_CLR INTR_ENA_CLR }

#***** Register ICPU_CFG:INTR:INTR_ENA_SET *****************************
# Atomic set of interrupt
set INTR_ENA_SET 0x7000008c
proc __show_reg_INTR_ENA_SET {name} { show_reg $name { {set 24 0} } }
proc show_INTR_ENA_SET {} { __show_reg_INTR_ENA_SET INTR_ENA_SET }

#***** Register ICPU_CFG:INTR:INTR_IDENT *******************************
# Currently active interrupt sources
set INTR_ID 0x70000090
proc __show_reg_INTR_IDENT {name} { show_reg $name { {id 24 0} } }
proc show_INTR_ID {} { __show_reg_INTR_IDENT INTR_ID }

#***** Register ICPU_CFG:INTR:DST_INTR_MAP *****************************
# Mapping of source to destination interrupts
set INTR_DST_INTR_MAP_0 0x70000094
set INTR_DST_INTR_MAP_1 0x70000098
set INTR_DST_INTR_MAP_2 0x7000009c
set INTR_DST_INTR_MAP_3 0x700000a0
proc __show_reg_DST_INTR_MAP {name} { show_reg $name { {map 24 0} } }
proc show_INTR_DST_INTR_MAP_0 {} { __show_reg_DST_INTR_MAP INTR_DST_INTR_MAP_0 }
proc show_INTR_DST_INTR_MAP_1 {} { __show_reg_DST_INTR_MAP INTR_DST_INTR_MAP_1 }
proc show_INTR_DST_INTR_MAP_2 {} { __show_reg_DST_INTR_MAP INTR_DST_INTR_MAP_2 }
proc show_INTR_DST_INTR_MAP_3 {} { __show_reg_DST_INTR_MAP INTR_DST_INTR_MAP_3 }

#***** Register ICPU_CFG:INTR:DST_INTR_IDENT ***************************
# Currently active interrupt sources per destination
set INTR_DST_INTR_ID_0 0x700000a4
set INTR_DST_INTR_ID_1 0x700000a8
set INTR_DST_INTR_ID_2 0x700000ac
set INTR_DST_INTR_ID_3 0x700000b0
proc __show_reg_DST_INTR_IDENT {name} { show_reg $name { {id 24 0} } }
proc show_INTR_DST_INTR_ID_0 {} { __show_reg_DST_INTR_IDENT INTR_DST_INTR_ID_0 }
proc show_INTR_DST_INTR_ID_1 {} { __show_reg_DST_INTR_IDENT INTR_DST_INTR_ID_1 }
proc show_INTR_DST_INTR_ID_2 {} { __show_reg_DST_INTR_IDENT INTR_DST_INTR_ID_2 }
proc show_INTR_DST_INTR_ID_3 {} { __show_reg_DST_INTR_IDENT INTR_DST_INTR_ID_3 }

#***** Register ICPU_CFG:INTR:EXT_INTR_POL *****************************
# External interrupt polarity
set INTR_EXT_INTR_POL 0x700000b4
proc __show_reg_EXT_INTR_POL {name} { show_reg $name { {pol 1 0} } }
proc show_INTR_EXT_INTR_POL {} { __show_reg_EXT_INTR_POL INTR_EXT_INTR_POL }

#***** Register ICPU_CFG:INTR:EXT_INTR_DRV *****************************
# External interrupt output drive mode
set INTR_EXT_INTR_DRV 0x700000b8
proc __show_reg_EXT_INTR_DRV {name} { show_reg $name { {drv 1 0} } }
proc show_INTR_EXT_INTR_DRV {} { __show_reg_EXT_INTR_DRV INTR_EXT_INTR_DRV }

#***** Register ICPU_CFG:INTR:EXT_INTR_DIR *****************************
# External interrupt output enable
set INTR_EXT_INTR_DIR 0x700000bc
proc __show_reg_EXT_INTR_DIR {name} { show_reg $name { {dir 1 0} } }
proc show_INTR_EXT_INTR_DIR {} { __show_reg_EXT_INTR_DIR INTR_EXT_INTR_DIR }

#***** Register ICPU_CFG:INTR:DEV_INTR_POL *****************************
# Device interrupt polarity
set INTR_DEV_INTR_POL 0x700000c0
proc __show_reg_DEV_INTR_POL {name} { show_reg $name { {pol 10 0} } }
proc show_INTR_DEV_INTR_POL {} { __show_reg_DEV_INTR_POL INTR_DEV_INTR_POL }

#***** Register ICPU_CFG:INTR:DEV_INTR_RAW *****************************
# Device interrupt raw status
set INTR_DEV_INTR_RAW 0x700000c4
proc __show_reg_DEV_INTR_RAW {name} { show_reg $name { {raw 10 0} } }
proc show_INTR_DEV_INTR_RAW {} { __show_reg_DEV_INTR_RAW INTR_DEV_INTR_RAW }

#***** Register ICPU_CFG:INTR:DEV_INTR_TRIGGER *************************
# Device interrupt trigger mode
set INTR_DEV_INTR_TRG 0x700000c8
proc __show_reg_DEV_INTR_TRIGGER {name} { show_reg $name { {trg 10 0} } }
proc show_INTR_DEV_INTR_TRG {} { __show_reg_DEV_INTR_TRIGGER INTR_DEV_INTR_TRG }

#***** Register ICPU_CFG:INTR:DEV_INTR_STICKY **************************
# Device interrupt sticky status
set INTR_DEV_INTR_ST 0x700000cc
proc __show_reg_DEV_INTR_STICKY {name} { show_reg $name { {st 10 0} } }
proc show_INTR_DEV_INTR_ST {} { __show_reg_DEV_INTR_STICKY INTR_DEV_INTR_ST }

#***** Register ICPU_CFG:INTR:DEV_INTR_BYPASS **************************
# Device interrupt bypass enable
set INTR_DEV_INTR_BYPASS 0x700000d0
proc __show_reg_DEV_INTR_BYPASS {name} { show_reg $name { {bypass 10 0} } }
proc show_INTR_DEV_INTR_BYPASS {} { __show_reg_DEV_INTR_BYPASS INTR_DEV_INTR_BYPASS }

#***** Register ICPU_CFG:INTR:DEV_INTR_ENA *****************************
# Device interrupt enable
set INTR_DEV_INTR_ENA 0x700000d4
proc __show_reg_DEV_INTR_ENA {name} { show_reg $name { {ena 10 0} } }
proc show_INTR_DEV_INTR_ENA {} { __show_reg_DEV_INTR_ENA INTR_DEV_INTR_ENA }

#***** Register ICPU_CFG:INTR:DEV_INTR_IDENT ***************************
# Currently active device interrupts
set INTR_DEV_INTR_ID 0x700000d8
proc __show_reg_DEV_INTR_IDENT {name} { show_reg $name { {id 10 0} } }
proc show_INTR_DEV_INTR_ID {} { __show_reg_DEV_INTR_IDENT INTR_DEV_INTR_ID }

proc show_INTR {} {
    show_INTR_RAW
    show_INTR_TRG
    show_INTR_FORCE
    show_INTR_ST
    show_INTR_BYPASS
    show_INTR_ENA
    show_INTR_ENA_CLR
    show_INTR_ENA_SET
    show_INTR_ID
    show_INTR_DST_INTR_MAP_0
    show_INTR_DST_INTR_MAP_1
    show_INTR_DST_INTR_MAP_2
    show_INTR_DST_INTR_MAP_3
    show_INTR_DST_INTR_ID_0
    show_INTR_DST_INTR_ID_1
    show_INTR_DST_INTR_ID_2
    show_INTR_DST_INTR_ID_3
    show_INTR_EXT_INTR_POL
    show_INTR_EXT_INTR_DRV
    show_INTR_EXT_INTR_DIR
    show_INTR_DEV_INTR_POL
    show_INTR_DEV_INTR_RAW
    show_INTR_DEV_INTR_TRG
    show_INTR_DEV_INTR_ST
    show_INTR_DEV_INTR_BYPASS
    show_INTR_DEV_INTR_ENA
    show_INTR_DEV_INTR_ID
}
#*********************************************************************
# Register group: ICPU_CFG:TIMERS
# Timers

#***** Register ICPU_CFG:TIMERS:WDT ************************************
# Watchdog timer
set TIMERS_WDT 0x700000dc
proc __show_reg_WDT {name} { show_reg $name { {status 9 9 } { enable 8 8 } { lock 7 0} } }
proc show_TIMERS_WDT {} { __show_reg_WDT TIMERS_WDT }

#***** Register ICPU_CFG:TIMERS:TIMER_TICK_DIV *************************
# Timer tick divider
set TIMER_TICK_DIV 0x700000e0
proc __show_reg_TIMER_TICK_DIV {name} { show_reg $name { {div 17 0} } }
proc show_TIMER_TICK_DIV {} { __show_reg_TIMER_TICK_DIV TIMER_TICK_DIV }

#***** Register ICPU_CFG:TIMERS:TIMER_VALUE ****************************
# Timer value
set TIMER_VALUE_0 0x700000e4
set TIMER_VALUE_1 0x700000e8
set TIMER_VALUE_2 0x700000ec
proc show_TIMER_VALUE_0 {} { show_reg TIMER_VALUE_0 {} }
proc show_TIMER_VALUE_1 {} { show_reg TIMER_VALUE_1 {} }
proc show_TIMER_VALUE_2 {} { show_reg TIMER_VALUE_2 {} }

#***** Register ICPU_CFG:TIMERS:TIMER_RELOAD_VALUE *********************
# Timer reload value
set TIMER_RELOAD_VALUE_0 0x700000f0
set TIMER_RELOAD_VALUE_1 0x700000f4
set TIMER_RELOAD_VALUE_2 0x700000f8
proc show_TIMER_RELOAD_VALUE_0 {} { show_reg TIMER_RELOAD_VALUE_0 {} }
proc show_TIMER_RELOAD_VALUE_1 {} { show_reg TIMER_RELOAD_VALUE_1 {} }
proc show_TIMER_RELOAD_VALUE_2 {} { show_reg TIMER_RELOAD_VALUE_2 {} }

#***** Register ICPU_CFG:TIMERS:TIMER_CTRL *****************************
# Timer control
set TIMER_CTRL_0 0x700000fc
set TIMER_CTRL_1 0x70000100
set TIMER_CTRL_2 0x70000104
proc __show_reg_TIMER_CTRL {name} { show_reg $name { {max_freq_ena 3 3 } { one_shot_ena 2 2 } { timer_ena 1 1 } { force_reload 0 0} } }
proc show_TIMER_CTRL_0 {} { __show_reg_TIMER_CTRL TIMER_CTRL_0 }
proc show_TIMER_CTRL_1 {} { __show_reg_TIMER_CTRL TIMER_CTRL_1 }
proc show_TIMER_CTRL_2 {} { __show_reg_TIMER_CTRL TIMER_CTRL_2 }

proc show_TIMERS {} {
    show_TIMERS_WDT
    show_TIMER_TICK_DIV
    show_TIMER_VALUE_0
    show_TIMER_VALUE_1
    show_TIMER_VALUE_2
    show_TIMER_RELOAD_VALUE_0
    show_TIMER_RELOAD_VALUE_1
    show_TIMER_RELOAD_VALUE_2
    show_TIMER_CTRL_0
    show_TIMER_CTRL_1
    show_TIMER_CTRL_2
}
#*********************************************************************
# Register group: ICPU_CFG:MEMCTRL
# DDR2/3 memory controller

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CTRL **************************
# DDR2/3 control
set MC_CTRL 0x70000108
proc __show_reg_MEMCTRL_CTRL {name} { show_reg $name { {pwr_down 3 3 } { mdset 2 2 } { stall_ref_ena 1 1 } { initialize 0 0} } }
proc show_MC_CTRL {} { __show_reg_MEMCTRL_CTRL MC_CTRL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CFG ***************************
# DDR2/3 configuration
set MC_CFG 0x7000010c
proc __show_reg_MEMCTRL_CFG {name} { show_reg $name { {ddr_512mbyte_plus 16 16 } { ddr_ecc_err_ena 15 15 } { ddr_ecc_cor_ena 14 14 } { ddr_ecc_ena 13 13 } { ddr_width 12 12 } { ddr_mode 11 11 } { burst_size 10 10 } { burst_len 9 9 } { bank_cnt 8 8 } { msb_row_addr 7 4 } { msb_col_addr 3 0} } }
proc show_MC_CFG {} { __show_reg_MEMCTRL_CFG MC_CFG }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_STAT **************************
# DDR2/3 status
set MC_STAT 0x70000110
proc __show_reg_MEMCTRL_STAT {name} { show_reg $name { {rdata_masked 5 5 } { rdata_dummy 4 4 } { rdata_ecc_err 3 3 } { rdata_ecc_cor 2 2 } { pwr_down_ack 1 1 } { init_done 0 0} } }
proc show_MC_STAT {} { __show_reg_MEMCTRL_STAT MC_STAT }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_REF_PERIOD ********************
# Refresh configuration
set MC_REF_PERIOD 0x70000114
proc __show_reg_MEMCTRL_REF_PERIOD {name} { show_reg $name { {max_pend_ref 19 16 } { ref_period 15 0} } }
proc show_MC_REF_PERIOD {} { __show_reg_MEMCTRL_REF_PERIOD MC_REF_PERIOD }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_ZQCAL *************************
# DDR3 ZQ-calibration
set MC_ZQCAL 0x70000118
proc __show_reg_MEMCTRL_ZQCAL {name} { show_reg $name { {long 1 1 } { short 0 0} } }
proc show_MC_ZQCAL {} { __show_reg_MEMCTRL_ZQCAL MC_ZQCAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING0 ***********************
# Timing configuration
set MC_TIMING0 0x7000011c
proc __show_reg_MEMCTRL_TIMING0 {name} { show_reg $name { {rd2wr 31 28 } { wr_cs_chg 27 24 } { rd_cs_chg 23 20 } { ras2prech 19 16 } { wr2prech 15 12 } { rd2prech 11 8 } { wr_data_xfr 7 4 } { rd_data_xfr 3 0} } }
proc show_MC_TIMING0 {} { __show_reg_MEMCTRL_TIMING0 MC_TIMING0 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING1 ***********************
# Timing configuration
set MC_TIMING1 0x70000120
proc __show_reg_MEMCTRL_TIMING1 {name} { show_reg $name { {ras2ras_same_bank 31 24 } { bank8_faw 23 16 } { prech2ras 15 12 } { ras2ras 11 8 } { ras2cas 7 4 } { wr2rd 3 0} } }
proc show_MC_TIMING1 {} { __show_reg_MEMCTRL_TIMING1 MC_TIMING1 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING2 ***********************
# Timing configuration
set MC_TIMING2 0x70000124
proc __show_reg_MEMCTRL_TIMING2 {name} { show_reg $name { {prech_all 31 28 } { mdset 27 24 } { ref 23 16 } { init 15 0} } }
proc show_MC_TIMING2 {} { __show_reg_MEMCTRL_TIMING2 MC_TIMING2 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING3 ***********************
# Timing configuration
set MC_TIMING3 0x70000128
proc __show_reg_MEMCTRL_TIMING3 {name} { show_reg $name { {rmw 19 16 } { odt_rd 15 12 } { odt_wr 11 8 } { local_odt_rd 7 4 } { wr2rd_cs_chg 3 0} } }
proc show_MC_TIMING3 {} { __show_reg_MEMCTRL_TIMING3 MC_TIMING3 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING4 ***********************
# Timing configuration
set MC_TIMING4 0x7000012c
proc __show_reg_MEMCTRL_TIMING4 {name} { show_reg $name { {init 31 20 } { long 19 8 } { short 7 0} } }
proc show_MC_TIMING4 {} { __show_reg_MEMCTRL_TIMING4 MC_TIMING4 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR0_VAL ***********************
# Mode register 0 value
set MC_MR0_VAL 0x70000130
proc __show_reg_MEMCTRL_MR0_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR0_VAL {} { __show_reg_MEMCTRL_MR0_VAL MC_MR0_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR1_VAL ***********************
# Mode register 1 value
set MC_MR1_VAL 0x70000134
proc __show_reg_MEMCTRL_MR1_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR1_VAL {} { __show_reg_MEMCTRL_MR1_VAL MC_MR1_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR2_VAL ***********************
# Mode register 2 value
set MC_MR2_VAL 0x70000138
proc __show_reg_MEMCTRL_MR2_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR2_VAL {} { __show_reg_MEMCTRL_MR2_VAL MC_MR2_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR3_VAL ***********************
# Mode register 3 value
set MC_MR3_VAL 0x7000013c
proc __show_reg_MEMCTRL_MR3_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR3_VAL {} { __show_reg_MEMCTRL_MR3_VAL MC_MR3_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TERMRES_CTRL ******************
# On-die-termination configuration
set MC_TERMRES_CTRL 0x70000140
proc __show_reg_MEMCTRL_TERMRES_CTRL {name} { show_reg $name { {odt_rd_ext 11 11 } { odt_rd_ena 10 7 } { odt_wr_ext 6 6 } { odt_wr_ena 5 2 } { local_odt_rd_ext 1 1 } { local_odt_rd_ena 0 0} } }
proc show_MC_TERMRES_CTRL {} { __show_reg_MEMCTRL_TERMRES_CTRL MC_TERMRES_CTRL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DFT ***************************
# Design for test features
set MC_DFT 0x70000144
proc __show_reg_MEMCTRL_DFT {name} { show_reg $name { {lbw 7 7 } { gate_ena 6 6 } { term_ena 5 5 } { a10 4 4 } { stat 3 3 } { mode 2 1 } { ena 0 0} } }
proc show_MC_DFT {} { __show_reg_MEMCTRL_DFT MC_DFT }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_DLY ***********************
# DQS window configuration
set MC_DQS_0 0x70000148
set MC_DQS_1 0x7000014c
proc __show_reg_MEMCTRL_DQS_DLY {name} { show_reg $name { {train_dq_ena 11 11 } { dqs_dly_trm1 10 8 } { dqs_dly_trm0 7 5 } { dqs 4 0} } }
proc show_MC_DQS_0 {} { __show_reg_MEMCTRL_DQS_DLY MC_DQS_0 }
proc show_MC_DQS_1 {} { __show_reg_MEMCTRL_DQS_DLY MC_DQS_1 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_AUTO **********************
# DQS window automatic drift detect/ajust
set MC_DQS_AUTO_0 0x70000150
set MC_DQS_AUTO_1 0x70000154
proc __show_reg_MEMCTRL_DQS_AUTO {name} { show_reg $name { {drift 7 6 } { overflow 5 5 } { underflow 4 4 } { auto_src 3 3 } { auto_up 2 2 } { auto_down 1 1 } { auto_ena 0 0} } }
proc show_MC_DQS_AUTO_0 {} { __show_reg_MEMCTRL_DQS_AUTO MC_DQS_AUTO_0 }
proc show_MC_DQS_AUTO_1 {} { __show_reg_MEMCTRL_DQS_AUTO MC_DQS_AUTO_1 }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_CFG ****************************
# SSTL configuration
set MC_MEMPHY_CFG 0x70000158
proc __show_reg_MEMPHY_CFG {name} { show_reg $name { {flush_dis 10 10 } { rd_adj_dis 9 9 } { dqs_ext 8 8 } { fifo_rst 7 7 } { dll_bl_rst 6 6 } { dll_cl_rst 5 5 } { odt_oe 4 4 } { ck_oe 3 3 } { cl_oe 2 2 } { sstl_ena 1 1 } { rst 0 0} } }
proc show_MC_MEMPHY_CFG {} { __show_reg_MEMPHY_CFG MC_MEMPHY_CFG }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DFT ****************************
# Design for test features
set MC_MEMPHY_DFT 0x7000015c
proc __show_reg_MEMPHY_DFT {name} { show_reg $name { {dll_bypass 2 2 } { at_oe 1 1 } { dt_sstl_ena 0 0} } }
proc show_MC_MEMPHY_DFT {} { __show_reg_MEMPHY_DFT MC_MEMPHY_DFT }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG0 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG0_0 0x70000160
set MC_MEMPHY_DLLCFG0_1 0x70000164
set MC_MEMPHY_DLLCFG0_2 0x70000168
proc __show_reg_MEMPHY_DLLCFG0 {name} { show_reg $name { {res6 31 30 } { lock_det_en 29 29 } { res5 28 27 } { bias_trm3 26 24 } { res4 23 23 } { bias_trm2 22 20 } { res3 19 19 } { bias_trm1 18 16 } { res2 15 15 } { bias_trm0 14 12 } { res1 11 11 } { test_ctrl_a 10 9 } { test_ctrl_d 8 6 } { test_ctrl_en 5 5 } { ipump_trm 4 2 } { res0 1 0} } }
proc show_MC_MEMPHY_DLLCFG0_0 {} { __show_reg_MEMPHY_DLLCFG0 MC_MEMPHY_DLLCFG0_0 }
proc show_MC_MEMPHY_DLLCFG0_1 {} { __show_reg_MEMPHY_DLLCFG0 MC_MEMPHY_DLLCFG0_1 }
proc show_MC_MEMPHY_DLLCFG0_2 {} { __show_reg_MEMPHY_DLLCFG0 MC_MEMPHY_DLLCFG0_2 }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG1 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG1_0 0x7000016c
set MC_MEMPHY_DLLCFG1_1 0x70000170
set MC_MEMPHY_DLLCFG1_2 0x70000174
proc __show_reg_MEMPHY_DLLCFG1 {name} { show_reg $name { {res9 19 19 } { test_hizb_a 18 18 } { res8 17 12 } { ff_trm 11 9 } { fb_trm 8 6 } { res7 5 0} } }
proc show_MC_MEMPHY_DLLCFG1_0 {} { __show_reg_MEMPHY_DLLCFG1 MC_MEMPHY_DLLCFG1_0 }
proc show_MC_MEMPHY_DLLCFG1_1 {} { __show_reg_MEMPHY_DLLCFG1 MC_MEMPHY_DLLCFG1_1 }
proc show_MC_MEMPHY_DLLCFG1_2 {} { __show_reg_MEMPHY_DLLCFG1 MC_MEMPHY_DLLCFG1_2 }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DQ_DLY_TRM *********************
# DQ window configuration
set MC_MEMPHY_DQ_DLY_TRM_0 0x70000178
set MC_MEMPHY_DQ_DLY_TRM_1 0x7000017c
proc show_MC_MEMPHY_DQ_DLY_TRM_0 {} { show_reg MC_MEMPHY_DQ_DLY_TRM_0 {} }
proc show_MC_MEMPHY_DQ_DLY_TRM_1 {} { show_reg MC_MEMPHY_DQ_DLY_TRM_1 {} }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL ***************************
# SSTL drive-strength calibration
set MC_MEMPHY_ZCAL 0x70000180
proc __show_reg_MEMPHY_ZCAL {name} { show_reg $name { {clk_sel 9 9 } { prog_odt 8 5 } { prog 4 1 } { ena 0 0} } }
proc show_MC_MEMPHY_ZCAL {} { __show_reg_MEMPHY_ZCAL MC_MEMPHY_ZCAL }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_STAT **********************
# SSTL drive-strength status
set MC_MEMPHY_ZCAL_STAT 0x70000184
proc __show_reg_MEMPHY_ZCAL_STAT {name} { show_reg $name { {zctrl 31 12 } { stat_odtpu 9 8 } { stat_odtpd 7 6 } { stat_pu 5 4 } { stat_pd 3 2 } { err 1 1 } { done 0 0} } }
proc show_MC_MEMPHY_ZCAL_STAT {} { __show_reg_MEMPHY_ZCAL_STAT MC_MEMPHY_ZCAL_STAT }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_OVR ***********************
# SSTL drive-strength override
set MC_MEMPHY_ZCAL_OVR 0x70000188
proc __show_reg_MEMPHY_ZCAL_OVR {name} { show_reg $name { {ovr_data 31 12 } { enaclr_dis 2 2 } { zcomp 1 1 } { ovr_ena 0 0} } }
proc show_MC_MEMPHY_ZCAL_OVR {} { __show_reg_MEMPHY_ZCAL_OVR MC_MEMPHY_ZCAL_OVR }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_FORCE *********************
# SSTL drive-strength force
set MC_MEMPHY_ZCAL_FORCE 0x7000018c
proc __show_reg_MEMPHY_ZCAL_FORCE {name} { show_reg $name { {zcal 3 2 } { zq_off 1 1 } { ena 0 0} } }
proc show_MC_MEMPHY_ZCAL_FORCE {} { __show_reg_MEMPHY_ZCAL_FORCE MC_MEMPHY_ZCAL_FORCE }

proc show_MEMCTRL {} {
    show_MC_CTRL
    show_MC_CFG
    show_MC_STAT
    show_MC_REF_PERIOD
    show_MC_ZQCAL
    show_MC_TIMING0
    show_MC_TIMING1
    show_MC_TIMING2
    show_MC_TIMING3
    show_MC_TIMING4
    show_MC_MR0_VAL
    show_MC_MR1_VAL
    show_MC_MR2_VAL
    show_MC_MR3_VAL
    show_MC_TERMRES_CTRL
    show_MC_DFT
    show_MC_DQS_0
    show_MC_DQS_1
    show_MC_DQS_AUTO_0
    show_MC_DQS_AUTO_1
    show_MC_MEMPHY_CFG
    show_MC_MEMPHY_DFT
    show_MC_MEMPHY_DLLCFG0_0
    show_MC_MEMPHY_DLLCFG0_1
    show_MC_MEMPHY_DLLCFG0_2
    show_MC_MEMPHY_DLLCFG1_0
    show_MC_MEMPHY_DLLCFG1_1
    show_MC_MEMPHY_DLLCFG1_2
    show_MC_MEMPHY_DQ_DLY_TRM_0
    show_MC_MEMPHY_DQ_DLY_TRM_1
    show_MC_MEMPHY_ZCAL
    show_MC_MEMPHY_ZCAL_STAT
    show_MC_MEMPHY_ZCAL_OVR
    show_MC_MEMPHY_ZCAL_FORCE
}
#*********************************************************************
# Register group: ICPU_CFG:TWI_DELAY
# TWI hold time configuration

#***** Register ICPU_CFG:TWI_DELAY:TWI_CONFIG **************************
# TWI hold time configuration
set TWI_DELAY_TWI_CONFIG 0x70000190
proc __show_reg_TWI_CONFIG {name} { show_reg $name { {cnt_reload 8 1 } { delay_enable 0 0} } }
proc show_TWI_DELAY_TWI_CONFIG {} { __show_reg_TWI_CONFIG TWI_DELAY_TWI_CONFIG }

proc show_TWI_DELAY {} {
    show_TWI_DELAY_TWI_CONFIG
}
#*********************************************************************
# Register group: ICPU_CFG:TWI_SPIKE_FILTER
# TWI spike filter configuration

#***** Register ICPU_CFG:TWI_SPIKE_FILTER:TWI_SPIKE_FILTER_CFG *********
# TWI spike filter configuration
set TWI_SPIKE_FILTER_CFG 0x70000194
proc __show_reg_TWI_SPIKE_FILTER_CFG {name} { show_reg $name { {cfg 4 0} } }
proc show_TWI_SPIKE_FILTER_CFG {} { __show_reg_TWI_SPIKE_FILTER_CFG TWI_SPIKE_FILTER_CFG }

proc show_TWI_SPIKE_FILTER {} {
    show_TWI_SPIKE_FILTER_CFG
}
#*********************************************************************
# Register group: ICPU_CFG:FDMA
# Frame DMA

#***** Register ICPU_CFG:FDMA:FDMA_DCB_LLP *****************************
# Pointer to next DCB
set FDMA_DCB_LLP_0 0x70000198
set FDMA_DCB_LLP_1 0x7000019c
set FDMA_DCB_LLP_2 0x700001a0
set FDMA_DCB_LLP_3 0x700001a4
proc show_FDMA_DCB_LLP_0 {} { show_reg FDMA_DCB_LLP_0 {} }
proc show_FDMA_DCB_LLP_1 {} { show_reg FDMA_DCB_LLP_1 {} }
proc show_FDMA_DCB_LLP_2 {} { show_reg FDMA_DCB_LLP_2 {} }
proc show_FDMA_DCB_LLP_3 {} { show_reg FDMA_DCB_LLP_3 {} }

#***** Register ICPU_CFG:FDMA:FDMA_DCB_DATAP ***************************
# Pointer to data block
set FDMA_DCB_DATAP_0 0x700001a8
set FDMA_DCB_DATAP_1 0x700001ac
set FDMA_DCB_DATAP_2 0x700001b0
set FDMA_DCB_DATAP_3 0x700001b4
proc show_FDMA_DCB_DATAP_0 {} { show_reg FDMA_DCB_DATAP_0 {} }
proc show_FDMA_DCB_DATAP_1 {} { show_reg FDMA_DCB_DATAP_1 {} }
proc show_FDMA_DCB_DATAP_2 {} { show_reg FDMA_DCB_DATAP_2 {} }
proc show_FDMA_DCB_DATAP_3 {} { show_reg FDMA_DCB_DATAP_3 {} }

#***** Register ICPU_CFG:FDMA:FDMA_DCB_DATAL ***************************
# Length of data block
set FDMA_DCB_DATAL_0 0x700001b8
set FDMA_DCB_DATAL_1 0x700001bc
set FDMA_DCB_DATAL_2 0x700001c0
set FDMA_DCB_DATAL_3 0x700001c4
proc __show_reg_FDMA_DCB_DATAL {name} { show_reg $name { {token 17 17 } { datal 15 0} } }
proc show_FDMA_DCB_DATAL_0 {} { __show_reg_FDMA_DCB_DATAL FDMA_DCB_DATAL_0 }
proc show_FDMA_DCB_DATAL_1 {} { __show_reg_FDMA_DCB_DATAL FDMA_DCB_DATAL_1 }
proc show_FDMA_DCB_DATAL_2 {} { __show_reg_FDMA_DCB_DATAL FDMA_DCB_DATAL_2 }
proc show_FDMA_DCB_DATAL_3 {} { __show_reg_FDMA_DCB_DATAL FDMA_DCB_DATAL_3 }

#***** Register ICPU_CFG:FDMA:FDMA_DCB_STAT ****************************
# Status word
set FDMA_DCB_STAT_0 0x700001c8
set FDMA_DCB_STAT_1 0x700001cc
set FDMA_DCB_STAT_2 0x700001d0
set FDMA_DCB_STAT_3 0x700001d4
proc __show_reg_FDMA_DCB_STAT {name} { show_reg $name { {blocko 31 20 } { pd 19 19 } { abort 18 18 } { eof 17 17 } { sof 16 16 } { blockl 15 0} } }
proc show_FDMA_DCB_STAT_0 {} { __show_reg_FDMA_DCB_STAT FDMA_DCB_STAT_0 }
proc show_FDMA_DCB_STAT_1 {} { __show_reg_FDMA_DCB_STAT FDMA_DCB_STAT_1 }
proc show_FDMA_DCB_STAT_2 {} { __show_reg_FDMA_DCB_STAT FDMA_DCB_STAT_2 }
proc show_FDMA_DCB_STAT_3 {} { __show_reg_FDMA_DCB_STAT FDMA_DCB_STAT_3 }

#***** Register ICPU_CFG:FDMA:FDMA_DCB_LLP_PREV ************************
# Pointer to current DCB
set FDMA_DCB_LLP_PREV_0 0x700001d8
set FDMA_DCB_LLP_PREV_1 0x700001dc
set FDMA_DCB_LLP_PREV_2 0x700001e0
set FDMA_DCB_LLP_PREV_3 0x700001e4
proc __show_reg_FDMA_DCB_LLP_PREV {name} { show_reg $name { {prev 31 2} } }
proc show_FDMA_DCB_LLP_PREV_0 {} { __show_reg_FDMA_DCB_LLP_PREV FDMA_DCB_LLP_PREV_0 }
proc show_FDMA_DCB_LLP_PREV_1 {} { __show_reg_FDMA_DCB_LLP_PREV FDMA_DCB_LLP_PREV_1 }
proc show_FDMA_DCB_LLP_PREV_2 {} { __show_reg_FDMA_DCB_LLP_PREV FDMA_DCB_LLP_PREV_2 }
proc show_FDMA_DCB_LLP_PREV_3 {} { __show_reg_FDMA_DCB_LLP_PREV FDMA_DCB_LLP_PREV_3 }

#***** Register ICPU_CFG:FDMA:FDMA_CH_STAT *****************************
# Current channel status
set FDMA_CH_STAT 0x700001e8
proc __show_reg_FDMA_CH_STAT {name} { show_reg $name { {stat 3 0} } }
proc show_FDMA_CH_STAT {} { __show_reg_FDMA_CH_STAT FDMA_CH_STAT }

#***** Register ICPU_CFG:FDMA:FDMA_CH_SAFE *****************************
# Current channel safe-status
set FDMA_CH_SAFE 0x700001ec
proc __show_reg_FDMA_CH_SAFE {name} { show_reg $name { {safe 3 0} } }
proc show_FDMA_CH_SAFE {} { __show_reg_FDMA_CH_SAFE FDMA_CH_SAFE }

#***** Register ICPU_CFG:FDMA:FDMA_CH_ACTIVATE *************************
# Activate specific channels
set FDMA_CH_ACTIVATE 0x700001f0
proc __show_reg_FDMA_CH_ACTIVATE {name} { show_reg $name { {activate 3 0} } }
proc show_FDMA_CH_ACTIVATE {} { __show_reg_FDMA_CH_ACTIVATE FDMA_CH_ACTIVATE }

#***** Register ICPU_CFG:FDMA:FDMA_CH_DISABLE **************************
# Disable specific channels
set FDMA_CH_DISABLE 0x700001f4
proc __show_reg_FDMA_CH_DISABLE {name} { show_reg $name { {disable 3 0} } }
proc show_FDMA_CH_DISABLE {} { __show_reg_FDMA_CH_DISABLE FDMA_CH_DISABLE }

#***** Register ICPU_CFG:FDMA:FDMA_CH_FORCEDIS *************************
# Ungraceful disable of specific channels
set FDMA_CH_FORCEDIS 0x700001f8
proc __show_reg_FDMA_CH_FORCEDIS {name} { show_reg $name { {forcedis 3 0} } }
proc show_FDMA_CH_FORCEDIS {} { __show_reg_FDMA_CH_FORCEDIS FDMA_CH_FORCEDIS }

#***** Register ICPU_CFG:FDMA:FDMA_CH_CNT ******************************
# Channel counters
set FDMA_CH_CNT_0 0x700001fc
set FDMA_CH_CNT_1 0x70000200
set FDMA_CH_CNT_2 0x70000204
set FDMA_CH_CNT_3 0x70000208
proc __show_reg_FDMA_CH_CNT {name} { show_reg $name { {frm 31 16 } { dcb 15 8 } { sig 7 0} } }
proc show_FDMA_CH_CNT_0 {} { __show_reg_FDMA_CH_CNT FDMA_CH_CNT_0 }
proc show_FDMA_CH_CNT_1 {} { __show_reg_FDMA_CH_CNT FDMA_CH_CNT_1 }
proc show_FDMA_CH_CNT_2 {} { __show_reg_FDMA_CH_CNT FDMA_CH_CNT_2 }
proc show_FDMA_CH_CNT_3 {} { __show_reg_FDMA_CH_CNT FDMA_CH_CNT_3 }

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_CNT ********************
# Injection channel token counter
set FDMA_CH_INJ_TOKEN_CNT_0 0x7000020c
set FDMA_CH_INJ_TOKEN_CNT_1 0x70000210
proc __show_reg_FDMA_CH_INJ_TOKEN_CNT {name} { show_reg $name { {cnt 7 0} } }
proc show_FDMA_CH_INJ_TOKEN_CNT_0 {} { __show_reg_FDMA_CH_INJ_TOKEN_CNT FDMA_CH_INJ_TOKEN_CNT_0 }
proc show_FDMA_CH_INJ_TOKEN_CNT_1 {} { __show_reg_FDMA_CH_INJ_TOKEN_CNT FDMA_CH_INJ_TOKEN_CNT_1 }

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_TICK_RLD ***************
# Injection channel token tick counter reload value
set FDMA_CH_INJ_TOKEN_TICK_RLD_0 0x70000214
set FDMA_CH_INJ_TOKEN_TICK_RLD_1 0x70000218
proc show_FDMA_CH_INJ_TOKEN_TICK_RLD_0 {} { show_reg FDMA_CH_INJ_TOKEN_TICK_RLD_0 {} }
proc show_FDMA_CH_INJ_TOKEN_TICK_RLD_1 {} { show_reg FDMA_CH_INJ_TOKEN_TICK_RLD_1 {} }

#***** Register ICPU_CFG:FDMA:FDMA_CH_INJ_TOKEN_TICK_CNT ***************
# Injection channel token tick counter
set FDMA_CH_INJ_TOKEN_TICK_CNT_0 0x7000021c
set FDMA_CH_INJ_TOKEN_TICK_CNT_1 0x70000220
proc show_FDMA_CH_INJ_TOKEN_TICK_CNT_0 {} { show_reg FDMA_CH_INJ_TOKEN_TICK_CNT_0 {} }
proc show_FDMA_CH_INJ_TOKEN_TICK_CNT_1 {} { show_reg FDMA_CH_INJ_TOKEN_TICK_CNT_1 {} }

#***** Register ICPU_CFG:FDMA:FDMA_EVT_ERR *****************************
# Error event
set FDMA_EVT_ERR 0x70000224
proc __show_reg_FDMA_EVT_ERR {name} { show_reg $name { {err 3 0} } }
proc show_FDMA_EVT_ERR {} { __show_reg_FDMA_EVT_ERR FDMA_EVT_ERR }

#***** Register ICPU_CFG:FDMA:FDMA_EVT_ERR_CODE ************************
# Additional error information
set FDMA_EVT_ERR_CODE 0x70000228
proc __show_reg_FDMA_EVT_ERR_CODE {name} { show_reg $name { {code 3 0} } }
proc show_FDMA_EVT_ERR_CODE {} { __show_reg_FDMA_EVT_ERR_CODE FDMA_EVT_ERR_CODE }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_LLP ****************************
# LLP-event
set FDMA_INTR_LLP 0x7000022c
proc __show_reg_FDMA_INTR_LLP {name} { show_reg $name { {llp 3 0} } }
proc show_FDMA_INTR_LLP {} { __show_reg_FDMA_INTR_LLP FDMA_INTR_LLP }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_LLP_ENA ************************
# LLP-event interrupt enable
set FDMA_INTR_LLP_ENA 0x70000230
proc __show_reg_FDMA_INTR_LLP_ENA {name} { show_reg $name { {ena 3 0} } }
proc show_FDMA_INTR_LLP_ENA {} { __show_reg_FDMA_INTR_LLP_ENA FDMA_INTR_LLP_ENA }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_FRM ****************************
# FRM-event
set FDMA_INTR_FRM 0x70000234
proc __show_reg_FDMA_INTR_FRM {name} { show_reg $name { {frm 3 0} } }
proc show_FDMA_INTR_FRM {} { __show_reg_FDMA_INTR_FRM FDMA_INTR_FRM }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_FRM_ENA ************************
# FRM-event interrupt enable
set FDMA_INTR_FRM_ENA 0x70000238
proc __show_reg_FDMA_INTR_FRM_ENA {name} { show_reg $name { {ena 3 0} } }
proc show_FDMA_INTR_FRM_ENA {} { __show_reg_FDMA_INTR_FRM_ENA FDMA_INTR_FRM_ENA }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_SIG ****************************
# SIG-event
set FDMA_INTR_SIG 0x7000023c
proc __show_reg_FDMA_INTR_SIG {name} { show_reg $name { {sig 3 0} } }
proc show_FDMA_INTR_SIG {} { __show_reg_FDMA_INTR_SIG FDMA_INTR_SIG }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_SIG_ENA ************************
# SIG-event interrupt enable
set FDMA_INTR_SIG_ENA 0x70000240
proc __show_reg_FDMA_INTR_SIG_ENA {name} { show_reg $name { {ena 3 0} } }
proc show_FDMA_INTR_SIG_ENA {} { __show_reg_FDMA_INTR_SIG_ENA FDMA_INTR_SIG_ENA }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_ENA ****************************
# Channel interrupt enable
set FDMA_INTR_ENA 0x70000244
proc __show_reg_FDMA_INTR_ENA {name} { show_reg $name { {ena 3 0} } }
proc show_FDMA_INTR_ENA {} { __show_reg_FDMA_INTR_ENA FDMA_INTR_ENA }

#***** Register ICPU_CFG:FDMA:FDMA_INTR_IDENT **************************
# Currently interrupting channels
set FDMA_INTR_ID 0x70000248
proc __show_reg_FDMA_INTR_IDENT {name} { show_reg $name { {id 3 0} } }
proc show_FDMA_INTR_ID {} { __show_reg_FDMA_INTR_IDENT FDMA_INTR_ID }

#***** Register ICPU_CFG:FDMA:FDMA_CH_CFG ******************************
# Channel specific configurations
set FDMA_CH_CFG_0 0x7000024c
set FDMA_CH_CFG_1 0x70000250
set FDMA_CH_CFG_2 0x70000254
set FDMA_CH_CFG_3 0x70000258
proc __show_reg_FDMA_CH_CFG {name} { show_reg $name { {stat_in_data_ena 4 4 } { ch_prio 3 2 } { done_stop_ena 1 1 } { doneeof_stop_ena 0 0} } }
proc show_FDMA_CH_CFG_0 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_0 }
proc show_FDMA_CH_CFG_1 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_1 }
proc show_FDMA_CH_CFG_2 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_2 }
proc show_FDMA_CH_CFG_3 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_3 }

#***** Register ICPU_CFG:FDMA:FDMA_GCFG ********************************
# General FDMA configurations
set FDMA_GCFG 0x7000025c
proc __show_reg_FDMA_GCFG {name} { show_reg $name { {inj_rf_wm 11 7 } { xtr_rf_wm 6 3 } { xtr_avail_ext_dis 2 2 } { xtr_prio_bp_dis 1 1 } { pd_ignore 0 0} } }
proc show_FDMA_GCFG {} { __show_reg_FDMA_GCFG FDMA_GCFG }

#***** Register ICPU_CFG:FDMA:FDMA_GSTAT *******************************
# General FDMA status
set FDMA_GSTAT 0x70000260
proc __show_reg_FDMA_GSTAT {name} { show_reg $name { {inj_rf_high 10 5 } { xtr_rf_high 4 0} } }
proc show_FDMA_GSTAT {} { __show_reg_FDMA_GSTAT FDMA_GSTAT }

#***** Register ICPU_CFG:FDMA:FDMA_IDLECNT *****************************
# FDMA idle Counter
set FDMA_IDLECNT 0x70000264
proc __show_reg_FDMA_IDLECNT {name} { show_reg $name { {idlecnt 23 0} } }
proc show_FDMA_IDLECNT {} { __show_reg_FDMA_IDLECNT FDMA_IDLECNT }

#***** Register ICPU_CFG:FDMA:FDMA_CONST *******************************
# Constants for this FDMA implementation.
set FDMA_CONST 0x70000268
proc __show_reg_FDMA_CONST {name} { show_reg $name { {inj_cnt 15 8 } { xtr_cnt 7 0} } }
proc show_FDMA_CONST {} { __show_reg_FDMA_CONST FDMA_CONST }

proc show_FDMA {} {
    show_FDMA_DCB_LLP_0
    show_FDMA_DCB_LLP_1
    show_FDMA_DCB_LLP_2
    show_FDMA_DCB_LLP_3
    show_FDMA_DCB_DATAP_0
    show_FDMA_DCB_DATAP_1
    show_FDMA_DCB_DATAP_2
    show_FDMA_DCB_DATAP_3
    show_FDMA_DCB_DATAL_0
    show_FDMA_DCB_DATAL_1
    show_FDMA_DCB_DATAL_2
    show_FDMA_DCB_DATAL_3
    show_FDMA_DCB_STAT_0
    show_FDMA_DCB_STAT_1
    show_FDMA_DCB_STAT_2
    show_FDMA_DCB_STAT_3
    show_FDMA_DCB_LLP_PREV_0
    show_FDMA_DCB_LLP_PREV_1
    show_FDMA_DCB_LLP_PREV_2
    show_FDMA_DCB_LLP_PREV_3
    show_FDMA_CH_STAT
    show_FDMA_CH_SAFE
    show_FDMA_CH_ACTIVATE
    show_FDMA_CH_DISABLE
    show_FDMA_CH_FORCEDIS
    show_FDMA_CH_CNT_0
    show_FDMA_CH_CNT_1
    show_FDMA_CH_CNT_2
    show_FDMA_CH_CNT_3
    show_FDMA_CH_INJ_TOKEN_CNT_0
    show_FDMA_CH_INJ_TOKEN_CNT_1
    show_FDMA_CH_INJ_TOKEN_TICK_RLD_0
    show_FDMA_CH_INJ_TOKEN_TICK_RLD_1
    show_FDMA_CH_INJ_TOKEN_TICK_CNT_0
    show_FDMA_CH_INJ_TOKEN_TICK_CNT_1
    show_FDMA_EVT_ERR
    show_FDMA_EVT_ERR_CODE
    show_FDMA_INTR_LLP
    show_FDMA_INTR_LLP_ENA
    show_FDMA_INTR_FRM
    show_FDMA_INTR_FRM_ENA
    show_FDMA_INTR_SIG
    show_FDMA_INTR_SIG_ENA
    show_FDMA_INTR_ENA
    show_FDMA_INTR_ID
    show_FDMA_CH_CFG_0
    show_FDMA_CH_CFG_1
    show_FDMA_CH_CFG_2
    show_FDMA_CH_CFG_3
    show_FDMA_GCFG
    show_FDMA_GSTAT
    show_FDMA_IDLECNT
    show_FDMA_CONST
}
#*********************************************************************
# Register group: ICPU_CFG:PCIe
# PCIe endpoint

#***** Register ICPU_CFG:PCIe:PCIE_CTRL ********************************
# PCIe endpoint control
set PCIe_PCIE_CTRL 0x7000026c
proc __show_reg_PCIE_CTRL {name} { show_reg $name { {powerup 0 0} } }
proc show_PCIe_PCIE_CTRL {} { __show_reg_PCIE_CTRL PCIe_PCIE_CTRL }

#***** Register ICPU_CFG:PCIe:PCIE_CFG *********************************
# PCIe endpoint configuration
set PCIe_PCIE_CFG 0x70000270
proc __show_reg_PCIE_CFG {name} { show_reg $name { {cg_dis 4 4 } { conf_req_retry_ena 3 3 } { pcie_bar_wr_ena 2 2 } { ltssm_dis 1 1 } { mem_ring_core_ena 0 0} } }
proc show_PCIe_PCIE_CFG {} { __show_reg_PCIE_CFG PCIe_PCIE_CFG }

#***** Register ICPU_CFG:PCIe:PCIE_STAT ********************************
# PCIe endpoint status
set PCIe_PCIE_STAT 0x70000274
proc __show_reg_PCIE_STAT {name} { show_reg $name { {slv_error_reply 12 12 } { ltssm_state 11 6 } { link_state 5 3 } { pm_state 2 0} } }
proc show_PCIe_PCIE_STAT {} { __show_reg_PCIE_STAT PCIe_PCIE_STAT }

#***** Register ICPU_CFG:PCIe:PCIE_AUX_CFG *****************************
# Auxiliary power configuration
set PCIe_PCIE_AUX_CFG 0x70000278
proc __show_reg_PCIE_AUX_CFG {name} { show_reg $name { {force 1 1 } { val 0 0} } }
proc show_PCIe_PCIE_AUX_CFG {} { __show_reg_PCIE_AUX_CFG PCIe_PCIE_AUX_CFG }

#***** Register ICPU_CFG:PCIe:PCIE_DBG_STAT ****************************
# PCIe endpoint debug status
set PCIe_PCIE_DBG_STAT 0x7000027c
proc __show_reg_PCIE_DBG_STAT {name} { show_reg $name { {tbi_rx_sdet 12 12 } { tbi_rx_data 11 2 } { pm_l2_exit 1 1 } { data_link_layer_up 0 0} } }
proc show_PCIe_PCIE_DBG_STAT {} { __show_reg_PCIE_DBG_STAT PCIe_PCIE_DBG_STAT }

#***** Register ICPU_CFG:PCIe:PCIEMST_REPLY_INFO ***********************
# Additional inbound reply information
set PCIe_PCIEMST_REPLY_INFO 0x70000280
proc __show_reg_PCIEMST_REPLY_INFO {name} { show_reg $name { {info 4 0} } }
proc show_PCIe_PCIEMST_REPLY_INFO {} { __show_reg_PCIEMST_REPLY_INFO PCIe_PCIEMST_REPLY_INFO }

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR1_OFFSET **********************
# BAR1 offset into SBA address space
set PCIe_PCIEMST_BAR1_OFFSET 0x70000284
proc __show_reg_PCIEMST_BAR1_OFFSET {name} { show_reg $name { {offset 31 8} } }
proc show_PCIe_PCIEMST_BAR1_OFFSET {} { __show_reg_PCIEMST_BAR1_OFFSET PCIe_PCIEMST_BAR1_OFFSET }

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR1_MASK ************************
# BAR1 offset mask into SBA address space
set PCIe_PCIEMST_BAR1_MASK 0x70000288
proc __show_reg_PCIEMST_BAR1_MASK {name} { show_reg $name { {mask 31 8} } }
proc show_PCIe_PCIEMST_BAR1_MASK {} { __show_reg_PCIEMST_BAR1_MASK PCIe_PCIEMST_BAR1_MASK }

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR2_OFFSET **********************
# BAR2 offset into SBA address space
set PCIe_PCIEMST_BAR2_OFFSET 0x7000028c
proc __show_reg_PCIEMST_BAR2_OFFSET {name} { show_reg $name { {offset 31 24} } }
proc show_PCIe_PCIEMST_BAR2_OFFSET {} { __show_reg_PCIEMST_BAR2_OFFSET PCIe_PCIEMST_BAR2_OFFSET }

#***** Register ICPU_CFG:PCIe:PCIEMST_BAR2_MASK ************************
# BAR2 offset mask into SBA address space
set PCIe_PCIEMST_BAR2_MASK 0x70000290
proc __show_reg_PCIEMST_BAR2_MASK {name} { show_reg $name { {mask 31 24} } }
proc show_PCIe_PCIEMST_BAR2_MASK {} { __show_reg_PCIEMST_BAR2_MASK PCIe_PCIEMST_BAR2_MASK }

#***** Register ICPU_CFG:PCIe:PCIESLV_FDMA *****************************
# FDMA access into PCIe address space
set PCIe_PCIESLV_FDMA 0x70000294
proc __show_reg_PCIESLV_FDMA {name} { show_reg $name { {tc 6 4 } { attr 3 2 } { offset 1 0} } }
proc show_PCIe_PCIESLV_FDMA {} { __show_reg_PCIESLV_FDMA PCIe_PCIESLV_FDMA }

#***** Register ICPU_CFG:PCIe:PCIESLV_SBA ******************************
# SBA access into PCIe address space
set PCIe_PCIESLV_SBA 0x70000298
proc __show_reg_PCIESLV_SBA {name} { show_reg $name { {be 27 24 } { reserved1 23 23 } { msg_code 22 15 } { tc 14 12 } { attr 11 10 } { td 9 9 } { ep 8 8 } { reserved0 7 7 } { type 6 2 } { offset 1 0} } }
proc show_PCIe_PCIESLV_SBA {} { __show_reg_PCIESLV_SBA PCIe_PCIESLV_SBA }

#***** Register ICPU_CFG:PCIe:PCIEPCS_CFG ******************************
# PCIe PCS configuration
set PCIe_PCIEPCS_CFG 0x7000029c
proc __show_reg_PCIEPCS_CFG {name} { show_reg $name { {txrx_detect 21 21 } { sdetcom_perm 20 20 } { sdetcom_dis 19 19 } { beacon_force 18 18 } { rxrst_force 17 17 } { rxrst_val 16 16 } { txrst_force 15 15 } { txrst_val 14 14 } { rxsdet_xor 13 13 } { rxsdet_force 12 12 } { rxinv_ena 11 11 } { rxswap_ena 10 10 } { txswap_ena 9 9 } { idle_data_dis 8 8 } { idle_dis 7 7 } { idle 6 5 } { rxlp_force 4 4 } { txlp_force 3 3 } { wake_pol 2 2 } { wake_oe 1 1 } { beacon_dis 0 0} } }
proc show_PCIe_PCIEPCS_CFG {} { __show_reg_PCIEPCS_CFG PCIe_PCIEPCS_CFG }

#***** Register ICPU_CFG:PCIe:PCIEPCS_BEACON ***************************
# PCIe beacon parameters
set PCIe_PCIEPCS_BEACON 0x700002a0
proc __show_reg_PCIEPCS_BEACON {name} { show_reg $name { {val 25 16 } { max_dis 15 15 } { max 14 0} } }
proc show_PCIe_PCIEPCS_BEACON {} { __show_reg_PCIEPCS_BEACON PCIe_PCIEPCS_BEACON }

#***** Register ICPU_CFG:PCIe:PCIE_INTR ********************************
# PCIe events
set PCIe_PCIE_INTR 0x700002a4
proc __show_reg_PCIE_INTR {name} { show_reg $name { {ltssm_state 4 4 } { link_state 3 3 } { bar1_wr 2 2 } { bar1_rd 1 1 } { pm_state 0 0} } }
proc show_PCIe_PCIE_INTR {} { __show_reg_PCIE_INTR PCIe_PCIE_INTR }

#***** Register ICPU_CFG:PCIe:PCIE_INTR_ENA ****************************
# PCIe interrupt enable
set PCIe_PCIE_INTR_ENA 0x700002a8
proc __show_reg_PCIE_INTR_ENA {name} { show_reg $name { {ltssm_state_ena 4 4 } { link_state_ena 3 3 } { bar1_wr_ena 2 2 } { bar1_rd_ena 1 1 } { pm_state_ena 0 0} } }
proc show_PCIe_PCIE_INTR_ENA {} { __show_reg_PCIE_INTR_ENA PCIe_PCIE_INTR_ENA }

#***** Register ICPU_CFG:PCIe:PCIE_INTR_IDENT **************************
# Currently active PCIe interrupts
set PCIe_PCIE_INTR_ID 0x700002ac
proc __show_reg_PCIE_INTR_IDENT {name} { show_reg $name { {ltssm_state_id 4 4 } { link_state_id 3 3 } { bar1_wr_id 2 2 } { bar1_rd_id 1 1 } { pm_state_id 0 0} } }
proc show_PCIe_PCIE_INTR_ID {} { __show_reg_PCIE_INTR_IDENT PCIe_PCIE_INTR_ID }

#***** Register ICPU_CFG:PCIe:PCIE_INTR_COMMON_CFG *********************
# PCIe outbound interrupt configuration
set PCIe_PCIE_INTR_COMMON_CFG 0x700002b0
proc __show_reg_PCIE_INTR_COMMON_CFG {name} { show_reg $name { {wakeup_on_intr_dis 2 2 } { legacy_mode_intr_sel 1 1 } { pcie_intr_ena 0 0} } }
proc show_PCIe_PCIE_INTR_COMMON_CFG {} { __show_reg_PCIE_INTR_COMMON_CFG PCIe_PCIE_INTR_COMMON_CFG }

#***** Register ICPU_CFG:PCIe:PCIE_INTR_CFG ****************************
# PCIe outbound MSI interrupt configuration
set PCIe_PCIE_INTR_CFG_0 0x700002b4
set PCIe_PCIE_INTR_CFG_1 0x700002b8
proc __show_reg_PCIE_INTR_CFG {name} { show_reg $name { {function_number 17 15 } { traffic_class 14 12 } { falling_vector_val 11 7 } { rising_vector_val 6 2 } { intr_falling_ena 1 1 } { intr_rising_ena 0 0} } }
proc show_PCIe_PCIE_INTR_CFG_0 {} { __show_reg_PCIE_INTR_CFG PCIe_PCIE_INTR_CFG_0 }
proc show_PCIe_PCIE_INTR_CFG_1 {} { __show_reg_PCIE_INTR_CFG PCIe_PCIE_INTR_CFG_1 }

#***** Register ICPU_CFG:PCIe:PCIE_INTR_STAT ***************************
# PCIe outbound MSI interrupt status
set PCIe_PCIE_INTR_STAT_0 0x700002bc
set PCIe_PCIE_INTR_STAT_1 0x700002c0
proc __show_reg_PCIE_INTR_STAT {name} { show_reg $name { {falling 1 1 } { rising 0 0} } }
proc show_PCIe_PCIE_INTR_STAT_0 {} { __show_reg_PCIE_INTR_STAT PCIe_PCIE_INTR_STAT_0 }
proc show_PCIe_PCIE_INTR_STAT_1 {} { __show_reg_PCIE_INTR_STAT PCIe_PCIE_INTR_STAT_1 }

proc show_PCIe {} {
    show_PCIe_PCIE_CTRL
    show_PCIe_PCIE_CFG
    show_PCIe_PCIE_STAT
    show_PCIe_PCIE_AUX_CFG
    show_PCIe_PCIE_DBG_STAT
    show_PCIe_PCIEMST_REPLY_INFO
    show_PCIe_PCIEMST_BAR1_OFFSET
    show_PCIe_PCIEMST_BAR1_MASK
    show_PCIe_PCIEMST_BAR2_OFFSET
    show_PCIe_PCIEMST_BAR2_MASK
    show_PCIe_PCIESLV_FDMA
    show_PCIe_PCIESLV_SBA
    show_PCIe_PCIEPCS_CFG
    show_PCIe_PCIEPCS_BEACON
    show_PCIe_PCIE_INTR
    show_PCIe_PCIE_INTR_ENA
    show_PCIe_PCIE_INTR_ID
    show_PCIe_PCIE_INTR_COMMON_CFG
    show_PCIe_PCIE_INTR_CFG_0
    show_PCIe_PCIE_INTR_CFG_1
    show_PCIe_PCIE_INTR_STAT_0
    show_PCIe_PCIE_INTR_STAT_1
}
#*********************************************************************
# Register group: ICPU_CFG:MANUAL_XTRINJ
# Manual extraction and injection via FDMA

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_XTR **********************
# Manual extraction replicated register-array
set MANUAL_XTRINJ_XTR 0x70004000
proc show_MANUAL_XTRINJ_XTR {} { show_reg MANUAL_XTRINJ_XTR {} }

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_INJ **********************
# Manual injection replicated register-array
set MANUAL_XTRINJ_INJ 0x70008000
proc show_MANUAL_XTRINJ_INJ {} { show_reg MANUAL_XTRINJ_INJ {} }

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_CFG **********************
# Manual extraction and injection configuration
set MANUAL_XTRINJ_CFG 0x7000c000
proc __show_reg_MANUAL_CFG {name} { show_reg $name { {xtr_flush_dis 2 2 } { inj_ena 1 1 } { xtr_ena 0 0} } }
proc show_MANUAL_XTRINJ_CFG {} { __show_reg_MANUAL_CFG MANUAL_XTRINJ_CFG }

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_INTR *********************
# Manual extraction and injection interrupt indications
set MANUAL_XTRINJ_INTR 0x7000c004
proc __show_reg_MANUAL_INTR {name} { show_reg $name { {inj_rdy 2 2 } { xtr_any_rdy 1 1 } { xtr_sof_rdy 0 0} } }
proc show_MANUAL_XTRINJ_INTR {} { __show_reg_MANUAL_INTR MANUAL_XTRINJ_INTR }

#***** Register ICPU_CFG:MANUAL_XTRINJ:MANUAL_INTR_ENA *****************
# Manual extraction and injection interrupt enables
set MANUAL_XTRINJ_INTR_ENA 0x7000c008
proc __show_reg_MANUAL_INTR_ENA {name} { show_reg $name { {inj_rdy_ena 2 2 } { xtr_any_rdy_ena 1 1 } { xtr_sof_rdy_ena 0 0} } }
proc show_MANUAL_XTRINJ_INTR_ENA {} { __show_reg_MANUAL_INTR_ENA MANUAL_XTRINJ_INTR_ENA }

proc show_MANUAL_XTRINJ {} {
    show_MANUAL_XTRINJ_XTR
    show_MANUAL_XTRINJ_INJ
    show_MANUAL_XTRINJ_CFG
    show_MANUAL_XTRINJ_INTR
    show_MANUAL_XTRINJ_INTR_ENA
}
