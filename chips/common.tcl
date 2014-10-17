proc decode_fields {val flds} {
    foreach fs $flds {
        set tag [lindex $fs 0]
        set msb [lindex $fs 1]
        set lsb [lindex $fs 2]
        if {$msb == $lsb} {
            if {(1 << $msb) & $val} {
                append ofld [string toupper $tag] " "
            } else {
                append ofld [string tolower $tag] " "
            }
        } else {
            append ofld [format "%s=%x " $tag [normalize_bitfield $val $msb $lsb]]
        }
    }
    return $ofld
}

proc show_reg {NAME flds} {
    global $NAME
    set a [set [set NAME]]
    if ![catch { set val [memread32 $a] } msg ] {
        if [llength $flds] {
            set ofld [decode_fields $val $flds]
            echo [format "%20s: (0x%08x): 0x%08x %s" $NAME $a $val $ofld]
        } else {
            echo [format "%20s: (0x%08x): 0x%08x" $NAME $a $val]
        }
    } else {
        error [format "%s (%s)" $msg $NAME ]
    }
}

proc mips_reg {reg sel} {
    set val [capture "mips32 cp0 $reg $sel"]
    if [regexp {: (\w{8})} $val -> hexval] {
        return "0x$hexval"
    } else {
        return 0
    }
}

proc cpu {} {
    set cause [mips_reg 13 0]
    set cf [decode_fields $cause { {bd 31 31} {ti 30 30} {ce 29 28} {dc 27 27} {pci 26 26} {iv 23 23} {wp 22 22} {ip72_ripl 15 10} {ip10 9 8} {exccode 6 2} } ]
    set status [mips_reg 12 0]
    set sf [decode_fields $status { {cu 31 28} {rp 27 27} {fr 26 26} {re 25 25} {mx 24 24} {bev 22 22} {ts 21 21} {sr 20 20} {nmi 19 19} {cee 17 17} {ip72_ripl 15 10} {im10 9 8} {ksu 4 3} {erl 2 2} {exl 1 1} {ie 0 0} } ]
    set badvaddr [mips_reg 8 0]
    set epc [mips_reg 14 0]
    set errorepc [mips_reg 30 0]
    echo [format "%-10s: 0x%08x %s" ".cause"    $cause    $cf]
    echo [format "%-10s: 0x%08x %s" ".status"   $status   $sf]
    echo [format "%-10s: 0x%08x"    ".badvaddr" $badvaddr $sf]
    echo [format "%-10s: 0x%08x"    ".epc"      $epc         ]
    echo [format "%-10s: 0x%08x"    ".errorepc" $errorepc    ]
    echo "exccode: 0=int, 1=tlbmod, 2=tlbload, 3=tlbstore, 4=addrload, 5=addrstore, 9=bkpt, a=res_instr, ..."
}
