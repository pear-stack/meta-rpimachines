DEFAULTTUNE ?= "cortexa7thf-neon-vfpv4"
require conf/machine/include/arm/armv7a/tune-cortexa7.inc
include conf/machine/include/rpi-base.inc

MACHINE_FEATURES += "pci mesa mesa-gl"
MACHINE_EXTRA_RRECOMMENDS += "\
    linux-firmware-rpidistro-bcm43455 \
    bluez-firmware-rpidistro-bcm4345c0-hcd \
    linux-firmware-rpidistro-bcm43456 \
    bluez-firmware-rpidistro-bcm4345c5-hcd \
"

MACHINEOVERRIDES =. "r4b:"

# 'l' stands for LPAE
SDIMG_KERNELIMAGE ?= "kernel7l.img"
UBOOT_MACHINE = "rpi_4_32b_config"
SERIAL_CONSOLES ?= "115200;ttyS0"

VC4DTBO ?= "vc4-kms-v3d"
ARMSTUB ?= "armstub7.bin"
