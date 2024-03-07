FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
FILESEXTRAPATHS:prepend := "${THISDIR}/files/cfg:"
FILESEXTRAPATHS:prepend := "${THISDIR}/files/dts:"

SRC_URI += " \
    file://system-leds-overlay.dts;subdir=linux-${MACHINE}-standard-build/arch/${ARCH}/boot/dts/overlays/ \
    file://system-keypad-overlay.dts;subdir=linux-${MACHINE}-standard-build/arch/${ARCH}/boot/dts/overlays/ \
    file://system-beeper-overlay.dts;subdir=linux-${MACHINE}-standard-build/arch/${ARCH}/boot/dts/overlays/ \
    file://adxl345-i2c-overlay.dts;subdir=linux-${MACHINE}-standard-build/arch/${ARCH}/boot/dts/overlays/ \
    file://beeper.cfg \
"

COMPATIBLE_MACHINE = "^rpi$|r02w|r4b"
KBUILD_DEFCONFIG:r02w ?= "bcm2709_defconfig"
KBUILD_DEFCONFIG:r4b ?= "bcm2711_defconfig"

PACKAGE_ARCH = "${MACHINE_ARCH}"
