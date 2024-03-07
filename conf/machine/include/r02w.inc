MACHINEOVERRIDES =. "r02w:"

include conf/machine/raspberrypi3.conf

MACHINE_EXTRA_RRECOMMENDS += "\
    linux-firmware-rpidistro-bcm43436 \
    linux-firmware-rpidistro-bcm43436s \
    bluez-firmware-rpidistro-bcm43430b0-hcd \
"

RPI_KERNEL_DEVICETREE = " \
    bcm2710-rpi-zero-2.dtb \
    "

VC4DTBO = ""
