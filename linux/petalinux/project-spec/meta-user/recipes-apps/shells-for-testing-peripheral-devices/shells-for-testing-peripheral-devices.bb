#
# This file is the shells-for-testing-peripheral-devices recipe.
#

SUMMARY = "Simple shells-for-testing-peripheral-devices application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
RDEPENDS_shells-for-testing-peripheral-devices += "bash"

SRC_URI = "file://ds1308_test.sh \
	   file://eeprom_test.sh \
	   file://emmc_test.sh \
	   file://eth_test.sh \
	   file://leds_keys_test.sh \
	   file://m.2_ssd_test.sh \
	   file://mipi1_test.sh \
	   file://mipi2_test.sh \
	   file://qspi_flash_test.sh \
	   file://usb_scan_test.sh \
	  "

S = "${WORKDIR}"

FILES_${PN} += "/home/root/shells_for_testing_peripheral_devices/*"

do_install() {
	     install -d ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/ds1308_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/eeprom_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/emmc_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/eth_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/leds_keys_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/m.2_ssd_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/mipi1_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/mipi2_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/qspi_flash_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
	     install -m 0755 ${S}/usb_scan_test.sh ${D}/home/root/shells_for_testing_peripheral_devices
} 
