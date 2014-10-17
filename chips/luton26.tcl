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
# SYS                  0x60010000
# ANA                  0x60020000
# REW                  0x60030000
# ES0                  0x60040000
# S1                   0x60050000
# S2                   0x60060000
# DEVCPU_GCB           0x60070000
# DEVCPU_QS            0x60080000
# DEVCPU_PI            0x60090000
# MACRO_CTRL           0x600a0000
# DEV_0                0x601e0000
# DEV_1                0x601f0000
# DEV_2                0x60200000
# DEV_3                0x60210000
# DEV_4                0x60220000
# DEV_5                0x60230000
# DEV_6                0x60240000
# DEV_7                0x60250000
# DEV_8                0x60260000
# DEV_9                0x60270000
# DEV_10               0x60280000
# DEV_11               0x60290000
# DEV_12               0x602a0000
# DEV_13               0x602b0000
# DEV_14               0x602c0000
# DEV_15               0x602d0000
# DEV_16               0x602e0000
# DEV_17               0x602f0000
# DEV_18               0x60300000
# DEV_19               0x60310000
# DEV_20               0x60320000
# DEV_21               0x60330000
# DEV_22               0x60340000
# DEV_23               0x60350000
# DEV_24               0x60360000
# DEV_25               0x60370000
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
# CPU Device General Configuration
#
#**********************************************************************

#*********************************************************************
# Register group: DEVCPU_GCB:CHIP_REGS
# 

#***** Register DEVCPU_GCB:CHIP_REGS:GENERAL_PURPOSE *******************
# general purpose register
set CHIP_REGS_GEN_PURPOSE 0x60070000
proc show_CHIP_REGS_GEN_PURPOSE {} { show_reg CHIP_REGS_GEN_PURPOSE {} }

#***** Register DEVCPU_GCB:CHIP_REGS:SI ********************************
# SI registers
set CHIP_REGS_SI 0x60070004
proc __show_reg_SI {name} { show_reg $name { {lsb 5 5 } { endian 4 4 } { wait_states 3 0} } }
proc show_CHIP_REGS_SI {} { __show_reg_SI CHIP_REGS_SI }

#***** Register DEVCPU_GCB:CHIP_REGS:CHIP_ID ***************************
# Chip Id
set CHIP_REGS_CHIP_ID 0x60070008
proc __show_reg_CHIP_ID {name} { show_reg $name { {rev_id 31 28 } { part_id 27 12 } { mfg_id 11 1 } { one 0 0} } }
proc show_CHIP_REGS_CHIP_ID {} { __show_reg_CHIP_ID CHIP_REGS_CHIP_ID }

#***** Register DEVCPU_GCB:CHIP_REGS:HW_STAT ***************************
# Startup state of the chip
set CHIP_REGS_HW_STAT 0x6007000c
proc __show_reg_HW_STAT {name} { show_reg $name { {id_sel 4 1 } { mem_fail 0 0} } }
proc show_CHIP_REGS_HW_STAT {} { __show_reg_HW_STAT CHIP_REGS_HW_STAT }

proc show_CHIP_REGS {} {
    show_CHIP_REGS_GEN_PURPOSE
    show_CHIP_REGS_SI
    show_CHIP_REGS_CHIP_ID
    show_CHIP_REGS_HW_STAT
}
#*********************************************************************
# Register group: DEVCPU_GCB:DBG
# 

#***** Register DEVCPU_GCB:DBG:QS_DBG **********************************
# DBG
set DBG_QS_DBG 0x60070010
proc __show_reg_QS_DBG {name} { show_reg $name { {lb 0 0} } }
proc show_DBG_QS_DBG {} { __show_reg_QS_DBG DBG_QS_DBG }

proc show_DBG {} {
    show_DBG_QS_DBG
}
#*********************************************************************
# Register group: DEVCPU_GCB:SW_REGS
# Registers for software/software interaction

#***** Register DEVCPU_GCB:SW_REGS:SEMA_INTR_ENA ***********************
# Semaphore SW interrupt enable
set SW_REGS_SEMA_INTR_ENA 0x60070014
proc __show_reg_SEMA_INTR_ENA {name} { show_reg $name { {id 15 8 } { ena 7 0} } }
proc show_SW_REGS_SEMA_INTR_ENA {} { __show_reg_SEMA_INTR_ENA SW_REGS_SEMA_INTR_ENA }

#***** Register DEVCPU_GCB:SW_REGS:SEMA_INTR_ENA_CLR *******************
# Clear of semaphore SW interrupt enables
set SW_REGS_SEMA_INTR_ENA_CLR 0x60070018
proc __show_reg_SEMA_INTR_ENA_CLR {name} { show_reg $name { {clr 7 0} } }
proc show_SW_REGS_SEMA_INTR_ENA_CLR {} { __show_reg_SEMA_INTR_ENA_CLR SW_REGS_SEMA_INTR_ENA_CLR }

#***** Register DEVCPU_GCB:SW_REGS:SEMA_INTR_ENA_SET *******************
# Masking of semaphore
set SW_REGS_SEMA_INTR_ENA_SET 0x6007001c
proc __show_reg_SEMA_INTR_ENA_SET {name} { show_reg $name { {set 7 0} } }
proc show_SW_REGS_SEMA_INTR_ENA_SET {} { __show_reg_SEMA_INTR_ENA_SET SW_REGS_SEMA_INTR_ENA_SET }

#***** Register DEVCPU_GCB:SW_REGS:SEMA ********************************
# Semaphore register
set SW_REGS_SEMA_0 0x60070020
set SW_REGS_SEMA_1 0x60070024
set SW_REGS_SEMA_2 0x60070028
set SW_REGS_SEMA_3 0x6007002c
set SW_REGS_SEMA_4 0x60070030
set SW_REGS_SEMA_5 0x60070034
set SW_REGS_SEMA_6 0x60070038
set SW_REGS_SEMA_7 0x6007003c
proc __show_reg_SEMA {name} { show_reg $name { {sema 0 0} } }
proc show_SW_REGS_SEMA_0 {} { __show_reg_SEMA SW_REGS_SEMA_0 }
proc show_SW_REGS_SEMA_1 {} { __show_reg_SEMA SW_REGS_SEMA_1 }
proc show_SW_REGS_SEMA_2 {} { __show_reg_SEMA SW_REGS_SEMA_2 }
proc show_SW_REGS_SEMA_3 {} { __show_reg_SEMA SW_REGS_SEMA_3 }
proc show_SW_REGS_SEMA_4 {} { __show_reg_SEMA SW_REGS_SEMA_4 }
proc show_SW_REGS_SEMA_5 {} { __show_reg_SEMA SW_REGS_SEMA_5 }
proc show_SW_REGS_SEMA_6 {} { __show_reg_SEMA SW_REGS_SEMA_6 }
proc show_SW_REGS_SEMA_7 {} { __show_reg_SEMA SW_REGS_SEMA_7 }

#***** Register DEVCPU_GCB:SW_REGS:SEMA_FREE ***************************
# Semaphore status
set SW_REGS_SEMA_FREE 0x60070040
proc __show_reg_SEMA_FREE {name} { show_reg $name { {free 7 0} } }
proc show_SW_REGS_SEMA_FREE {} { __show_reg_SEMA_FREE SW_REGS_SEMA_FREE }

#***** Register DEVCPU_GCB:SW_REGS:SW_INTR *****************************
# Manually assert software interrupt
set SW_REGS_SW_INTR 0x60070044
proc __show_reg_SW_INTR {name} { show_reg $name { {sw1_intr 1 1 } { sw0_intr 0 0} } }
proc show_SW_REGS_SW_INTR {} { __show_reg_SW_INTR SW_REGS_SW_INTR }

#***** Register DEVCPU_GCB:SW_REGS:MAILBOX *****************************
# Mailbox register
set SW_REGS_MAILBOX 0x60070048
proc show_SW_REGS_MAILBOX {} { show_reg SW_REGS_MAILBOX {} }

#***** Register DEVCPU_GCB:SW_REGS:MAILBOX_CLR *************************
# Mailbox register atomic clear
set SW_REGS_MAILBOX_CLR 0x6007004c
proc show_SW_REGS_MAILBOX_CLR {} { show_reg SW_REGS_MAILBOX_CLR {} }

#***** Register DEVCPU_GCB:SW_REGS:MAILBOX_SET *************************
# Mailbox register atomic set
set SW_REGS_MAILBOX_SET 0x60070050
proc show_SW_REGS_MAILBOX_SET {} { show_reg SW_REGS_MAILBOX_SET {} }

proc show_SW_REGS {} {
    show_SW_REGS_SEMA_INTR_ENA
    show_SW_REGS_SEMA_INTR_ENA_CLR
    show_SW_REGS_SEMA_INTR_ENA_SET
    show_SW_REGS_SEMA_0
    show_SW_REGS_SEMA_1
    show_SW_REGS_SEMA_2
    show_SW_REGS_SEMA_3
    show_SW_REGS_SEMA_4
    show_SW_REGS_SEMA_5
    show_SW_REGS_SEMA_6
    show_SW_REGS_SEMA_7
    show_SW_REGS_SEMA_FREE
    show_SW_REGS_SW_INTR
    show_SW_REGS_MAILBOX
    show_SW_REGS_MAILBOX_CLR
    show_SW_REGS_MAILBOX_SET
}
#*********************************************************************
# Register group: DEVCPU_GCB:VCORE_ACCESS
# 

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_CTRL ************************
# Control register for VCore accesses
set VCORE_ACCESS_VA_CTRL 0x60070054
proc __show_reg_VA_CTRL {name} { show_reg $name { {flush 6 6 } { size 5 4 } { err_rd 3 3 } { err 2 2 } { busy_rd 1 1 } { busy 0 0} } }
proc show_VCORE_ACCESS_VA_CTRL {} { __show_reg_VA_CTRL VCORE_ACCESS_VA_CTRL }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_ADDR ************************
# Address register for VCore accesses
set VCORE_ACCESS_VA_ADDR 0x60070058
proc show_VCORE_ACCESS_VA_ADDR {} { show_reg VCORE_ACCESS_VA_ADDR {} }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA ************************
# Data register for VCore accesses
set VCORE_ACCESS_VA_DATA 0x6007005c
proc show_VCORE_ACCESS_VA_DATA {} { show_reg VCORE_ACCESS_VA_DATA {} }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INCR *******************
# Data register for VCore accesses (w. auto increment of address)
set VCORE_ACCESS_VA_DATA_INCR 0x60070060
proc show_VCORE_ACCESS_VA_DATA_INCR {} { show_reg VCORE_ACCESS_VA_DATA_INCR {} }

