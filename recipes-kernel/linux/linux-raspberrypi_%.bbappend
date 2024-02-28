FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://system-leds-overlay.dts;subdir=linux-raspberrypi4-standard-build/arch/${ARCH}/boot/dts/overlays/ \
"

RPI_KERNEL_DEVICETREE_OVERLAYS:append = " \
    overlays/system-leds.dtbo \
    overlays/rotary-encoder.dtbo \
"
PACKAGE_ARCH = "${MACHINE_ARCH}"

