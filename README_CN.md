# Xilinx Zynq Ultrascale+ MPSoC 系列开发板AXU2CGA/AXU2CGB

## 开发板介绍

AXU2CGA 的 PS端挂载了 2 片 DDR4（共 1GB，32bit）和 1 片 256Mb 的 QSPI FLASH，AXU2CGB 的 PS 端挂载了 4 片 DDR4（共 2GB，64bit），1 片 8GB eMMC FLASH 存储芯片和 1 片 256Mb
的 QSPI FLASH,外围接口包含 1 个 MINI DP 接口、4 个 USB3.0 接口、1 路千兆以太网接口、1 个 USB串口、1 路 PCIE 接口、1 路 TF 卡接口、2 个 40 针扩展口、2 路 MIPI 接口和按键 LED，两款开发板使用的芯片都为XCZU2CG-1SFVC784E。

## 关键特性
1. 2片Micron的ddr芯片(AXU2CGA),4片Micron的ddr芯片(AXU2CGB),256Mx16bit
2. 1片256Mbit大小QUAD-SPI FLASH芯片，1片8GB emmc flash芯片(AXU2CGB)
3. 1片EEPROM (ps)
4. 1 路DP输出接口，mini DP(ps)，最高支持4kx2k@30fps输出 
5. 4 路USB3.0接口，usb(ps),速率5.0Gbps,扁型 USB 接口(USB Type A) 
6. 1 路千兆以太网接口，jl2121,连接到ps,rgmii接口
7. 1 个uart转usb，连接到ps
8. 1 个Micro SD 卡座(ps) 
9. 1 个PCIEx1插槽，速率5Gbps
10. 2 路40针扩展口,2.54mm间距,1路5v,2 路3.3v,3 路gnd，IO 口 34 路。扩展口的 IO 电平标准为 3.3V  
11. 1 路mipi接口（pl）,15PIN的FPC连接器，2个lane数据，1对时钟  
12. 1 个RTC实时时钟，32.768KHz无源时钟(ps)
13. 4 个led灯，用户指示灯，1个reset按键  
14. 1 个4位拨码开关，板卡支持四种启动模式
15. 尺寸 85x91.11mm
16. 电源12v/3A

# AXU2CGA/AXU2CGB 例程
## 例程描述
此项目为开发板出厂例程，支持板卡上的大部分外设。
## 开发环境及需求
* Vivado 2020.1
* AXU2CGA/AXU2CGB开发板
## 创建Vivado工程
* 下载最新的ZIP包。
* 创建新的工程文件夹.
* 解压下载的ZIP包到此工程文件夹中。
* 对于不同的开发板，请打开**\<archive extracted location\>/vivado/auto_create_project/create_project.tcl**文件，第6、7行，选择一个工程名并且保存。


有两种方法创建Vivado工程，如下所示：
### 利用Vivado tcl console创建Vivado工程
1. 打开Vivado软件并且利用**cd**命令进入"**auto_create_project**"目录，并回车
```
cd \<archive extracted location\>/vivado/auto_create_project
```
2. 输入 **source ./create_project.tcl** 并且回车
```
source ./create_project.tcl
```

### 利用bat创建Vivado工程
1. 在 "**auto_create_project**" 文件夹, 有个 "**create_project.bat**"文件, 右键以编辑模式打开，并且修改vivado路径为本主机vivado安装路径，保存并关闭。
```
CALL E:\XilinxVitis\Vivado\2020.1\bin\vivado.bat -mode batch -source create_project.tcl
PAUSE
```
2. 在Windows下双击bat文件即可。


更多信息, 请访问[ALINX网站] (https://www.alinx.com)
# AXU2CGA/AXU2CGB 例程
## 例程描述
此项目为开发板出厂例程，支持板卡上的大部分外设。
## 开发环境及需求
* Vivado 2020.1
* AXU2CGA/AXU2CGB开发板
## 创建Vivado工程
* 下载最新的ZIP包。
* 创建新的工程文件夹.
* 解压下载的ZIP包到此工程文件夹中。
* 对于不同的开发板，请打开**\<archive extracted location\>/vivado/auto_create_project/create_project.tcl**文件，第6、7行，选择一个工程名并且保存。


有两种方法创建Vivado工程，如下所示：
### 利用Vivado tcl console创建Vivado工程
1. 打开Vivado软件并且利用**cd**命令进入"**auto_create_project**"目录，并回车
```
cd \<archive extracted location\>/vivado/auto_create_project
```
2. 输入 **source ./create_project.tcl** 并且回车
```
source ./create_project.tcl
```

### 利用bat创建Vivado工程
1. 在 "**auto_create_project**" 文件夹, 有个 "**create_project.bat**"文件, 右键以编辑模式打开，并且修改vivado路径为本主机vivado安装路径，保存并关闭。
```
CALL E:\XilinxVitis\Vivado\2020.1\bin\vivado.bat -mode batch -source create_project.tcl
PAUSE
```
2. 在Windows下双击bat文件即可。


更多信息, 请访问[ALINX网站] (https://www.alinx.com)
