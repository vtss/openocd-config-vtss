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
