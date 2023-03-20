# Xilinx Zynq Ultrascale+ MPSoC Series Development Board AXU2CGA/AXU2CGB

## Introduction to Development Board

The PS side of the AXU2CGA mounts two DDR4 chips (totaling 1GB, 32bit) and one 256Mb QSPI FLASH. The PS side of the AXU2CGB mounts four DDR4 chips (totaling 2GB, 64bit), one 8GB eMMC FLASH memory chip, and one 256Mb FLASH memory chip
The peripheral interface of QSPI FLASH includes 1 MINI DP interface, 4 USB 3.0 interfaces, 1 Gigabit Ethernet interface, 1 USB serial port, 1 PCIE interface, 1 TF card interface, 2 40-pin expansion ports, 2 MIPI interfaces, and key LEDs. Both development boards use XCZU2CG-1SFVC784E chips.

## Key Characteristics

1. Two Micron ddr chips (AXU2CGA), four Micron ddr chips (AXU2CGB), 256MX16bit
2. One 256Mbit QUAD-SPI FLASH chip, one 8GB emmc flash chip (AXU2CGB)
3. 1 EEPROM (ps)
4. 1-channel DP output interface, mini DP (ps), maximum support 4kx2k@30fps Output
5. 4-way USB 3.0 interface, USB (ps), speed 5.0Gbps, flat USB interface (USB Type A)
6. 1-way Gigabit Ethernet interface, jl2121, connected to ps, rgmii interface
7. 1 uart to usb connection to ps
8. 1 Micro SD card holder (ps)
9. One PCIEx1 slot with a speed of 5Gbps
10. Two 40-pin expansion ports, 2.54mm spacing, one 5v, two 3.3v, three gnd, and 34 IO ports. The IO level standard of the expansion port is 3.3V
11. 1-way mipi interface (pl), 15PIN FPC connector, 2 lane data, 1 pair of clocks
12. 1 RTC real-time clock, 32.768KHz passive clock (ps)
13. Four LED lights, user indicator lights, and one reset button
14. One 4-bit dial switch, and the board supports four startup modes
15. Size 85x91.11mm
16. Power supply 12v/3A

# AXU2CGA/AXU2CGB Demo Project
## Description
This is vivado factory demo project for ALINX board.
## Requirement
* Vivado 2020.1
* AXU2CGA/AXU2CGB Development Board
## Create Vivado Project
* Download recent release ZIP archive.
* Create new project folder.
* Extract the download ZIP to the new project folder.
* For different development board, please open **\<archive extracted location\>/vivado/auto_create_project/create_project.tcl**， line 6 or 7,
Choose one projName and save.


There are two methods to create vivado project as below:
### Create Vivado Project in Vivado tcl console
1. Open Vivado software and switch to "**auto_create_project**" path with **cd** command and **Enter**
```
cd \<archive extracted location\>/vivado/auto_create_project
```
2. Type **source ./create_project.tcl** and **Enter**
```
source ./create_project.tcl
```

### Create Vivado Project using bat
1. In "**auto_create_project**" folder, there is "**create_project.bat**", open it in edit mode, and change to your own vivado software installation path. Save and close.
```
CALL E:\XilinxVitis\Vivado\2020.1\bin\vivado.bat -mode batch -source create_project.tcl
PAUSE
```
2. Double click bat file in Windows environment


For more information, please post on the [ALINX Website] (https://www.alinx.com/en).