#***** Register DEVCPU_GCB:VCORE_ACCESS:VA_DATA_INERT ******************
# Data register for VCore accesses (will not initiate access)
set VCORE_ACCESS_VA_DATA_INERT 0x60070064
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
# 

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_SET ***************************
# GPIO output set
set GPIO_OUT_SET 0x60070068
proc show_GPIO_OUT_SET {} { show_reg GPIO_OUT_SET {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT_CLR ***************************
# GPIO output clear
set GPIO_OUT_CLR 0x6007006c
proc show_GPIO_OUT_CLR {} { show_reg GPIO_OUT_CLR {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_OUT *******************************
# GPIO output
set GPIO_OUT 0x60070070
proc show_GPIO_OUT {} { show_reg GPIO_OUT {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_IN ********************************
# GPIO input
set GPIO_IN 0x60070074
proc show_GPIO_IN {} { show_reg GPIO_IN {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_OE ********************************
# GPIO pin direction
set GPIO_OE 0x60070078
proc show_GPIO_OE {} { show_reg GPIO_OE {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR ******************************
# GPIO interrupt
set GPIO_INTR 0x6007007c
proc show_GPIO_INTR {} { show_reg GPIO_INTR {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_ENA **************************
# GPIO interrupt enable
set GPIO_INTR_ENA 0x60070080
proc show_GPIO_INTR_ENA {} { show_reg GPIO_INTR_ENA {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_INTR_IDENT ************************
# GPIO interrupt identity
set GPIO_INTR_ID 0x60070084
proc show_GPIO_INTR_ID {} { show_reg GPIO_INTR_ID {} }

#***** Register DEVCPU_GCB:GPIO:GPIO_ALT *******************************
# GPIO alternate functions
set GPIO_ALT_0 0x60070088
set GPIO_ALT_1 0x6007008c
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
# Register group: DEVCPU_GCB:DEVCPU_RST_REGS
# 

#***** Register DEVCPU_GCB:DEVCPU_RST_REGS:SOFT_CHIP_RST ***************
# Reset part or the whole chip
set DEVCPU_RST_REGS_SOFT_CHIP_RST 0x60070090
proc __show_reg_SOFT_CHIP_RST {name} { show_reg $name { {phy_rst 1 1 } { chip_rst 0 0} } }
proc show_DEVCPU_RST_REGS_SOFT_CHIP_RST {} { __show_reg_SOFT_CHIP_RST DEVCPU_RST_REGS_SOFT_CHIP_RST }

#***** Register DEVCPU_GCB:DEVCPU_RST_REGS:SOFT_DEVCPU_RST *************
# Soft reset of devcpu.
set DEVCPU_RST_REGS_SOFT_DEVCPU_RST 0x60070094
proc __show_reg_SOFT_DEVCPU_RST {name} { show_reg $name { {xtr_rst 1 1 } { inj_rst 0 0} } }
proc show_DEVCPU_RST_REGS_SOFT_DEVCPU_RST {} { __show_reg_SOFT_DEVCPU_RST DEVCPU_RST_REGS_SOFT_DEVCPU_RST }

proc show_DEVCPU_RST_REGS {} {
    show_DEVCPU_RST_REGS_SOFT_CHIP_RST
    show_DEVCPU_RST_REGS_SOFT_DEVCPU_RST
}
#*********************************************************************
# Register group: DEVCPU_GCB:ALIGN
# 

#***** Register DEVCPU_GCB:ALIGN:WD_SETUP ******************************
# WD conf
set ALIGN_WD_SETUP 0x60070098
proc __show_reg_WD_SETUP {name} { show_reg $name { {value 7 0} } }
proc show_ALIGN_WD_SETUP {} { __show_reg_WD_SETUP ALIGN_WD_SETUP }

#***** Register DEVCPU_GCB:ALIGN:DBG ***********************************
# Debug reigsters for the control align block
set ALIGN_DBG 0x6007009c
proc __show_reg_DBG {name} { show_reg $name { {org_dropped 12 8 } { tgt_dropped 7 0} } }
proc show_ALIGN_DBG {} { __show_reg_DBG ALIGN_DBG }

proc show_ALIGN {} {
    show_ALIGN_WD_SETUP
    show_ALIGN_DBG
}
#*********************************************************************
# Register group: DEVCPU_GCB:MIIM
# 

#***** Register DEVCPU_GCB:MIIM:MII_STATUS *****************************
# MIIM Status
set MIIM0_MII_STATUS 0x600700a0
set MIIM1_MII_STATUS 0x600700c4
proc __show_reg_MII_STATUS {name} { show_reg $name { {scan_complete 4 4 } { stat_busy 3 3 } { stat_opr_pend 2 2 } { stat_pending_rd 1 1 } { stat_pending_wr 0 0} } }
proc show_MIIM0_MII_STATUS {} { __show_reg_MII_STATUS MIIM0_MII_STATUS }
proc show_MIIM1_MII_STATUS {} { __show_reg_MII_STATUS MIIM1_MII_STATUS }

#***** Register DEVCPU_GCB:MIIM:MII_CFG_7226 ***************************
# MIIM Configuration
set MIIM0_MII_CFG_7226 0x600700a4
set MIIM1_MII_CFG_7226 0x600700c8
proc __show_reg_MII_CFG_7226 {name} { show_reg $name { {field 9 9} } }
proc show_MIIM0_MII_CFG_7226 {} { __show_reg_MII_CFG_7226 MIIM0_MII_CFG_7226 }
proc show_MIIM1_MII_CFG_7226 {} { __show_reg_MII_CFG_7226 MIIM1_MII_CFG_7226 }

#***** Register DEVCPU_GCB:MIIM:MII_CMD ********************************
# MIIM Command
set MIIM0_MII_CMD 0x600700a8
set MIIM1_MII_CMD 0x600700cc
proc __show_reg_MII_CMD {name} { show_reg $name { {vld 31 31 } { phyad 29 25 } { regad 24 20 } { wrdata 19 4 } { single_scan 3 3 } { opr_field 2 1 } { scan 0 0} } }
proc show_MIIM0_MII_CMD {} { __show_reg_MII_CMD MIIM0_MII_CMD }
proc show_MIIM1_MII_CMD {} { __show_reg_MII_CMD MIIM1_MII_CMD }

#***** Register DEVCPU_GCB:MIIM:MII_DATA *******************************
# MIIM Reply Data
set MIIM0_MII_DATA 0x600700ac
set MIIM1_MII_DATA 0x600700d0
proc __show_reg_MII_DATA {name} { show_reg $name { {success 17 16 } { rddata 15 0} } }
proc show_MIIM0_MII_DATA {} { __show_reg_MII_DATA MIIM0_MII_DATA }
proc show_MIIM1_MII_DATA {} { __show_reg_MII_DATA MIIM1_MII_DATA }

#***** Register DEVCPU_GCB:MIIM:MII_CFG ********************************
# MIIM Configuration
set MIIM0_MII_CFG 0x600700b0
set MIIM1_MII_CFG 0x600700d4
proc __show_reg_MII_CFG {name} { show_reg $name { {st_cfg_field 10 9 } { cfg_prescale 7 0 } { cfg_dbg 8 8} } }
proc show_MIIM0_MII_CFG {} { __show_reg_MII_CFG MIIM0_MII_CFG }
proc show_MIIM1_MII_CFG {} { __show_reg_MII_CFG MIIM1_MII_CFG }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_0 *****************************
# MIIM Scan 0
set MIIM0_MII_SCAN_0 0x600700b4
set MIIM1_MII_SCAN_0 0x600700d8
proc __show_reg_MII_SCAN_0 {name} { show_reg $name { {phyadhi 9 5 } { phyadlo 4 0} } }
proc show_MIIM0_MII_SCAN_0 {} { __show_reg_MII_SCAN_0 MIIM0_MII_SCAN_0 }
proc show_MIIM1_MII_SCAN_0 {} { __show_reg_MII_SCAN_0 MIIM1_MII_SCAN_0 }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_1 *****************************
# MIIM Scan 1
set MIIM0_MII_SCAN_1 0x600700b8
set MIIM1_MII_SCAN_1 0x600700dc
proc __show_reg_MII_SCAN_1 {name} { show_reg $name { {mask 31 16 } { expect 15 0} } }
proc show_MIIM0_MII_SCAN_1 {} { __show_reg_MII_SCAN_1 MIIM0_MII_SCAN_1 }
proc show_MIIM1_MII_SCAN_1 {} { __show_reg_MII_SCAN_1 MIIM1_MII_SCAN_1 }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS ********************
# MIIM Results
set MIIM0_MII_SCAN_LAST_RSLTS 0x600700bc
set MIIM1_MII_SCAN_LAST_RSLTS 0x600700e0
proc show_MIIM0_MII_SCAN_LAST_RSLTS {} { show_reg MIIM0_MII_SCAN_LAST_RSLTS {} }
proc show_MIIM1_MII_SCAN_LAST_RSLTS {} { show_reg MIIM1_MII_SCAN_LAST_RSLTS {} }

#***** Register DEVCPU_GCB:MIIM:MII_SCAN_LAST_RSLTS_VLD ****************
# MIIM Results
set MIIM0_MII_SCAN_LAST_RSLTS_VLD 0x600700c0
set MIIM1_MII_SCAN_LAST_RSLTS_VLD 0x600700e4
proc show_MIIM0_MII_SCAN_LAST_RSLTS_VLD {} { show_reg MIIM0_MII_SCAN_LAST_RSLTS_VLD {} }
proc show_MIIM1_MII_SCAN_LAST_RSLTS_VLD {} { show_reg MIIM1_MII_SCAN_LAST_RSLTS_VLD {} }

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
    show_MIIM0_MII_SCAN_LAST_RSLTS
    show_MIIM1_MII_SCAN_LAST_RSLTS
    show_MIIM0_MII_SCAN_LAST_RSLTS_VLD
    show_MIIM1_MII_SCAN_LAST_RSLTS_VLD
}
#*********************************************************************
# Register group: DEVCPU_GCB:MIIM_READ_SCAN
# 

#***** Register DEVCPU_GCB:MIIM_READ_SCAN:MII_SCAN_RSLTS_STICKY ********
# MIIM Results
set MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_0 0x600700e8
set MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_1 0x600700ec
proc show_MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_0 {} { show_reg MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_0 {} }
proc show_MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_1 {} { show_reg MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_1 {} }

proc show_MIIM_READ_SCAN {} {
    show_MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_0
    show_MIIM_READ_SCAN_MII_SCAN_RSLTS_ST_1
}
#*********************************************************************
# Register group: DEVCPU_GCB:FEATURES
# Feature control/status

#***** Register DEVCPU_GCB:FEATURES:FEA_STAT ***************************
# Encoded features
set FEATURES_FEA_STAT_0 0x600700f0
set FEATURES_FEA_STAT_1 0x600700f4
set FEATURES_FEA_STAT_2 0x600700f8
set FEATURES_FEA_STAT_3 0x600700fc
set FEATURES_FEA_STAT_4 0x60070100
set FEATURES_FEA_STAT_5 0x60070104
set FEATURES_FEA_STAT_6 0x60070108
set FEATURES_FEA_STAT_7 0x6007010c
proc show_FEATURES_FEA_STAT_0 {} { show_reg FEATURES_FEA_STAT_0 {} }
proc show_FEATURES_FEA_STAT_1 {} { show_reg FEATURES_FEA_STAT_1 {} }
proc show_FEATURES_FEA_STAT_2 {} { show_reg FEATURES_FEA_STAT_2 {} }
proc show_FEATURES_FEA_STAT_3 {} { show_reg FEATURES_FEA_STAT_3 {} }
proc show_FEATURES_FEA_STAT_4 {} { show_reg FEATURES_FEA_STAT_4 {} }
proc show_FEATURES_FEA_STAT_5 {} { show_reg FEATURES_FEA_STAT_5 {} }
proc show_FEATURES_FEA_STAT_6 {} { show_reg FEATURES_FEA_STAT_6 {} }
proc show_FEATURES_FEA_STAT_7 {} { show_reg FEATURES_FEA_STAT_7 {} }

#***** Register DEVCPU_GCB:FEATURES:FEA_DIS ****************************
# Disable of features
set FEATURES_FEA_DIS 0x60070110
proc __show_reg_FEA_DIS {name} { show_reg $name { {dis 16 0} } }
proc show_FEATURES_FEA_DIS {} { __show_reg_FEA_DIS FEATURES_FEA_DIS }

proc show_FEATURES {} {
    show_FEATURES_FEA_STAT_0
    show_FEATURES_FEA_STAT_1
    show_FEATURES_FEA_STAT_2
    show_FEATURES_FEA_STAT_3
    show_FEATURES_FEA_STAT_4
    show_FEATURES_FEA_STAT_5
    show_FEATURES_FEA_STAT_6
    show_FEATURES_FEA_STAT_7
    show_FEATURES_FEA_DIS
}
#*********************************************************************
# Register group: DEVCPU_GCB:RAM_STAT
# 

#***** Register DEVCPU_GCB:RAM_STAT:RAM_INTEGRITY_ERR_STICKY ***********
# QS RAM status
set RAM_STAT_RAM_INTEG_ERR_ST 0x60070114
proc __show_reg_RAM_INTEGRITY_ERR_STICKY {name} { show_reg $name { {st 0 0} } }
proc show_RAM_STAT_RAM_INTEG_ERR_ST {} { __show_reg_RAM_INTEGRITY_ERR_STICKY RAM_STAT_RAM_INTEG_ERR_ST }

proc show_RAM_STAT {} {
    show_RAM_STAT_RAM_INTEG_ERR_ST
}
#*********************************************************************
# Register group: DEVCPU_GCB:MISC
# Miscellaneous Registers

#***** Register DEVCPU_GCB:MISC:MISC_CFG *******************************
# Miscellaneous Configuration Register
set MISC_CFG 0x60070118
proc __show_reg_MISC_CFG {name} { show_reg $name { {miim_par_ena 10 10 } { synce_src_ctrl 9 8 } { sw_mode 7 6 } { qsgmii_flip_lane1 5 5 } { qsgmii_flip_lane2 4 4 } { qsgmii_flip_lane3 3 3 } { qsgmii_shyst_dis 2 2 } { qsgmii_e_det_ena 1 1 } { qsgmii_use_i1_ena 0 0} } }
proc show_MISC_CFG {} { __show_reg_MISC_CFG MISC_CFG }

#***** Register DEVCPU_GCB:MISC:MISC_STAT ******************************
# 
set MISC_STAT 0x6007011c
proc __show_reg_MISC_STAT {name} { show_reg $name { {phy_ready 3 3 } { sync_stat1 2 2 } { sync_stat2 1 1 } { sync_stat3 0 0} } }
proc show_MISC_STAT {} { __show_reg_MISC_STAT MISC_STAT }

#***** Register DEVCPU_GCB:MISC:PHY_SPEED_1000_STAT ********************
# 
set MISC_PHY_SPEED_1000_STAT 0x60070120
proc __show_reg_PHY_SPEED_1000_STAT {name} { show_reg $name { {1000 11 0} } }
proc show_MISC_PHY_SPEED_1000_STAT {} { __show_reg_PHY_SPEED_1000_STAT MISC_PHY_SPEED_1000_STAT }

#***** Register DEVCPU_GCB:MISC:PHY_SPEED_100_STAT *********************
# 
set MISC_PHY_SPEED_100_STAT 0x60070124
proc __show_reg_PHY_SPEED_100_STAT {name} { show_reg $name { {100 11 0} } }
proc show_MISC_PHY_SPEED_100_STAT {} { __show_reg_PHY_SPEED_100_STAT MISC_PHY_SPEED_100_STAT }

#***** Register DEVCPU_GCB:MISC:PHY_SPEED_10_STAT **********************
# 
set MISC_PHY_SPEED_10_STAT 0x60070128
proc __show_reg_PHY_SPEED_10_STAT {name} { show_reg $name { {10 11 0} } }
proc show_MISC_PHY_SPEED_10_STAT {} { __show_reg_PHY_SPEED_10_STAT MISC_PHY_SPEED_10_STAT }

#***** Register DEVCPU_GCB:MISC:DUPLEXC_PORT_STAT **********************
# 
set MISC_DUPLEXC_PORT_STAT 0x6007012c
proc __show_reg_DUPLEXC_PORT_STAT {name} { show_reg $name { {duplexc 11 0} } }
proc show_MISC_DUPLEXC_PORT_STAT {} { __show_reg_DUPLEXC_PORT_STAT MISC_DUPLEXC_PORT_STAT }

proc show_MISC {} {
    show_MISC_CFG
    show_MISC_STAT
    show_MISC_PHY_SPEED_1000_STAT
    show_MISC_PHY_SPEED_100_STAT
    show_MISC_PHY_SPEED_10_STAT
    show_MISC_DUPLEXC_PORT_STAT
}
#*********************************************************************
# Register group: DEVCPU_GCB:SIO_CTRL
# Serial IO control configuration

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INPUT_DATA *********************
# Input data registers
set SIO_CTRL_SIO_INPUT_DATA_0 0x60070130
set SIO_CTRL_SIO_INPUT_DATA_1 0x60070134
set SIO_CTRL_SIO_INPUT_DATA_2 0x60070138
set SIO_CTRL_SIO_INPUT_DATA_3 0x6007013c
proc show_SIO_CTRL_SIO_INPUT_DATA_0 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_0 {} }
proc show_SIO_CTRL_SIO_INPUT_DATA_1 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_1 {} }
proc show_SIO_CTRL_SIO_INPUT_DATA_2 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_2 {} }
proc show_SIO_CTRL_SIO_INPUT_DATA_3 {} { show_reg SIO_CTRL_SIO_INPUT_DATA_3 {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_POL ************************
# Interrupt polarity for each GPIO
set SIO_CTRL_SIO_INT_POL_0 0x60070140
set SIO_CTRL_SIO_INT_POL_1 0x60070144
set SIO_CTRL_SIO_INT_POL_2 0x60070148
set SIO_CTRL_SIO_INT_POL_3 0x6007014c
proc show_SIO_CTRL_SIO_INT_POL_0 {} { show_reg SIO_CTRL_SIO_INT_POL_0 {} }
proc show_SIO_CTRL_SIO_INT_POL_1 {} { show_reg SIO_CTRL_SIO_INT_POL_1 {} }
proc show_SIO_CTRL_SIO_INT_POL_2 {} { show_reg SIO_CTRL_SIO_INT_POL_2 {} }
proc show_SIO_CTRL_SIO_INT_POL_3 {} { show_reg SIO_CTRL_SIO_INT_POL_3 {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_INT_ENA *******************
# Interrupt enable register for each port.
set SIO_CTRL_SIO_PORT_INT_ENA 0x60070150
proc show_SIO_CTRL_SIO_PORT_INT_ENA {} { show_reg SIO_CTRL_SIO_PORT_INT_ENA {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_PORT_CONFIG ********************
# Configuration of output data values
set SIO_CTRL_SIO_PORT_CONFIG_0 0x60070154
set SIO_CTRL_SIO_PORT_CONFIG_1 0x60070158
set SIO_CTRL_SIO_PORT_CONFIG_2 0x6007015c
set SIO_CTRL_SIO_PORT_CONFIG_3 0x60070160
set SIO_CTRL_SIO_PORT_CONFIG_4 0x60070164
set SIO_CTRL_SIO_PORT_CONFIG_5 0x60070168
set SIO_CTRL_SIO_PORT_CONFIG_6 0x6007016c
set SIO_CTRL_SIO_PORT_CONFIG_7 0x60070170
set SIO_CTRL_SIO_PORT_CONFIG_8 0x60070174
set SIO_CTRL_SIO_PORT_CONFIG_9 0x60070178
set SIO_CTRL_SIO_PORT_CONFIG_10 0x6007017c
set SIO_CTRL_SIO_PORT_CONFIG_11 0x60070180
set SIO_CTRL_SIO_PORT_CONFIG_12 0x60070184
set SIO_CTRL_SIO_PORT_CONFIG_13 0x60070188
set SIO_CTRL_SIO_PORT_CONFIG_14 0x6007018c
set SIO_CTRL_SIO_PORT_CONFIG_15 0x60070190
set SIO_CTRL_SIO_PORT_CONFIG_16 0x60070194
set SIO_CTRL_SIO_PORT_CONFIG_17 0x60070198
set SIO_CTRL_SIO_PORT_CONFIG_18 0x6007019c
set SIO_CTRL_SIO_PORT_CONFIG_19 0x600701a0
set SIO_CTRL_SIO_PORT_CONFIG_20 0x600701a4
set SIO_CTRL_SIO_PORT_CONFIG_21 0x600701a8
set SIO_CTRL_SIO_PORT_CONFIG_22 0x600701ac
set SIO_CTRL_SIO_PORT_CONFIG_23 0x600701b0
set SIO_CTRL_SIO_PORT_CONFIG_24 0x600701b4
set SIO_CTRL_SIO_PORT_CONFIG_25 0x600701b8
set SIO_CTRL_SIO_PORT_CONFIG_26 0x600701bc
set SIO_CTRL_SIO_PORT_CONFIG_27 0x600701c0
set SIO_CTRL_SIO_PORT_CONFIG_28 0x600701c4
set SIO_CTRL_SIO_PORT_CONFIG_29 0x600701c8
set SIO_CTRL_SIO_PORT_CONFIG_30 0x600701cc
set SIO_CTRL_SIO_PORT_CONFIG_31 0x600701d0
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
# Port enable register
set SIO_CTRL_SIO_PORT_ENABLE 0x600701d4
proc show_SIO_CTRL_SIO_PORT_ENABLE {} { show_reg SIO_CTRL_SIO_PORT_ENABLE {} }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CONFIG *************************
# General configuration register
set SIO_CTRL_SIO_CONFIG 0x600701d8
proc __show_reg_SIO_CONFIG {name} { show_reg $name { {bmode_1 21 20 } { bmode_0 19 18 } { blink_reset 17 17 } { int_ena 16 13 } { burst_gap_dis 12 12 } { burst_gap 11 7 } { single_shot 6 6 } { auto_repeat 5 5 } { ld_polarity 4 4 } { port_width 3 2 } { reverse_output 1 1 } { reverse_input 0 0} } }
proc show_SIO_CTRL_SIO_CONFIG {} { __show_reg_SIO_CONFIG SIO_CTRL_SIO_CONFIG }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_CLOCK **************************
# Configuration of the serial IO clock frequency
set SIO_CTRL_SIO_CLOCK 0x600701dc
proc __show_reg_SIO_CLOCK {name} { show_reg $name { {freq 11 0} } }
proc show_SIO_CTRL_SIO_CLOCK {} { __show_reg_SIO_CLOCK SIO_CTRL_SIO_CLOCK }

#***** Register DEVCPU_GCB:SIO_CTRL:SIO_INT_REG ************************
# Interrupt register
set SIO_CTRL_SIO_INT_REG_0 0x600701e0
set SIO_CTRL_SIO_INT_REG_1 0x600701e4
set SIO_CTRL_SIO_INT_REG_2 0x600701e8
set SIO_CTRL_SIO_INT_REG_3 0x600701ec
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
# Configuration register for the fan controller

#***** Register DEVCPU_GCB:FAN_CFG:FAN_CFG *****************************
# Configuration register for the fan controller
set FAN_CFG_FAN_CFG 0x600701f0
proc __show_reg_FAN_CFG {name} { show_reg $name { {duty_cycle 23 16 } { pwm_freq 5 3 } { inv_pol 2 2 } { gate_ena 1 1 } { pwm_open_col_ena 0 0} } }
proc show_FAN_CFG_FAN_CFG {} { __show_reg_FAN_CFG FAN_CFG_FAN_CFG }

proc show_FAN_CFG {} {
    show_FAN_CFG_FAN_CFG
}
#*********************************************************************
# Register group: DEVCPU_GCB:FAN_STAT
# Fan controller statistics

#***** Register DEVCPU_GCB:FAN_STAT:FAN_CNT ****************************
# TACH counter
set FAN_STAT_FAN_CNT 0x600701f4
proc __show_reg_FAN_CNT {name} { show_reg $name { {cnt 15 0} } }
proc show_FAN_STAT_FAN_CNT {} { __show_reg_FAN_CNT FAN_STAT_FAN_CNT }

proc show_FAN_STAT {} {
    show_FAN_STAT_FAN_CNT
}
#*********************************************************************
# Register group: DEVCPU_GCB:PTP_CFG
# Configuration registers for PTP

#***** Register DEVCPU_GCB:PTP_CFG:PTP_MISC_CFG ************************
# Misc Configuration Register for PTP
set PTP_CFG_PTP_MISC_CFG 0x600701f8
proc __show_reg_PTP_MISC_CFG {name} { show_reg $name { {ext_sync_outp_sel 7 7 } { ext_sync_outp_inv 6 6 } { ext_sync_outp_ena 5 5 } { ext_sync_inp_sel 4 4 } { ext_sync_inp_inv 3 3 } { ext_sync_inp_ena 2 2 } { ext_sync_ena 1 1 } { ptp_ena 0 0} } }
proc show_PTP_CFG_PTP_MISC_CFG {} { __show_reg_PTP_MISC_CFG PTP_CFG_PTP_MISC_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_CFG *****************
# Configuration register for master counter upper limit
set PTP_CFG_PTP_UPPER_LIMIT_CFG 0x600701fc
proc __show_reg_PTP_UPPER_LIMIT_CFG {name} { show_reg $name { {limit 27 0} } }
proc show_PTP_CFG_PTP_UPPER_LIMIT_CFG {} { __show_reg_PTP_UPPER_LIMIT_CFG PTP_CFG_PTP_UPPER_LIMIT_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:PTP_UPPER_LIMIT_1_TIME_ADJ_CFG ******
# Configuration register for master counter upper limit one time adjustment
set PTP_CFG_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG 0x60070200
proc __show_reg_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG {name} { show_reg $name { {adj_shot 31 31 } { adj 27 0} } }
proc show_PTP_CFG_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG {} { __show_reg_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG PTP_CFG_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:PTP_SYNC_INTR_ENA_CFG ***************
# Sync Interrupt enable register
set PTP_CFG_PTP_SYNC_INTR_ENA_CFG 0x60070204
proc __show_reg_PTP_SYNC_INTR_ENA_CFG {name} { show_reg $name { {ext_sync_current_tim 1 1 } { sync_stat_ena 0 0} } }
proc show_PTP_CFG_PTP_SYNC_INTR_ENA_CFG {} { __show_reg_PTP_SYNC_INTR_ENA_CFG PTP_CFG_PTP_SYNC_INTR_ENA_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_HIGH_PERIOD_CFG *********
# Generated external clock high period configuration register
set PTP_CFG_GEN_EXT_CLK_HIGH_PERIOD_CFG 0x60070208
proc __show_reg_GEN_EXT_CLK_HIGH_PERIOD_CFG {name} { show_reg $name { {period 27 0} } }
proc show_PTP_CFG_GEN_EXT_CLK_HIGH_PERIOD_CFG {} { __show_reg_GEN_EXT_CLK_HIGH_PERIOD_CFG PTP_CFG_GEN_EXT_CLK_HIGH_PERIOD_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_LOW_PERIOD_CFG **********
# Generated external clock low period configuration register
set PTP_CFG_GEN_EXT_CLK_LOW_PERIOD_CFG 0x6007020c
proc __show_reg_GEN_EXT_CLK_LOW_PERIOD_CFG {name} { show_reg $name { {period 27 0} } }
proc show_PTP_CFG_GEN_EXT_CLK_LOW_PERIOD_CFG {} { __show_reg_GEN_EXT_CLK_LOW_PERIOD_CFG PTP_CFG_GEN_EXT_CLK_LOW_PERIOD_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:GEN_EXT_CLK_CFG *********************
# Configuration register for sync. of external clock to internal master sync.
set PTP_CFG_GEN_EXT_CLK_CFG 0x60070210
proc __show_reg_GEN_EXT_CLK_CFG {name} { show_reg $name { {sync_ena 2 2 } { adj_ena 1 1 } { ena 0 0} } }
proc show_PTP_CFG_GEN_EXT_CLK_CFG {} { __show_reg_GEN_EXT_CLK_CFG PTP_CFG_GEN_EXT_CLK_CFG }

#***** Register DEVCPU_GCB:PTP_CFG:CLK_ADJ_CFG *************************
# Configuration register for generated clock frequency adjustment
set PTP_CFG_CLK_ADJ_CFG 0x60070214
proc __show_reg_CLK_ADJ_CFG {name} { show_reg $name { {adj_dir 31 31 } { adj_ena 30 30 } { adj_upd 29 29 } { adj 27 0} } }
proc show_PTP_CFG_CLK_ADJ_CFG {} { __show_reg_CLK_ADJ_CFG PTP_CFG_CLK_ADJ_CFG }

proc show_PTP_CFG {} {
    show_PTP_CFG_PTP_MISC_CFG
    show_PTP_CFG_PTP_UPPER_LIMIT_CFG
    show_PTP_CFG_PTP_UPPER_LIMIT_1_TIME_ADJ_CFG
    show_PTP_CFG_PTP_SYNC_INTR_ENA_CFG
    show_PTP_CFG_GEN_EXT_CLK_HIGH_PERIOD_CFG
    show_PTP_CFG_GEN_EXT_CLK_LOW_PERIOD_CFG
    show_PTP_CFG_GEN_EXT_CLK_CFG
    show_PTP_CFG_CLK_ADJ_CFG
}
#*********************************************************************
# Register group: DEVCPU_GCB:PTP_STAT
# Status registers for PTP

#***** Register DEVCPU_GCB:PTP_STAT:PTP_CURRENT_TIME_STAT **************
# Current PTP master timer value
set PTP_STAT_PTP_CURRENT_TIME_STAT 0x60070218
proc __show_reg_PTP_CURRENT_TIME_STAT {name} { show_reg $name { {time 27 0} } }
proc show_PTP_STAT_PTP_CURRENT_TIME_STAT {} { __show_reg_PTP_CURRENT_TIME_STAT PTP_STAT_PTP_CURRENT_TIME_STAT }

#***** Register DEVCPU_GCB:PTP_STAT:EXT_SYNC_CURRENT_TIME_STAT *********
# External sync current time status register
set PTP_STAT_EXT_SYNC_CURRENT_TIME_STAT 0x6007021c
proc __show_reg_EXT_SYNC_CURRENT_TIME_STAT {name} { show_reg $name { {time 27 0} } }
proc show_PTP_STAT_EXT_SYNC_CURRENT_TIME_STAT {} { __show_reg_EXT_SYNC_CURRENT_TIME_STAT PTP_STAT_EXT_SYNC_CURRENT_TIME_STAT }

#***** Register DEVCPU_GCB:PTP_STAT:PTP_EVT_STAT ***********************
# Stick register for external sync current time status
set PTP_STAT_PTP_EVT_STAT 0x60070220
proc __show_reg_PTP_EVT_STAT {name} { show_reg $name { {clk_adj_upd_st 2 2 } { ext_sync_current_tim 1 1 } { sync_stat 0 0} } }
proc show_PTP_STAT_PTP_EVT_STAT {} { __show_reg_PTP_EVT_STAT PTP_STAT_PTP_EVT_STAT }

proc show_PTP_STAT {} {
    show_PTP_STAT_PTP_CURRENT_TIME_STAT
    show_PTP_STAT_EXT_SYNC_CURRENT_TIME_STAT
    show_PTP_STAT_PTP_EVT_STAT
}
#*********************************************************************
# Register group: DEVCPU_GCB:PTP_TIMERS
# Latched values of time of day timer for PTP measurements

#***** Register DEVCPU_GCB:PTP_TIMERS:PTP_TOD **************************
# Time of day (Seconds)
set PTP_TIMERS_PTP_TOD 0x60070224
proc show_PTP_TIMERS_PTP_TOD {} { show_reg PTP_TIMERS_PTP_TOD {} }

#***** Register DEVCPU_GCB:PTP_TIMERS:PTP_NS ***************************
# Time of day (Nanoseconds)
set PTP_TIMERS_PTP_NS 0x60070228
proc __show_reg_PTP_NS {name} { show_reg $name { {ns 27 0} } }
proc show_PTP_TIMERS_PTP_NS {} { __show_reg_PTP_NS PTP_TIMERS_PTP_NS }

#***** Register DEVCPU_GCB:PTP_TIMERS:PTP_DELAY ************************
# Delay timer
set PTP_TIMERS_PTP_DELAY 0x6007022c
proc show_PTP_TIMERS_PTP_DELAY {} { show_reg PTP_TIMERS_PTP_DELAY {} }

#***** Register DEVCPU_GCB:PTP_TIMERS:PTP_TIMER_CTRL *******************
# Control register for PTP timers
set PTP_TIMERS_PTP_TIMER_CTRL 0x60070230
proc __show_reg_PTP_TIMER_CTRL {name} { show_reg $name { {latch 2 2 } { timer_ena 1 1 } { tod_rst 0 0} } }
proc show_PTP_TIMERS_PTP_TIMER_CTRL {} { __show_reg_PTP_TIMER_CTRL PTP_TIMERS_PTP_TIMER_CTRL }

proc show_PTP_TIMERS {} {
    show_PTP_TIMERS_PTP_TOD
    show_PTP_TIMERS_PTP_NS
    show_PTP_TIMERS_PTP_DELAY
    show_PTP_TIMERS_PTP_TIMER_CTRL
}
#*********************************************************************
# Register group: DEVCPU_GCB:MEMITGR
# Memory integrity monitor

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_CTRL ************************
# Monitor control
set MEMITGR_CTRL 0x60070234
proc __show_reg_MEMITGR_CTRL {name} { show_reg $name { {activate 0 0} } }
proc show_MEMITGR_CTRL {} { __show_reg_MEMITGR_CTRL MEMITGR_CTRL }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_STAT ************************
# Monitor status
set MEMITGR_STAT 0x60070238
proc __show_reg_MEMITGR_STAT {name} { show_reg $name { {indication_ovf 5 5 } { indication 4 4 } { mode_listen 3 3 } { mode_detect 2 2 } { mode_idle 1 1 } { mode_busy 0 0} } }
proc show_MEMITGR_STAT {} { __show_reg_MEMITGR_STAT MEMITGR_STAT }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_INFO ************************
# Memory indication
set MEMITGR_INFO 0x6007023c
proc __show_reg_MEMITGR_INFO {name} { show_reg $name { {err 31 31 } { cor 30 30 } { err_ovf 29 29 } { cor_ovf 28 28 } { addr 27 0} } }
proc show_MEMITGR_INFO {} { __show_reg_MEMITGR_INFO MEMITGR_INFO }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_IDX *************************
# Memory index
set MEMITGR_IDX 0x60070240
proc __show_reg_MEMITGR_IDX {name} { show_reg $name { {idx 15 0} } }
proc show_MEMITGR_IDX {} { __show_reg_MEMITGR_IDX MEMITGR_IDX }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DIV *************************
# Monitor ring sync divider
set MEMITGR_DIV 0x60070244
proc __show_reg_MEMITGR_DIV {name} { show_reg $name { {div 15 0} } }
proc show_MEMITGR_DIV {} { __show_reg_MEMITGR_DIV MEMITGR_DIV }

#***** Register DEVCPU_GCB:MEMITGR:MEMITGR_DBG *************************
# Debug registers
set MEMITGR_DBG 0x60070248
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
# Reset Settings
set SYS_RESET 0x70000020
proc __show_reg_RESET {name} { show_reg $name { {cpu_release 4 4 } { core_rst_cpu_only 3 3 } { core_rst_protect 2 2 } { core_rst_force 1 1 } { mem_rst_force 0 0} } }
proc show_SYS_RESET {} { __show_reg_RESET SYS_RESET }

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_CTRL ******************
# General control
set SYS_GEN_CTRL 0x70000024
proc __show_reg_GENERAL_CTRL {name} { show_reg $name { {swc_clear_if 6 6 } { cpu_busif_sleep_dis 5 5 } { cpu_busif_werr_ena 4 4 } { if_master_dis 3 3 } { if_master_spi_ena 2 2 } { if_master_pi_ena 1 1 } { boot_mode_ena 0 0} } }
proc show_SYS_GEN_CTRL {} { __show_reg_GENERAL_CTRL SYS_GEN_CTRL }

#***** Register ICPU_CFG:CPU_SYSTEM_CTRL:GENERAL_STAT ******************
# General status
set SYS_GEN_STAT 0x70000028
proc __show_reg_GENERAL_STAT {name} { show_reg $name { {swc_non_32b_wr 4 4 } { cpu_sleep 3 3 } { endian_mode 2 2 } { boot_mode 1 1 } { boot_if 0 0} } }
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
# Parallel Interface Master Configuration

#***** Register ICPU_CFG:PI_MST:PI_MST_CFG *****************************
# PI Master Configuration
set PI_MST_CFG 0x7000002c
proc __show_reg_PI_MST_CFG {name} { show_reg $name { {ate_mode_dis 7 7 } { clk_pol 6 6 } { tristate_ctrl 5 5 } { clk_div 4 0} } }
proc show_PI_MST_CFG {} { __show_reg_PI_MST_CFG PI_MST_CFG }

#***** Register ICPU_CFG:PI_MST:PI_MST_CTRL ****************************
# PI Master Control Register
set PI_MST_CTRL_0 0x70000030
set PI_MST_CTRL_1 0x70000034
set PI_MST_CTRL_2 0x70000038
set PI_MST_CTRL_3 0x7000003c
proc __show_reg_PI_MST_CTRL {name} { show_reg $name { {data_wid 23 23 } { dpaced_xfer_ena 22 22 } { dpaced_timeout_ena 21 21 } { dpaced_timeout 20 18 } { cs_tristate_ctrl 17 17 } { done_pol 16 16 } { smpl_on_done 15 15 } { waitcc 14 7 } { cscc 6 5 } { oecc 4 3 } { hldcc 2 0} } }
proc show_PI_MST_CTRL_0 {} { __show_reg_PI_MST_CTRL PI_MST_CTRL_0 }
proc show_PI_MST_CTRL_1 {} { __show_reg_PI_MST_CTRL PI_MST_CTRL_1 }
proc show_PI_MST_CTRL_2 {} { __show_reg_PI_MST_CTRL PI_MST_CTRL_2 }
proc show_PI_MST_CTRL_3 {} { __show_reg_PI_MST_CTRL PI_MST_CTRL_3 }

#***** Register ICPU_CFG:PI_MST:PI_MST_STATUS **************************
# PI Master Status Registers
set PI_MST_STATUS_0 0x70000040
set PI_MST_STATUS_1 0x70000044
set PI_MST_STATUS_2 0x70000048
set PI_MST_STATUS_3 0x7000004c
proc __show_reg_PI_MST_STATUS {name} { show_reg $name { {st 0 0} } }
proc show_PI_MST_STATUS_0 {} { __show_reg_PI_MST_STATUS PI_MST_STATUS_0 }
proc show_PI_MST_STATUS_1 {} { __show_reg_PI_MST_STATUS PI_MST_STATUS_1 }
proc show_PI_MST_STATUS_2 {} { __show_reg_PI_MST_STATUS PI_MST_STATUS_2 }
proc show_PI_MST_STATUS_3 {} { __show_reg_PI_MST_STATUS PI_MST_STATUS_3 }

proc show_PI_MST {} {
    show_PI_MST_CFG
    show_PI_MST_CTRL_0
    show_PI_MST_CTRL_1
    show_PI_MST_CTRL_2
    show_PI_MST_CTRL_3
    show_PI_MST_STATUS_0
    show_PI_MST_STATUS_1
    show_PI_MST_STATUS_2
    show_PI_MST_STATUS_3
}
#*********************************************************************
# Register group: ICPU_CFG:SPI_MST
# SPI Master Configuration

#***** Register ICPU_CFG:SPI_MST:SPI_MST_CFG ***************************
# SPI Master Configuration
set SPI_MST_CFG 0x70000050
proc __show_reg_SPI_MST_CFG {name} { show_reg $name { {fast_read_ena 10 10 } { cs_deselect_time 9 5 } { clk_div 4 0} } }
proc show_SPI_MST_CFG {} { __show_reg_SPI_MST_CFG SPI_MST_CFG }

#***** Register ICPU_CFG:SPI_MST:SPI_MST_STATUS ************************
# SPI Master Status Registers
set SPI_MST_STATUS_0 0x70000054
set SPI_MST_STATUS_1 0x70000058
set SPI_MST_STATUS_2 0x7000005c
set SPI_MST_STATUS_3 0x70000060
proc __show_reg_SPI_MST_STATUS {name} { show_reg $name { {err 0 0} } }
proc show_SPI_MST_STATUS_0 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_0 }
proc show_SPI_MST_STATUS_1 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_1 }
proc show_SPI_MST_STATUS_2 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_2 }
proc show_SPI_MST_STATUS_3 {} { __show_reg_SPI_MST_STATUS SPI_MST_STATUS_3 }

#***** Register ICPU_CFG:SPI_MST:SW_MODE *******************************
# Manual control of the SPI interface
set SPI_MST_SW_MODE 0x70000064
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
# Configuration of the 8051
set MPU8051_CFG 0x70000068
proc __show_reg_MPU8051_CFG {name} { show_reg $name { {ena 0 0} } }
proc show_MPU8051_CFG {} { __show_reg_MPU8051_CFG MPU8051_CFG }

#***** Register ICPU_CFG:MPU8051:MPU8051_STAT **************************
# Status from the 8051
set MPU8051_STAT 0x7000006c
proc __show_reg_MPU8051_STAT {name} { show_reg $name { {ahb_err 9 9 } { stop 8 8 } { gpr 7 0} } }
proc show_MPU8051_STAT {} { __show_reg_MPU8051_STAT MPU8051_STAT }

#***** Register ICPU_CFG:MPU8051:MPU8051_MMAP **************************
# Configuration of the 8051 memory mapping mechanism
set MPU8051_MMAP 0x70000070
proc __show_reg_MPU8051_MMAP {name} { show_reg $name { {msaddr_code_high 7 7 } { msaddr_code_low 6 6 } { msaddr_data_high 5 5 } { msaddr_data_low 4 4 } { map_code_high 3 3 } { map_code_low 2 2 } { map_data_high 1 1 } { map_data_low 0 0} } }
proc show_MPU8051_MMAP {} { __show_reg_MPU8051_MMAP MPU8051_MMAP }

#***** Register ICPU_CFG:MPU8051:MEMACC_CTRL ***************************
# Configuration of and status for the load/examine of the onchip 8051 memory.
set MPU8051_MEMACC_CTRL 0x70000074
proc __show_reg_MEMACC_CTRL {name} { show_reg $name { {examine 1 1 } { do 0 0} } }
proc show_MPU8051_MEMACC_CTRL {} { __show_reg_MEMACC_CTRL MPU8051_MEMACC_CTRL }

#***** Register ICPU_CFG:MPU8051:MEMACC ********************************
# Configure where in the onchip 8051 memory to load/examine.
set MPU8051_MEMACC 0x70000078
proc __show_reg_MEMACC {name} { show_reg $name { {stop 31 18 } { start 15 2} } }
proc show_MPU8051_MEMACC {} { __show_reg_MEMACC MPU8051_MEMACC }

#***** Register ICPU_CFG:MPU8051:MEMACC_AHB ****************************
# 
set MPU8051_MEMACC_AHB 0x7000007c
proc __show_reg_MEMACC_AHB {name} { show_reg $name { {start 31 2} } }
proc show_MPU8051_MEMACC_AHB {} { __show_reg_MEMACC_AHB MPU8051_MEMACC_AHB }

#***** Register ICPU_CFG:MPU8051:MPU8051_TIMER_CLK_DIV *****************
# Timer Tick Divider for the 8051 external clock inputs
set I8051_TIMER_CLK_DIV 0x70000080
proc __show_reg_MPU8051_TIMER_CLK_DIV {name} { show_reg $name { {div 16 0} } }
proc show_I8051_TIMER_CLK_DIV {} { __show_reg_MPU8051_TIMER_CLK_DIV I8051_TIMER_CLK_DIV }

proc show_MPU8051 {} {
    show_MPU8051_CFG
    show_MPU8051_STAT
    show_MPU8051_MMAP
    show_MPU8051_MEMACC_CTRL
    show_MPU8051_MEMACC
    show_MPU8051_MEMACC_AHB
    show_I8051_TIMER_CLK_DIV
}
#*********************************************************************
# Register group: ICPU_CFG:INTR
# Interrupt Registers

#***** Register ICPU_CFG:INTR:INTR *************************************
# Interrupt sticky bits
set INTR_INTR 0x70000084
proc __show_reg_INTR {name} { show_reg $name { {miim1 28 28 } { miim0 27 27 } { ptp_sync 26 26 } { integ 25 25 } { inj_rdy4 24 24 } { inj_rdy3 23 23 } { inj_rdy2 22 22 } { inj_rdy1 21 21 } { inj_rdy0 20 20 } { xtr_rdy3 19 19 } { xtr_rdy2 18 18 } { xtr_rdy1 17 17 } { xtr_rdy0 16 16 } { blk_ana 15 15 } { dev_all 14 14 } { sgpio 13 13 } { gpio 12 12 } { twi 11 11 } { fdma 10 10 } { timer2 9 9 } { timer1 8 8 } { timer0 7 7 } { uart 6 6 } { pi_sd1 5 5 } { pi_sd0 4 4 } { sw1 3 3 } { sw0 2 2 } { ext1 1 1 } { ext0 0 0} } }
proc show_INTR_INTR {} { __show_reg_INTR INTR_INTR }

#***** Register ICPU_CFG:INTR:INTR_ENA *********************************
# Interrupt enable
set INTR_ENA 0x70000088
proc __show_reg_INTR_ENA {name} { show_reg $name { {miim1 28 28 } { miim0 27 27 } { ptp_sync 26 26 } { integ 25 25 } { inj_rdy4 24 24 } { inj_rdy3 23 23 } { inj_rdy2 22 22 } { inj_rdy1 21 21 } { inj_rdy0 20 20 } { xtr_rdy3 19 19 } { xtr_rdy2 18 18 } { xtr_rdy1 17 17 } { xtr_rdy0 16 16 } { blk_ana 15 15 } { dev_all 14 14 } { sgpio 13 13 } { gpio 12 12 } { twi 11 11 } { fdma 10 10 } { timer2 9 9 } { timer1 8 8 } { timer0 7 7 } { uart 6 6 } { pi_sd1 5 5 } { pi_sd0 4 4 } { sw1 3 3 } { sw0 2 2 } { ext1 1 1 } { ext0 0 0} } }
proc show_INTR_ENA {} { __show_reg_INTR_ENA INTR_ENA }

#***** Register ICPU_CFG:INTR:INTR_ENA_CLR *****************************
# Clear interrupt enable
set INTR_ENA_CLR 0x7000008c
proc __show_reg_INTR_ENA_CLR {name} { show_reg $name { {miim1 28 28 } { miim0 27 27 } { ptp_sync 26 26 } { integ 25 25 } { inj_rdy4 24 24 } { inj_rdy3 23 23 } { inj_rdy2 22 22 } { inj_rdy1 21 21 } { inj_rdy0 20 20 } { xtr_rdy3 19 19 } { xtr_rdy2 18 18 } { xtr_rdy1 17 17 } { xtr_rdy0 16 16 } { blk_ana 15 15 } { dev_all 14 14 } { sgpio 13 13 } { gpio 12 12 } { twi 11 11 } { fdma 10 10 } { timer2 9 9 } { timer1 8 8 } { timer0 7 7 } { uart 6 6 } { pi_sd1 5 5 } { pi_sd0 4 4 } { sw1 3 3 } { sw0 2 2 } { ext1 1 1 } { ext0 0 0} } }
proc show_INTR_ENA_CLR {} { __show_reg_INTR_ENA_CLR INTR_ENA_CLR }

#***** Register ICPU_CFG:INTR:INTR_ENA_SET *****************************
# Set interrupt enable
set INTR_ENA_SET 0x70000090
proc __show_reg_INTR_ENA_SET {name} { show_reg $name { {miim1 28 28 } { miim0 27 27 } { ptp_sync 26 26 } { integ 25 25 } { inj_rdy4 24 24 } { inj_rdy3 23 23 } { inj_rdy2 22 22 } { inj_rdy1 21 21 } { inj_rdy0 20 20 } { xtr_rdy3 19 19 } { xtr_rdy2 18 18 } { xtr_rdy1 17 17 } { xtr_rdy0 16 16 } { blk_ana 15 15 } { dev_all 14 14 } { sgpio 13 13 } { gpio 12 12 } { twi 11 11 } { fdma 10 10 } { timer2 9 9 } { timer1 8 8 } { timer0 7 7 } { uart 6 6 } { pi_sd1 5 5 } { pi_sd0 4 4 } { sw1 3 3 } { sw0 2 2 } { ext1 1 1 } { ext0 0 0} } }
proc show_INTR_ENA_SET {} { __show_reg_INTR_ENA_SET INTR_ENA_SET }

#***** Register ICPU_CFG:INTR:INTR_RAW *********************************
# Raw of interrupt source
set INTR_RAW 0x70000094
proc __show_reg_INTR_RAW {name} { show_reg $name { {miim1_raw 28 28 } { miim0_raw 27 27 } { ptp_sync_raw 26 26 } { integ_raw 25 25 } { inj_rdy4_raw 24 24 } { inj_rdy3_raw 23 23 } { inj_rdy2_raw 22 22 } { inj_rdy1_raw 21 21 } { inj_rdy0_raw 20 20 } { xtr_rdy3_raw 19 19 } { xtr_rdy2_raw 18 18 } { xtr_rdy1_raw 17 17 } { xtr_rdy0_raw 16 16 } { blk_ana_raw 15 15 } { dev_all_raw 14 14 } { sgpio_raw 13 13 } { gpio_raw 12 12 } { twi_raw 11 11 } { fdma_raw 10 10 } { timer2_raw 9 9 } { timer1_raw 8 8 } { timer0_raw 7 7 } { uart_raw 6 6 } { pi_sd1_raw 5 5 } { pi_sd0_raw 4 4 } { sw1_raw 3 3 } { sw0_raw 2 2 } { ext1_raw 1 1 } { ext0_raw 0 0} } }
proc show_INTR_RAW {} { __show_reg_INTR_RAW INTR_RAW }

#***** Register ICPU_CFG:INTR:MIPS_IRQ0_ENA ****************************
# Enable of ICPU_IRQ0 interrupt
set INTR_MIRQ0_ENA 0x70000098
proc __show_reg_MIPS_IRQ0_ENA {name} { show_reg $name { {stat 1 1 } { ena 0 0} } }
proc show_INTR_MIRQ0_ENA {} { __show_reg_MIPS_IRQ0_ENA INTR_MIRQ0_ENA }

#***** Register ICPU_CFG:INTR:MIPS_IRQ0_IDENT **************************
# Sources of ICPU_IRQ0 interrupt
set INTR_MIRQ0_ID 0x7000009c
proc __show_reg_MIPS_IRQ0_IDENT {name} { show_reg $name { {miim1_id 28 28 } { miim0_id 27 27 } { ptp_sync_id 26 26 } { integ_id 25 25 } { inj_rdy4_id 24 24 } { inj_rdy3_id 23 23 } { inj_rdy2_id 22 22 } { inj_rdy1_id 21 21 } { inj_rdy0_id 20 20 } { xtr_rdy3_id 19 19 } { xtr_rdy2_id 18 18 } { xtr_rdy1_id 17 17 } { xtr_rdy0_id 16 16 } { blk_ana_id 15 15 } { dev_all_id 14 14 } { sgpio_id 13 13 } { gpio_id 12 12 } { twi_id 11 11 } { fdma_id 10 10 } { timer2_id 9 9 } { timer1_id 8 8 } { timer0_id 7 7 } { uart_id 6 6 } { pi_sd1_id 5 5 } { pi_sd0_id 4 4 } { sw1_id 3 3 } { sw0_id 2 2 } { ext1_id 1 1 } { ext0_id 0 0} } }
proc show_INTR_MIRQ0_ID {} { __show_reg_MIPS_IRQ0_IDENT INTR_MIRQ0_ID }

#***** Register ICPU_CFG:INTR:MIPS_IRQ1_ENA ****************************
# Enable of ICPU_IRQ1 interrupt
set INTR_MIRQ1_ENA 0x700000a0
proc __show_reg_MIPS_IRQ1_ENA {name} { show_reg $name { {stat 1 1 } { ena 0 0} } }
proc show_INTR_MIRQ1_ENA {} { __show_reg_MIPS_IRQ1_ENA INTR_MIRQ1_ENA }

#***** Register ICPU_CFG:INTR:MIPS_IRQ1_IDENT **************************
# Sources of ICPU_IRQ1 interrupt
set INTR_MIRQ1_ID 0x700000a4
proc __show_reg_MIPS_IRQ1_IDENT {name} { show_reg $name { {miim1_id 28 28 } { miim0_id 27 27 } { ptp_sync_id 26 26 } { integ_id 25 25 } { inj_rdy4_id 24 24 } { inj_rdy3_id 23 23 } { inj_rdy2_id 22 22 } { inj_rdy1_id 21 21 } { inj_rdy0_id 20 20 } { xtr_rdy3_id 19 19 } { xtr_rdy2_id 18 18 } { xtr_rdy1_id 17 17 } { xtr_rdy0_id 16 16 } { blk_ana_id 15 15 } { dev_all_id 14 14 } { sgpio_id 13 13 } { gpio_id 12 12 } { twi_id 11 11 } { fdma_id 10 10 } { timer2_id 9 9 } { timer1_id 8 8 } { timer0_id 7 7 } { uart_id 6 6 } { pi_sd1_id 5 5 } { pi_sd0_id 4 4 } { sw1_id 3 3 } { sw0_id 2 2 } { ext1_id 1 1 } { ext0_id 0 0} } }
proc show_INTR_MIRQ1_ID {} { __show_reg_MIPS_IRQ1_IDENT INTR_MIRQ1_ID }

#***** Register ICPU_CFG:INTR:EXT_IRQ0_ENA *****************************
# Enable of EXT_IRQ0 interrupt
set INTR_EXT_IRQ0_ENA 0x700000a8
proc __show_reg_EXT_IRQ0_ENA {name} { show_reg $name { {stat 1 1 } { ena 0 0} } }
proc show_INTR_EXT_IRQ0_ENA {} { __show_reg_EXT_IRQ0_ENA INTR_EXT_IRQ0_ENA }

#***** Register ICPU_CFG:INTR:EXT_IRQ0_IDENT ***************************
# Sources of EXT_IRQ0 interrupt
set INTR_EXT_IRQ0_ID 0x700000ac
proc __show_reg_EXT_IRQ0_IDENT {name} { show_reg $name { {miim1_id 28 28 } { miim0_id 27 27 } { ptp_sync_id 26 26 } { integ_id 25 25 } { inj_rdy4_id 24 24 } { inj_rdy3_id 23 23 } { inj_rdy2_id 22 22 } { inj_rdy1_id 21 21 } { inj_rdy0_id 20 20 } { xtr_rdy3_id 19 19 } { xtr_rdy2_id 18 18 } { xtr_rdy1_id 17 17 } { xtr_rdy0_id 16 16 } { blk_ana_id 15 15 } { dev_all_id 14 14 } { sgpio_id 13 13 } { gpio_id 12 12 } { twi_id 11 11 } { fdma_id 10 10 } { timer2_id 9 9 } { timer1_id 8 8 } { timer0_id 7 7 } { uart_id 6 6 } { pi_sd1_id 5 5 } { pi_sd0_id 4 4 } { sw1_id 3 3 } { sw0_id 2 2 } { ext1_id 1 1 } { ext0_id 0 0} } }
proc show_INTR_EXT_IRQ0_ID {} { __show_reg_EXT_IRQ0_IDENT INTR_EXT_IRQ0_ID }

#***** Register ICPU_CFG:INTR:EXT_IRQ1_ENA *****************************
# Enable of EXT_IRQ1 interrupt
set INTR_EXT_IRQ1_ENA 0x700000b0
proc __show_reg_EXT_IRQ1_ENA {name} { show_reg $name { {stat 1 1 } { ena 0 0} } }
proc show_INTR_EXT_IRQ1_ENA {} { __show_reg_EXT_IRQ1_ENA INTR_EXT_IRQ1_ENA }

#***** Register ICPU_CFG:INTR:EXT_IRQ1_IDENT ***************************
# Sources of EXT_IRQ1 interrupt
set INTR_EXT_IRQ1_ID 0x700000b4
proc __show_reg_EXT_IRQ1_IDENT {name} { show_reg $name { {miim1_id 28 28 } { miim0_id 27 27 } { ptp_sync_id 26 26 } { integ_id 25 25 } { inj_rdy4_id 24 24 } { inj_rdy3_id 23 23 } { inj_rdy2_id 22 22 } { inj_rdy1_id 21 21 } { inj_rdy0_id 20 20 } { xtr_rdy3_id 19 19 } { xtr_rdy2_id 18 18 } { xtr_rdy1_id 17 17 } { xtr_rdy0_id 16 16 } { blk_ana_id 15 15 } { dev_all_id 14 14 } { sgpio_id 13 13 } { gpio_id 12 12 } { twi_id 11 11 } { fdma_id 10 10 } { timer2_id 9 9 } { timer1_id 8 8 } { timer0_id 7 7 } { uart_id 6 6 } { pi_sd1_id 5 5 } { pi_sd0_id 4 4 } { sw1_id 3 3 } { sw0_id 2 2 } { ext1_id 1 1 } { ext0_id 0 0} } }
proc show_INTR_EXT_IRQ1_ID {} { __show_reg_EXT_IRQ1_IDENT INTR_EXT_IRQ1_ID }

#***** Register ICPU_CFG:INTR:DEV_IDENT ********************************
# Device interrupts
set INTR_DEV_ID 0x700000b8
proc show_INTR_DEV_ID {} { show_reg INTR_DEV_ID {} }

#***** Register ICPU_CFG:INTR:EXT0_INTR_CONFIG *************************
# EXT_IRQ0 interrupt configuration
set INTR_EXT0_CONFIG 0x700000bc
proc __show_reg_EXT0_INTR_CONFIG {name} { show_reg $name { {drv 6 6 } { dir 5 5 } { pol 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_EXT0_CONFIG {} { __show_reg_EXT0_INTR_CONFIG INTR_EXT0_CONFIG }

#***** Register ICPU_CFG:INTR:EXT1_INTR_CONFIG *************************
# EXT_IRQ1 interrupt configuration
set INTR_EXT1_CONFIG 0x700000c0
proc __show_reg_EXT1_INTR_CONFIG {name} { show_reg $name { {drv 6 6 } { dir 5 5 } { pol 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_EXT1_CONFIG {} { __show_reg_EXT1_INTR_CONFIG INTR_EXT1_CONFIG }

#***** Register ICPU_CFG:INTR:SW0_INTR_CONFIG **************************
# SW0 interrupt configuration
set INTR_SW0_CONFIG 0x700000c4
proc __show_reg_SW0_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_SW0_CONFIG {} { __show_reg_SW0_INTR_CONFIG INTR_SW0_CONFIG }

#***** Register ICPU_CFG:INTR:SW1_INTR_CONFIG **************************
# SW1 interrupt configuration
set INTR_SW1_CONFIG 0x700000c8
proc __show_reg_SW1_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_SW1_CONFIG {} { __show_reg_SW1_INTR_CONFIG INTR_SW1_CONFIG }

#***** Register ICPU_CFG:INTR:MIIM1_INTR_CONFIG ************************
# MIIM1 interrupt configuration
set INTR_MIIM1_CONFIG 0x700000cc
proc __show_reg_MIIM1_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_MIIM1_CONFIG {} { __show_reg_MIIM1_INTR_CONFIG INTR_MIIM1_CONFIG }

#***** Register ICPU_CFG:INTR:MIIM0_INTR_CONFIG ************************
# MIIM0 interrupt configuration
set INTR_MIIM0_CONFIG 0x700000d0
proc __show_reg_MIIM0_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_MIIM0_CONFIG {} { __show_reg_MIIM0_INTR_CONFIG INTR_MIIM0_CONFIG }

#***** Register ICPU_CFG:INTR:PI_SD0_INTR_CONFIG ***********************
# PI_SD0 interrupt configuration
set INTR_PI_SD0_CONFIG 0x700000d4
proc __show_reg_PI_SD0_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_PI_SD0_CONFIG {} { __show_reg_PI_SD0_INTR_CONFIG INTR_PI_SD0_CONFIG }

#***** Register ICPU_CFG:INTR:PI_SD1_INTR_CONFIG ***********************
# PI_SD1 interrupt configuration
set INTR_PI_SD1_CONFIG 0x700000d8
proc __show_reg_PI_SD1_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_PI_SD1_CONFIG {} { __show_reg_PI_SD1_INTR_CONFIG INTR_PI_SD1_CONFIG }

#***** Register ICPU_CFG:INTR:UART_INTR_CONFIG *************************
# UART interrupt configuration
set INTR_UART_CONFIG 0x700000dc
proc __show_reg_UART_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_UART_CONFIG {} { __show_reg_UART_INTR_CONFIG INTR_UART_CONFIG }

#***** Register ICPU_CFG:INTR:TIMER0_INTR_CONFIG ***********************
# TIMER0 interrupt configuration
set INTR_TIMER0_CONFIG 0x700000e0
proc __show_reg_TIMER0_INTR_CONFIG {name} { show_reg $name { {force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_TIMER0_CONFIG {} { __show_reg_TIMER0_INTR_CONFIG INTR_TIMER0_CONFIG }

#***** Register ICPU_CFG:INTR:TIMER1_INTR_CONFIG ***********************
# TIMER1 interrupt configuration
set INTR_TIMER1_CONFIG 0x700000e4
proc __show_reg_TIMER1_INTR_CONFIG {name} { show_reg $name { {force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_TIMER1_CONFIG {} { __show_reg_TIMER1_INTR_CONFIG INTR_TIMER1_CONFIG }

#***** Register ICPU_CFG:INTR:TIMER2_INTR_CONFIG ***********************
# TIMER2 interrupt configuration
set INTR_TIMER2_CONFIG 0x700000e8
proc __show_reg_TIMER2_INTR_CONFIG {name} { show_reg $name { {force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_TIMER2_CONFIG {} { __show_reg_TIMER2_INTR_CONFIG INTR_TIMER2_CONFIG }

#***** Register ICPU_CFG:INTR:FDMA_INTR_CONFIG *************************
# FDMA interrupt configuration
set INTR_FDMA_CONFIG 0x700000ec
proc __show_reg_FDMA_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_FDMA_CONFIG {} { __show_reg_FDMA_INTR_CONFIG INTR_FDMA_CONFIG }

#***** Register ICPU_CFG:INTR:TWI_INTR_CONFIG **************************
# TWI interrupt configuration
set INTR_TWI_CONFIG 0x700000f0
proc __show_reg_TWI_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_TWI_CONFIG {} { __show_reg_TWI_INTR_CONFIG INTR_TWI_CONFIG }

#***** Register ICPU_CFG:INTR:GPIO_INTR_CONFIG *************************
# GPIO interrupt configuration
set INTR_GPIO_CONFIG 0x700000f4
proc __show_reg_GPIO_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_GPIO_CONFIG {} { __show_reg_GPIO_INTR_CONFIG INTR_GPIO_CONFIG }

#***** Register ICPU_CFG:INTR:SGPIO_INTR_CONFIG ************************
# SGPIO interrupt configuration
set INTR_SGPIO_CONFIG 0x700000f8
proc __show_reg_SGPIO_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_SGPIO_CONFIG {} { __show_reg_SGPIO_INTR_CONFIG INTR_SGPIO_CONFIG }

#***** Register ICPU_CFG:INTR:DEV_ALL_INTR_CONFIG **********************
# DEV_ALL interrupt configuration
set INTR_DEV_ALL_CONFIG 0x700000fc
proc __show_reg_DEV_ALL_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_DEV_ALL_CONFIG {} { __show_reg_DEV_ALL_INTR_CONFIG INTR_DEV_ALL_CONFIG }

#***** Register ICPU_CFG:INTR:BLK_ANA_INTR_CONFIG **********************
# BLK_ANA interrupt configuration
set INTR_BLK_ANA_CONFIG 0x70000100
proc __show_reg_BLK_ANA_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_BLK_ANA_CONFIG {} { __show_reg_BLK_ANA_INTR_CONFIG INTR_BLK_ANA_CONFIG }

#***** Register ICPU_CFG:INTR:XTR_RDY0_INTR_CONFIG *********************
# XTR_RDY0 interrupt configuration
set INTR_XTR_RDY0_CONFIG 0x70000104
proc __show_reg_XTR_RDY0_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_XTR_RDY0_CONFIG {} { __show_reg_XTR_RDY0_INTR_CONFIG INTR_XTR_RDY0_CONFIG }

#***** Register ICPU_CFG:INTR:XTR_RDY1_INTR_CONFIG *********************
# XTR_RDY1 interrupt configuration
set INTR_XTR_RDY1_CONFIG 0x70000108
proc __show_reg_XTR_RDY1_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_XTR_RDY1_CONFIG {} { __show_reg_XTR_RDY1_INTR_CONFIG INTR_XTR_RDY1_CONFIG }

#***** Register ICPU_CFG:INTR:XTR_RDY2_INTR_CONFIG *********************
# XTR_RDY2 interrupt configuration
set INTR_XTR_RDY2_CONFIG 0x7000010c
proc __show_reg_XTR_RDY2_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_XTR_RDY2_CONFIG {} { __show_reg_XTR_RDY2_INTR_CONFIG INTR_XTR_RDY2_CONFIG }

#***** Register ICPU_CFG:INTR:XTR_RDY3_INTR_CONFIG *********************
# XTR_RDY3 interrupt configuration
set INTR_XTR_RDY3_CONFIG 0x70000110
proc __show_reg_XTR_RDY3_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_XTR_RDY3_CONFIG {} { __show_reg_XTR_RDY3_INTR_CONFIG INTR_XTR_RDY3_CONFIG }

#***** Register ICPU_CFG:INTR:INJ_RDY0_INTR_CONFIG *********************
# INJ_RDY0 interrupt configuration
set INTR_INJ_RDY0_CONFIG 0x70000114
proc __show_reg_INJ_RDY0_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_INJ_RDY0_CONFIG {} { __show_reg_INJ_RDY0_INTR_CONFIG INTR_INJ_RDY0_CONFIG }

#***** Register ICPU_CFG:INTR:INJ_RDY1_INTR_CONFIG *********************
# INJ_RDY1 interrupt configuration
set INTR_INJ_RDY1_CONFIG 0x70000118
proc __show_reg_INJ_RDY1_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_INJ_RDY1_CONFIG {} { __show_reg_INJ_RDY1_INTR_CONFIG INTR_INJ_RDY1_CONFIG }

#***** Register ICPU_CFG:INTR:INJ_RDY2_INTR_CONFIG *********************
# INJ_RDY2 interrupt configuration
set INTR_INJ_RDY2_CONFIG 0x7000011c
proc __show_reg_INJ_RDY2_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_INJ_RDY2_CONFIG {} { __show_reg_INJ_RDY2_INTR_CONFIG INTR_INJ_RDY2_CONFIG }

#***** Register ICPU_CFG:INTR:INJ_RDY3_INTR_CONFIG *********************
# INJ_RDY3 interrupt configuration
set INTR_INJ_RDY3_CONFIG 0x70000120
proc __show_reg_INJ_RDY3_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_INJ_RDY3_CONFIG {} { __show_reg_INJ_RDY3_INTR_CONFIG INTR_INJ_RDY3_CONFIG }

#***** Register ICPU_CFG:INTR:INJ_RDY4_INTR_CONFIG *********************
# INJ_RDY4 interrupt configuration
set INTR_INJ_RDY4_CONFIG 0x70000124
proc __show_reg_INJ_RDY4_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_INJ_RDY4_CONFIG {} { __show_reg_INJ_RDY4_INTR_CONFIG INTR_INJ_RDY4_CONFIG }

#***** Register ICPU_CFG:INTR:INTEGRITY_INTR_CONFIG ********************
# INTEGRITY interrupt configuration
set INTR_INTEG_CONFIG 0x70000128
proc __show_reg_INTEGRITY_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_INTEG_CONFIG {} { __show_reg_INTEGRITY_INTR_CONFIG INTR_INTEG_CONFIG }

#***** Register ICPU_CFG:INTR:PTP_SYNC_INTR_CONFIG *********************
# PTP_SYNC interrupt configuration
set INTR_PTP_SYNC_CONFIG 0x7000012c
proc __show_reg_PTP_SYNC_INTR_CONFIG {name} { show_reg $name { {bypass 4 4 } { force 3 3 } { trg 2 2 } { sel 1 0} } }
proc show_INTR_PTP_SYNC_CONFIG {} { __show_reg_PTP_SYNC_INTR_CONFIG INTR_PTP_SYNC_CONFIG }

#***** Register ICPU_CFG:INTR:DEV_ENA **********************************
# Device Interrupt enable
set INTR_DEV_ENA 0x70000130
proc show_INTR_DEV_ENA {} { show_reg INTR_DEV_ENA {} }

#***** Register ICPU_CFG:INTR:DEV_POL **********************************
# Device Interrupt polarity
set INTR_DEV_POL 0x70000134
proc show_INTR_DEV_POL {} { show_reg INTR_DEV_POL {} }

#***** Register ICPU_CFG:INTR:DEV_IDENT_STICKY *************************
# Device Interrupt sticky indications
set INTR_DEV_ID_ST 0x70000138
proc show_INTR_DEV_ID_ST {} { show_reg INTR_DEV_ID_ST {} }

proc show_INTR {} {
    show_INTR_INTR
    show_INTR_ENA
    show_INTR_ENA_CLR
    show_INTR_ENA_SET
    show_INTR_RAW
    show_INTR_MIRQ0_ENA
    show_INTR_MIRQ0_ID
    show_INTR_MIRQ1_ENA
    show_INTR_MIRQ1_ID
    show_INTR_EXT_IRQ0_ENA
    show_INTR_EXT_IRQ0_ID
    show_INTR_EXT_IRQ1_ENA
    show_INTR_EXT_IRQ1_ID
    show_INTR_DEV_ID
    show_INTR_EXT0_CONFIG
    show_INTR_EXT1_CONFIG
    show_INTR_SW0_CONFIG
    show_INTR_SW1_CONFIG
    show_INTR_MIIM1_CONFIG
    show_INTR_MIIM0_CONFIG
    show_INTR_PI_SD0_CONFIG
    show_INTR_PI_SD1_CONFIG
    show_INTR_UART_CONFIG
    show_INTR_TIMER0_CONFIG
    show_INTR_TIMER1_CONFIG
    show_INTR_TIMER2_CONFIG
    show_INTR_FDMA_CONFIG
    show_INTR_TWI_CONFIG
    show_INTR_GPIO_CONFIG
    show_INTR_SGPIO_CONFIG
    show_INTR_DEV_ALL_CONFIG
    show_INTR_BLK_ANA_CONFIG
    show_INTR_XTR_RDY0_CONFIG
    show_INTR_XTR_RDY1_CONFIG
    show_INTR_XTR_RDY2_CONFIG
    show_INTR_XTR_RDY3_CONFIG
    show_INTR_INJ_RDY0_CONFIG
    show_INTR_INJ_RDY1_CONFIG
    show_INTR_INJ_RDY2_CONFIG
    show_INTR_INJ_RDY3_CONFIG
    show_INTR_INJ_RDY4_CONFIG
    show_INTR_INTEG_CONFIG
    show_INTR_PTP_SYNC_CONFIG
    show_INTR_DEV_ENA
    show_INTR_DEV_POL
    show_INTR_DEV_ID_ST
}
#*********************************************************************
# Register group: ICPU_CFG:GPDMA
# Frame DMA

#***** Register ICPU_CFG:GPDMA:FDMA_CFG ********************************
# Common Injection or Extraction Configuration
set FDMA_CFG 0x7000013c
proc __show_reg_FDMA_CFG {name} { show_reg $name { {xtr_xgelm_ena 5 5 } { xtr_sm_clr_ena 4 4 } { autogen_ch_idx_dis 3 3 } { abrt_id 2 2 } { abrt 1 1 } { fdma_ena 0 0} } }
proc show_FDMA_CFG {} { __show_reg_FDMA_CFG FDMA_CFG }

#***** Register ICPU_CFG:GPDMA:FDMA_STAT *******************************
# Common Injection or Extraction Status
set FDMA_STAT 0x70000140
proc __show_reg_FDMA_STAT {name} { show_reg $name { {inj_grps_active 10 9 } { inj_grps_full 8 7 } { xtr_sm_not_idle 6 6 } { xtr_req_grp 5 5 } { xtr_fifo_not_empty 4 4 } { xtr_grps_active 3 2 } { xtr_grps_not_empty 1 0} } }
proc show_FDMA_STAT {} { __show_reg_FDMA_STAT FDMA_STAT }

#***** Register ICPU_CFG:GPDMA:FDMA_CH_CFG *****************************
# FDMA Channel Usage and Flow Control
set FDMA_CH_CFG_0 0x70000144
set FDMA_CH_CFG_1 0x70000148
set FDMA_CH_CFG_2 0x7000014c
set FDMA_CH_CFG_3 0x70000150
set FDMA_CH_CFG_4 0x70000154
set FDMA_CH_CFG_5 0x70000158
set FDMA_CH_CFG_6 0x7000015c
set FDMA_CH_CFG_7 0x70000160
proc __show_reg_FDMA_CH_CFG {name} { show_reg $name { {usage 1 1 } { ch_ena 0 0} } }
proc show_FDMA_CH_CFG_0 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_0 }
proc show_FDMA_CH_CFG_1 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_1 }
proc show_FDMA_CH_CFG_2 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_2 }
proc show_FDMA_CH_CFG_3 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_3 }
proc show_FDMA_CH_CFG_4 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_4 }
proc show_FDMA_CH_CFG_5 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_5 }
proc show_FDMA_CH_CFG_6 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_6 }
proc show_FDMA_CH_CFG_7 {} { __show_reg_FDMA_CH_CFG FDMA_CH_CFG_7 }

#***** Register ICPU_CFG:GPDMA:FDMA_INJ_CFG ****************************
# FDMA Injection Parameters
set FDMA_INJ_CFG_0 0x70000164
set FDMA_INJ_CFG_1 0x70000168
proc __show_reg_FDMA_INJ_CFG {name} { show_reg $name { {state_rst 5 5 } { bp2int_ena 4 4 } { bp_ena 3 3 } { bp_map 2 0} } }
proc show_FDMA_INJ_CFG_0 {} { __show_reg_FDMA_INJ_CFG FDMA_INJ_CFG_0 }
proc show_FDMA_INJ_CFG_1 {} { __show_reg_FDMA_INJ_CFG FDMA_INJ_CFG_1 }

#***** Register ICPU_CFG:GPDMA:FDMA_XTR_CFG ****************************
# FDMA Extraction Parameters
set FDMA_XTR_CFG_0 0x7000016c
set FDMA_XTR_CFG_1 0x70000170
proc __show_reg_FDMA_XTR_CFG {name} { show_reg $name { {size 2 0} } }
proc show_FDMA_XTR_CFG_0 {} { __show_reg_FDMA_XTR_CFG FDMA_XTR_CFG_0 }
proc show_FDMA_XTR_CFG_1 {} { __show_reg_FDMA_XTR_CFG FDMA_XTR_CFG_1 }

#***** Register ICPU_CFG:GPDMA:FDMA_XTR_STAT_LAST_DCB ******************
# Extraction Status for FDMA Engine
set GPDMA_LDCB_0 0x70000174
set GPDMA_LDCB_1 0x70000178
proc __show_reg_FDMA_XTR_STAT_LAST_DCB {name} { show_reg $name { {frm_len 31 16 } { abort 4 4 } { pruned 3 3 } { eof 2 2 } { sof 1 1 } { vld 0 0} } }
proc show_GPDMA_LDCB_0 {} { __show_reg_FDMA_XTR_STAT_LAST_DCB GPDMA_LDCB_0 }
proc show_GPDMA_LDCB_1 {} { __show_reg_FDMA_XTR_STAT_LAST_DCB GPDMA_LDCB_1 }

#***** Register ICPU_CFG:GPDMA:FDMA_FRM_CNT ****************************
# Frame Counter and Flow Control Status
set FDMA_FRM_CNT 0x7000017c
proc __show_reg_FDMA_FRM_CNT {name} { show_reg $name { {cnt 15 0} } }
proc show_FDMA_FRM_CNT {} { __show_reg_FDMA_FRM_CNT FDMA_FRM_CNT }

#***** Register ICPU_CFG:GPDMA:FDMA_BP_TO_INT **************************
# FDMA Backpressure Timeout Interrupt
set FDMA_BP2INT 0x70000180
proc __show_reg_FDMA_BP_TO_INT {name} { show_reg $name { {bp2int 1 0} } }
proc show_FDMA_BP2INT {} { __show_reg_FDMA_BP_TO_INT FDMA_BP2INT }

#***** Register ICPU_CFG:GPDMA:FDMA_BP_TO_DIV **************************
# FDMA Timeout Divider
set FDMA_BP2DIV 0x70000184
proc __show_reg_FDMA_BP_TO_DIV {name} { show_reg $name { {bp2div_rload 16 16 } { bp2div 15 0} } }
proc show_FDMA_BP2DIV {} { __show_reg_FDMA_BP_TO_DIV FDMA_BP2DIV }

proc show_GPDMA {} {
    show_FDMA_CFG
    show_FDMA_STAT
    show_FDMA_CH_CFG_0
    show_FDMA_CH_CFG_1
    show_FDMA_CH_CFG_2
    show_FDMA_CH_CFG_3
    show_FDMA_CH_CFG_4
    show_FDMA_CH_CFG_5
    show_FDMA_CH_CFG_6
    show_FDMA_CH_CFG_7
    show_FDMA_INJ_CFG_0
    show_FDMA_INJ_CFG_1
    show_FDMA_XTR_CFG_0
    show_FDMA_XTR_CFG_1
    show_GPDMA_LDCB_0
    show_GPDMA_LDCB_1
    show_FDMA_FRM_CNT
    show_FDMA_BP2INT
    show_FDMA_BP2DIV
}
#*********************************************************************
# Register group: ICPU_CFG:INJ_FRM_SPC
# Injection frame spacing

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_TMR *******************
# Injection frame spacing timer
set INJ_FRM_SPC0_TMR 0x70000188
set INJ_FRM_SPC1_TMR 0x70000198
set INJ_FRM_SPC2_TMR 0x700001a8
set INJ_FRM_SPC3_TMR 0x700001b8
set INJ_FRM_SPC4_TMR 0x700001c8
set INJ_FRM_SPC5_TMR 0x700001d8
set INJ_FRM_SPC6_TMR 0x700001e8
set INJ_FRM_SPC7_TMR 0x700001f8
proc show_INJ_FRM_SPC0_TMR {} { show_reg INJ_FRM_SPC0_TMR {} }
proc show_INJ_FRM_SPC1_TMR {} { show_reg INJ_FRM_SPC1_TMR {} }
proc show_INJ_FRM_SPC2_TMR {} { show_reg INJ_FRM_SPC2_TMR {} }
proc show_INJ_FRM_SPC3_TMR {} { show_reg INJ_FRM_SPC3_TMR {} }
proc show_INJ_FRM_SPC4_TMR {} { show_reg INJ_FRM_SPC4_TMR {} }
proc show_INJ_FRM_SPC5_TMR {} { show_reg INJ_FRM_SPC5_TMR {} }
proc show_INJ_FRM_SPC6_TMR {} { show_reg INJ_FRM_SPC6_TMR {} }
proc show_INJ_FRM_SPC7_TMR {} { show_reg INJ_FRM_SPC7_TMR {} }

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_TMR_CFG ***************
# Reload value for injection frame spacing timer
set INJ_FRM_SPC0_TMR_CFG 0x7000018c
set INJ_FRM_SPC1_TMR_CFG 0x7000019c
set INJ_FRM_SPC2_TMR_CFG 0x700001ac
set INJ_FRM_SPC3_TMR_CFG 0x700001bc
set INJ_FRM_SPC4_TMR_CFG 0x700001cc
set INJ_FRM_SPC5_TMR_CFG 0x700001dc
set INJ_FRM_SPC6_TMR_CFG 0x700001ec
set INJ_FRM_SPC7_TMR_CFG 0x700001fc
proc show_INJ_FRM_SPC0_TMR_CFG {} { show_reg INJ_FRM_SPC0_TMR_CFG {} }
proc show_INJ_FRM_SPC1_TMR_CFG {} { show_reg INJ_FRM_SPC1_TMR_CFG {} }
proc show_INJ_FRM_SPC2_TMR_CFG {} { show_reg INJ_FRM_SPC2_TMR_CFG {} }
proc show_INJ_FRM_SPC3_TMR_CFG {} { show_reg INJ_FRM_SPC3_TMR_CFG {} }
proc show_INJ_FRM_SPC4_TMR_CFG {} { show_reg INJ_FRM_SPC4_TMR_CFG {} }
proc show_INJ_FRM_SPC5_TMR_CFG {} { show_reg INJ_FRM_SPC5_TMR_CFG {} }
proc show_INJ_FRM_SPC6_TMR_CFG {} { show_reg INJ_FRM_SPC6_TMR_CFG {} }
proc show_INJ_FRM_SPC7_TMR_CFG {} { show_reg INJ_FRM_SPC7_TMR_CFG {} }

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_LACK_CNTR *************
# Lack counter
set INJ_FRM_SPC0_LCNT 0x70000190
set INJ_FRM_SPC1_LCNT 0x700001a0
set INJ_FRM_SPC2_LCNT 0x700001b0
set INJ_FRM_SPC3_LCNT 0x700001c0
set INJ_FRM_SPC4_LCNT 0x700001d0
set INJ_FRM_SPC5_LCNT 0x700001e0
set INJ_FRM_SPC6_LCNT 0x700001f0
set INJ_FRM_SPC7_LCNT 0x70000200
proc __show_reg_INJ_FRM_SPC_LACK_CNTR {name} { show_reg $name { {lcnt 7 0} } }
proc show_INJ_FRM_SPC0_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC0_LCNT }
proc show_INJ_FRM_SPC1_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC1_LCNT }
proc show_INJ_FRM_SPC2_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC2_LCNT }
proc show_INJ_FRM_SPC3_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC3_LCNT }
proc show_INJ_FRM_SPC4_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC4_LCNT }
proc show_INJ_FRM_SPC5_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC5_LCNT }
proc show_INJ_FRM_SPC6_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC6_LCNT }
proc show_INJ_FRM_SPC7_LCNT {} { __show_reg_INJ_FRM_SPC_LACK_CNTR INJ_FRM_SPC7_LCNT }

#***** Register ICPU_CFG:INJ_FRM_SPC:INJ_FRM_SPC_CFG *******************
# Injection frame spacing configuration register
set INJ_FRM_SPC0_CFG 0x70000194
set INJ_FRM_SPC1_CFG 0x700001a4
set INJ_FRM_SPC2_CFG 0x700001b4
set INJ_FRM_SPC3_CFG 0x700001c4
set INJ_FRM_SPC4_CFG 0x700001d4
set INJ_FRM_SPC5_CFG 0x700001e4
set INJ_FRM_SPC6_CFG 0x700001f4
set INJ_FRM_SPC7_CFG 0x70000204
proc __show_reg_INJ_FRM_SPC_CFG {name} { show_reg $name { {lcnt_bypass 2 2 } { tmr_ena 1 1 } { frm_spc_ena 0 0} } }
proc show_INJ_FRM_SPC0_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC0_CFG }
proc show_INJ_FRM_SPC1_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC1_CFG }
proc show_INJ_FRM_SPC2_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC2_CFG }
proc show_INJ_FRM_SPC3_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC3_CFG }
proc show_INJ_FRM_SPC4_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC4_CFG }
proc show_INJ_FRM_SPC5_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC5_CFG }
proc show_INJ_FRM_SPC6_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC6_CFG }
proc show_INJ_FRM_SPC7_CFG {} { __show_reg_INJ_FRM_SPC_CFG INJ_FRM_SPC7_CFG }

proc show_INJ_FRM_SPC {} {
    show_INJ_FRM_SPC0_TMR
    show_INJ_FRM_SPC1_TMR
    show_INJ_FRM_SPC2_TMR
    show_INJ_FRM_SPC3_TMR
    show_INJ_FRM_SPC4_TMR
    show_INJ_FRM_SPC5_TMR
    show_INJ_FRM_SPC6_TMR
    show_INJ_FRM_SPC7_TMR
    show_INJ_FRM_SPC0_TMR_CFG
    show_INJ_FRM_SPC1_TMR_CFG
    show_INJ_FRM_SPC2_TMR_CFG
    show_INJ_FRM_SPC3_TMR_CFG
    show_INJ_FRM_SPC4_TMR_CFG
    show_INJ_FRM_SPC5_TMR_CFG
    show_INJ_FRM_SPC6_TMR_CFG
    show_INJ_FRM_SPC7_TMR_CFG
    show_INJ_FRM_SPC0_LCNT
    show_INJ_FRM_SPC1_LCNT
    show_INJ_FRM_SPC2_LCNT
    show_INJ_FRM_SPC3_LCNT
    show_INJ_FRM_SPC4_LCNT
    show_INJ_FRM_SPC5_LCNT
    show_INJ_FRM_SPC6_LCNT
    show_INJ_FRM_SPC7_LCNT
    show_INJ_FRM_SPC0_CFG
    show_INJ_FRM_SPC1_CFG
    show_INJ_FRM_SPC2_CFG
    show_INJ_FRM_SPC3_CFG
    show_INJ_FRM_SPC4_CFG
    show_INJ_FRM_SPC5_CFG
    show_INJ_FRM_SPC6_CFG
    show_INJ_FRM_SPC7_CFG
}
#*********************************************************************
# Register group: ICPU_CFG:TIMERS
# Timer Registers

#***** Register ICPU_CFG:TIMERS:WDT ************************************
# Watchdog Timer
set TIMERS_WDT 0x70000208
proc __show_reg_WDT {name} { show_reg $name { {status 9 9 } { enable 8 8 } { lock 7 0} } }
proc show_TIMERS_WDT {} { __show_reg_WDT TIMERS_WDT }

#***** Register ICPU_CFG:TIMERS:TIMER_TICK_DIV *************************
# Timer Tick Divider
set TIMER_TICK_DIV 0x7000020c
proc __show_reg_TIMER_TICK_DIV {name} { show_reg $name { {div 17 0} } }
proc show_TIMER_TICK_DIV {} { __show_reg_TIMER_TICK_DIV TIMER_TICK_DIV }

#***** Register ICPU_CFG:TIMERS:TIMER_VALUE ****************************
# Timer value
set TIMER_VALUE_0 0x70000210
set TIMER_VALUE_1 0x70000214
set TIMER_VALUE_2 0x70000218
proc show_TIMER_VALUE_0 {} { show_reg TIMER_VALUE_0 {} }
proc show_TIMER_VALUE_1 {} { show_reg TIMER_VALUE_1 {} }
proc show_TIMER_VALUE_2 {} { show_reg TIMER_VALUE_2 {} }

#***** Register ICPU_CFG:TIMERS:TIMER_RELOAD_VALUE *********************
# Timer Reload Value
set TIMER_RELOAD_VALUE_0 0x7000021c
set TIMER_RELOAD_VALUE_1 0x70000220
set TIMER_RELOAD_VALUE_2 0x70000224
proc show_TIMER_RELOAD_VALUE_0 {} { show_reg TIMER_RELOAD_VALUE_0 {} }
proc show_TIMER_RELOAD_VALUE_1 {} { show_reg TIMER_RELOAD_VALUE_1 {} }
proc show_TIMER_RELOAD_VALUE_2 {} { show_reg TIMER_RELOAD_VALUE_2 {} }

#***** Register ICPU_CFG:TIMERS:TIMER_CTRL *****************************
# Timer Control
set TIMER_CTRL_0 0x70000228
set TIMER_CTRL_1 0x7000022c
set TIMER_CTRL_2 0x70000230
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
# DDR2/3 Memory Controller Registers

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CTRL **************************
# Control register
set MC_CTRL 0x70000234
proc __show_reg_MEMCTRL_CTRL {name} { show_reg $name { {pwr_down 2 2 } { stall_ref_ena 1 1 } { initialize 0 0} } }
proc show_MC_CTRL {} { __show_reg_MEMCTRL_CTRL MC_CTRL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_CFG ***************************
# Configuration register
set MC_CFG 0x70000238
proc __show_reg_MEMCTRL_CFG {name} { show_reg $name { {ddr_mode 11 11 } { burst_size 10 10 } { burst_len 9 9 } { bank_cnt 8 8 } { msb_row_addr 7 4 } { msb_col_addr 3 0} } }
proc show_MC_CFG {} { __show_reg_MEMCTRL_CFG MC_CFG }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_STAT **************************
# Status register
set MC_STAT 0x7000023c
proc __show_reg_MEMCTRL_STAT {name} { show_reg $name { {pwr_down_ack 1 1 } { init_done 0 0} } }
proc show_MC_STAT {} { __show_reg_MEMCTRL_STAT MC_STAT }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_REF_PERIOD ********************
# Refresh period configuration
set MC_REF_PERIOD 0x70000240
proc __show_reg_MEMCTRL_REF_PERIOD {name} { show_reg $name { {max_pend_ref 19 16 } { ref_period 15 0} } }
proc show_MC_REF_PERIOD {} { __show_reg_MEMCTRL_REF_PERIOD MC_REF_PERIOD }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_ZQCAL *************************
# DDR3 zq-calibration
set MC_ZQCAL 0x70000244
proc __show_reg_MEMCTRL_ZQCAL {name} { show_reg $name { {long 1 1 } { short 0 0} } }
proc show_MC_ZQCAL {} { __show_reg_MEMCTRL_ZQCAL MC_ZQCAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING0 ***********************
# Timing register 0
set MC_TIMING0 0x70000248
proc __show_reg_MEMCTRL_TIMING0 {name} { show_reg $name { {rd2wr 31 28 } { wr_cs_chg 27 24 } { rd_cs_chg 23 20 } { ras2prech 19 16 } { wr2prech 15 12 } { rd2prech 11 8 } { wr_data_xfr 7 4 } { rd_data_xfr 3 0} } }
proc show_MC_TIMING0 {} { __show_reg_MEMCTRL_TIMING0 MC_TIMING0 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING1 ***********************
# Timing register 1
set MC_TIMING1 0x7000024c
proc __show_reg_MEMCTRL_TIMING1 {name} { show_reg $name { {ras2ras_same_bank 31 24 } { bank8_faw 23 16 } { prech2ras 15 12 } { ras2ras 11 8 } { ras2cas 7 4 } { wr2rd 3 0} } }
proc show_MC_TIMING1 {} { __show_reg_MEMCTRL_TIMING1 MC_TIMING1 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING2 ***********************
# Timing register 2
set MC_TIMING2 0x70000250
proc __show_reg_MEMCTRL_TIMING2 {name} { show_reg $name { {prech_all 31 28 } { mdset 27 24 } { ref 23 16 } { four_hundred_ns 15 0} } }
proc show_MC_TIMING2 {} { __show_reg_MEMCTRL_TIMING2 MC_TIMING2 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TIMING3 ***********************
# Timing register 3
set MC_TIMING3 0x70000254
proc __show_reg_MEMCTRL_TIMING3 {name} { show_reg $name { {rmw 19 16 } { odt_rd 15 12 } { odt_wr 11 8 } { local_odt_rd 7 4 } { wr2rd_cs_chg 3 0} } }
proc show_MC_TIMING3 {} { __show_reg_MEMCTRL_TIMING3 MC_TIMING3 }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR0_VAL ***********************
# Mode Register 0 Value
set MC_MR0_VAL 0x70000258
proc __show_reg_MEMCTRL_MR0_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR0_VAL {} { __show_reg_MEMCTRL_MR0_VAL MC_MR0_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR1_VAL ***********************
# Mode Register 1 / Extended Mode Register Value
set MC_MR1_VAL 0x7000025c
proc __show_reg_MEMCTRL_MR1_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR1_VAL {} { __show_reg_MEMCTRL_MR1_VAL MC_MR1_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR2_VAL ***********************
# Mode Register 2 / Extended Mode Register 2 Value
set MC_MR2_VAL 0x70000260
proc __show_reg_MEMCTRL_MR2_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR2_VAL {} { __show_reg_MEMCTRL_MR2_VAL MC_MR2_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_MR3_VAL ***********************
# Mode Register 3 / Extended Mode Register 3 Value
set MC_MR3_VAL 0x70000264
proc __show_reg_MEMCTRL_MR3_VAL {name} { show_reg $name { {val 15 0} } }
proc show_MC_MR3_VAL {} { __show_reg_MEMCTRL_MR3_VAL MC_MR3_VAL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_TERMRES_CTRL ******************
# TBA
set MC_TERMRES_CTRL 0x70000268
proc __show_reg_MEMCTRL_TERMRES_CTRL {name} { show_reg $name { {odt_rd_ext 5 5 } { odt_rd_ena 4 4 } { odt_wr_ext 3 3 } { odt_wr_ena 2 2 } { local_odt_rd_ext 1 1 } { local_odt_rd_ena 0 0} } }
proc show_MC_TERMRES_CTRL {} { __show_reg_MEMCTRL_TERMRES_CTRL MC_TERMRES_CTRL }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DFT ***************************
# Design for test features
set MC_DFT 0x7000026c
proc __show_reg_MEMCTRL_DFT {name} { show_reg $name { {gate_ena 6 6 } { term_dis 5 5 } { term_ena 4 4 } { stat 3 3 } { mode 2 1 } { ena 0 0} } }
proc show_MC_DFT {} { __show_reg_MEMCTRL_DFT MC_DFT }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_DLY ***********************
# DQS window configuration
set MC_DQS 0x70000270
proc __show_reg_MEMCTRL_DQS_DLY {name} { show_reg $name { {train_dq_ena 11 11 } { dqs_dly_trm1 10 8 } { dqs_dly_trm0 7 5 } { dqs 4 0} } }
proc show_MC_DQS {} { __show_reg_MEMCTRL_DQS_DLY MC_DQS }

#***** Register ICPU_CFG:MEMCTRL:MEMCTRL_DQS_AUTO **********************
# DQS window automatic drift detect/ajust
set MC_DQS_AUTO 0x70000274
proc __show_reg_MEMCTRL_DQS_AUTO {name} { show_reg $name { {drift1 9 8 } { drift0 7 6 } { overflow 5 5 } { underflow 4 4 } { auto_src 3 3 } { auto_up 2 2 } { auto_down 1 1 } { auto_ena 0 0} } }
proc show_MC_DQS_AUTO {} { __show_reg_MEMCTRL_DQS_AUTO MC_DQS_AUTO }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_CFG ****************************
# Control register
set MC_MEMPHY_CFG 0x70000278
proc __show_reg_MEMPHY_CFG {name} { show_reg $name { {dqs_ext 8 8 } { fifo_rst 7 7 } { dll_bl_rst 6 6 } { dll_cl_rst 5 5 } { odt_oe 4 4 } { ck_oe 3 3 } { cl_oe 2 2 } { sstl_ena 1 1 } { rst 0 0} } }
proc show_MC_MEMPHY_CFG {} { __show_reg_MEMPHY_CFG MC_MEMPHY_CFG }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DFT ****************************
# Design for test features
set MC_MEMPHY_DFT 0x7000027c
proc __show_reg_MEMPHY_DFT {name} { show_reg $name { {dll_bypass 2 2 } { at_oe 1 1 } { dt_sstl_ena 0 0} } }
proc show_MC_MEMPHY_DFT {} { __show_reg_MEMPHY_DFT MC_MEMPHY_DFT }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG0 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG0_0 0x70000280
set MC_MEMPHY_DLLCFG0_1 0x70000284
proc __show_reg_MEMPHY_DLLCFG0 {name} { show_reg $name { {res6 31 30 } { lock_det_en 29 29 } { res5 28 27 } { bias_trm3 26 24 } { res4 23 23 } { bias_trm2 22 20 } { res3 19 19 } { bias_trm1 18 16 } { res2 15 15 } { bias_trm0 14 12 } { res1 11 11 } { test_ctrl_a 10 9 } { test_ctrl_d 8 6 } { test_ctrl_en 5 5 } { ipump_trm 4 2 } { res0 1 0} } }
proc show_MC_MEMPHY_DLLCFG0_0 {} { __show_reg_MEMPHY_DLLCFG0 MC_MEMPHY_DLLCFG0_0 }
proc show_MC_MEMPHY_DLLCFG0_1 {} { __show_reg_MEMPHY_DLLCFG0 MC_MEMPHY_DLLCFG0_1 }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DLLCFG1 ************************
# DLL configuration
set MC_MEMPHY_DLLCFG1_0 0x70000288
set MC_MEMPHY_DLLCFG1_1 0x7000028c
proc __show_reg_MEMPHY_DLLCFG1 {name} { show_reg $name { {res9 19 19 } { test_hizb_a 18 18 } { res8 17 12 } { ff_trm 11 9 } { fb_trm 8 6 } { res7 5 0} } }
proc show_MC_MEMPHY_DLLCFG1_0 {} { __show_reg_MEMPHY_DLLCFG1 MC_MEMPHY_DLLCFG1_0 }
proc show_MC_MEMPHY_DLLCFG1_1 {} { __show_reg_MEMPHY_DLLCFG1 MC_MEMPHY_DLLCFG1_1 }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_DQ_DLY_TRM *********************
# DQ window configuration
set MC_MEMPHY_DQ_DLY_TRM 0x70000290
proc show_MC_MEMPHY_DQ_DLY_TRM {} { show_reg MC_MEMPHY_DQ_DLY_TRM {} }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL ***************************
# Impedance calibration
set MC_MEMPHY_ZCAL 0x70000294
proc __show_reg_MEMPHY_ZCAL {name} { show_reg $name { {clk_sel 9 9 } { prog_odt 8 5 } { prog 4 1 } { ena 0 0} } }
proc show_MC_MEMPHY_ZCAL {} { __show_reg_MEMPHY_ZCAL MC_MEMPHY_ZCAL }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_STAT **********************
# Impedance calibration status
set MC_MEMPHY_ZCAL_STAT 0x70000298
proc __show_reg_MEMPHY_ZCAL_STAT {name} { show_reg $name { {zctrl 31 12 } { stat_odtpu 9 8 } { stat_odtpd 7 6 } { stat_pu 5 4 } { stat_pd 3 2 } { err 1 1 } { done 0 0} } }
proc show_MC_MEMPHY_ZCAL_STAT {} { __show_reg_MEMPHY_ZCAL_STAT MC_MEMPHY_ZCAL_STAT }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_OVR ***********************
# Manual override of impedance calibration
set MC_MEMPHY_ZCAL_OVR 0x7000029c
proc __show_reg_MEMPHY_ZCAL_OVR {name} { show_reg $name { {data 31 12 } { ena 0 0} } }
proc show_MC_MEMPHY_ZCAL_OVR {} { __show_reg_MEMPHY_ZCAL_OVR MC_MEMPHY_ZCAL_OVR }

#***** Register ICPU_CFG:MEMCTRL:MEMPHY_ZCAL_FORCE *********************
# Force of ZCAL singals to IO ring
set MC_MEMPHY_ZCAL_FORCE 0x700002a0
proc __show_reg_MEMPHY_ZCAL_FORCE {name} { show_reg $name { {enaclr_dis 5 5 } { zcomp 4 4 } { force_zcal 3 2 } { force_zq_off 1 1 } { force_ena 0 0} } }
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
    show_MC_MR0_VAL
    show_MC_MR1_VAL
    show_MC_MR2_VAL
    show_MC_MR3_VAL
    show_MC_TERMRES_CTRL
    show_MC_DFT
    show_MC_DQS
    show_MC_DQS_AUTO
    show_MC_MEMPHY_CFG
    show_MC_MEMPHY_DFT
    show_MC_MEMPHY_DLLCFG0_0
    show_MC_MEMPHY_DLLCFG0_1
    show_MC_MEMPHY_DLLCFG1_0
    show_MC_MEMPHY_DLLCFG1_1
    show_MC_MEMPHY_DQ_DLY_TRM
    show_MC_MEMPHY_ZCAL
    show_MC_MEMPHY_ZCAL_STAT
    show_MC_MEMPHY_ZCAL_OVR
    show_MC_MEMPHY_ZCAL_FORCE
}
#*********************************************************************
# Register group: ICPU_CFG:TWI_DELAY
# Configuration registers

#***** Register ICPU_CFG:TWI_DELAY:TWI_CONFIG **************************
# Configuration registers
set TWI_DELAY_TWI_CONFIG 0x700002a4
proc __show_reg_TWI_CONFIG {name} { show_reg $name { {cnt_reload 8 1 } { delay_enable 0 0} } }
proc show_TWI_DELAY_TWI_CONFIG {} { __show_reg_TWI_CONFIG TWI_DELAY_TWI_CONFIG }

proc show_TWI_DELAY {} {
    show_TWI_DELAY_TWI_CONFIG
}
