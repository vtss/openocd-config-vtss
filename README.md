# openocd-config-vtss

OpenOCD configuration files for Vitesse MIPS-based reference boards.

This repository contain configuration files for using
[OpenOCD](http://openocd.sourceforge.net/) with Vitesse MIPS-based
reference board to enable JTAG and GDB debugging on the these systems.

The supported boards are:

Config file     | Boards
-------         | -------
luton10.cfg     | Luton10 and Caracle1 (VSC7424EV, VSC7428EV)
luton26.cfg     | Luton26 and Caracle2 (VSC5610EV, VSC5611EV)
jaguar1.cfg     | Jaguar1 (VSC5606EV, VSC5608EV)
serval1-ref.cfg | Serval1 Reference (VSC5616EV, VSC5617EV, VSC5618EV)
serval1-nid.cfg | Serval1 NID (VSC5619EV)
serval2-nid.cfg | Serval2 NID (VSC5629EV)
jaguar2.cfg     | Jaguar2, Lynx2 (VSC5628EV, VSC5627EV)
servalt-ref.cfg | ServalT (VSC7415)

## JTAG Interface

The boards are equipped with a MIPS EJTAG standard 14-pin JTAG header.

You should be able to use any JTAG interface supported by OpenOCD, but
the boards have been specifically verified with
[Flyswatter2](http://www.tincantools.com/JTAG/Flyswatter2.html). This
interface is based on the FTDI FT2232H chipset, which a number of
compatible products are based around.

## OpenOCD Installation

Although the primary development host system for the Vitesse software
is Linux, it is possible to run the OpenOCD program from Windows. The
OpenOCD program acts as a proxy between the target board and GDB -
which may still execute on a Linux-based development system.

### Linux Installation Notes

OpenOCD has been tested on a Ubuntu 12.04.4 system, installing from
source. If your Linux distribution has OpenOCD v0.8.0 or later, you
can most likely use that directly.

First, install the FTDI library:

```
git clone git://developer.intra2net.com/libftdi
mkdir ftdibuild
cd ftdibuild
cmake -DCMAKE_INSTALL_PREFIX="/usr/local" ../libftdi
make
sudo make install
cd ..
```

(Git version 34b79ac71e43a07e5bd929592cba212c9f780672 was used).

Then, install OpenOCD:

```
git clone git://git.code.sf.net/p/openocd/code openocd-code
cd openocd-code
./bootstrap
./configure --disable-werror --enable-ftdi
make
sudo make install
```

(Git version c0b8e605f7d8cbefcd7a9e47261aa2e06dd2b4e1 has used)

To make sure you can access the Flyswatter2 USB device directly,
install `/etc/udev/rules.d/10-flyswatter-usb.rules` as below:

> ATTRS{idProduct}=="6010", ATTRS{idVendor}=="0403", MODE="666", GROUP="plugdev"

And the make sure you are in the `plugdev` and `dialout` groups.

When you attach the Flyswatter2 you should be able to see and access
the `/dev/ttyUSBx` USB tty port (`x` varies).

### Windows Installation Notes

Binary distributions may be obtained at
http://www.freddiechopin.info/en/download.
(At the moment, Flyswatter2 has been tested successfully on Windows 7 with OpenOCD v0.8.0).
(See also http://www.freddiechopin.info/en/articles/34-news/92-openocd-w-wersji-080).

To use OpenOCD with Flyswatter2 (or similar FTDI-based interface), you
should install the WinUSB driver, and one way to do this is by using
[Zadig](http://zadig.akeo.ie/).

The driver installation procedure is documented in
"openocd-0.8.0\drivers\libusb-1.0 drivert.txt".
Follow the instructions and install the WinUSB driver
for Flyswatter2 Interface 0 (Interface 1 is the USB to Serial UART).
(Step 4 is necessary in order to see the interfaces in the drop-down list, 
if Windows have automatically installed drivers for them).

Finally, clone the openocd-config-vtss into a directory called `vtss` 
located inside the `scripts` directory of OpenOCD.

You should now be able to start OpenOCD with the arguments described
later in this document.

## Using OpenOCD

To start the OpenOCD program, with the Flyswatter2 and a Serval1
Reference booard use:

> openocd -f interface/ftdi/flyswatter2.cfg -f vtss/serval1-ref.cfg

The example above assume you have cloned this directory into a
directory called `vtss`. The current directory can be anything if you
are on Linux and have installed OpenOCD (to f.ex. `/usr/local`) - or
should be the `scripts` directory (where the `bitsbytes.tcl` file
resides) in the binary Windows distribution.

Note: You should be using the `ftdi` interface.

When starting OpenOCD you should see something like:

```
Open On-Chip Debugger 0.9.0-dev-00156-gc0b8e60 (2014-09-26-10:40)
Licensed under GNU GPL v2
For bug reports, read
        http://openocd.sourceforge.net/doc/doxygen/bugs.html
Error: session's transport is not selected.
Info : session transport was not selected, defaulting to JTAG
trst_and_srst separate srst_gates_jtag trst_push_pull srst_open_drain connect_deassert_srst
adapter speed: 6000 kHz
target_init
Info : clock speed 6000 kHz
Info : JTAG tap: serval1.phy tap/device found: 0x085740e9 (mfg: 0x074, part: 0x8574, ver: 0x0)
Info : JTAG tap: serval1.cpu tap/device found: 0x100330e9 (mfg: 0x074, part: 0x0033, ver: 0x1)
```

OpenOCD has now connected to your target board through the USB interface.

## Using OpenOCD and gdb

You can now use the MIPS gdb debugger to connect to your target:

```
mipsel-vtss-elf-gdb obj/WebStaX.elf
Current directory is ...
GNU gdb (crosstool-NG 1.20.0 - vtss-eCos-toolchain-v2) 7.8
Copyright (C) 2014 Free Software Foundation, Inc.
...
Reading symbols from .../obj/WebStaX.elf...done.
(gdb) target remote localhost:3333
(gdb) load
Loading section .rom_vectors, size 0xcc lma 0x80040000
Loading section .rel.dyn, size 0x608 lma 0x800400cc
Loading section .text, size 0x421584 lma 0x800406d4
Loading section .rodata, size 0xf9f78 lma 0x80461c58
Loading section .data, size 0x213b90 lma 0x8055bbd0
Loading section .ctors, size 0x168 lma 0x8076f760
Loading section .dtors, size 0x144 lma 0x8076f8c8
Loading section .devtab, size 0x379c lma 0x8076fa0c
Start address 0x800400bc, load size 7549352
Transfer rate: 332 KB/sec, 4085 bytes/write.
```

Refer to [gdb](http://www.gnu.org/software/gdb/) for information on
how to use this debugger.

*Bonus Tip:*

It might be useful to put a macro in your `~/.gdbinit`:

```
define ocd
 target remote localhost:3333
 x /4i $pc
end
```

This way the `ocd` command can be used as a shorthand in gdb.

You can of course change the `localhost` to point to a specific host
running the OpenOCD program. (This may be another Ubuntu or even a
Windows machine).
