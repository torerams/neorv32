
# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1

# 
# module neorv32_qsys
# 
set_module_property DESCRIPTION "NEORV32 RISC-V CPU"
set_module_property NAME neorv32_qsys
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "NEORV32"
set_module_property AUTHOR "Stephan Nolting"
set_module_property DISPLAY_NAME "NEORV32 CPU"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false
set_module_property ELABORATION_CALLBACK elaborate

# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL neorv32_qsys
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file neorv32_qsys.vhd VHDL PATH neorv32_qsys.vhd TOP_LEVEL_FILE

# 
# parameters
# 
add_parameter TMP_GUI_CLOCK_FREQUENCY INTEGER 100000000
set_parameter_property TMP_GUI_CLOCK_FREQUENCY DISPLAY_NAME "CPU Clock Frequency"
set_parameter_property TMP_GUI_CLOCK_FREQUENCY DISPLAY_UNITS "Hz"
set_parameter_property TMP_GUI_CLOCK_FREQUENCY DESCRIPTION "CPU clock frequency"
set_parameter_property TMP_GUI_CLOCK_FREQUENCY ALLOWED_RANGES 1000000:250000000 
set_parameter_property TMP_GUI_CLOCK_FREQUENCY GROUP "Core"
set_parameter_property TMP_GUI_CLOCK_FREQUENCY HDL_PARAMETER false
set_parameter_property TMP_GUI_CLOCK_FREQUENCY VISIBLE false
add_parameter GUI_CLOCK_FREQUENCY Integer 100000000
set_parameter_property GUI_CLOCK_FREQUENCY HDL_PARAMETER true
set_parameter_property GUI_CLOCK_FREQUENCY DERIVED true
set_parameter_property GUI_CLOCK_FREQUENCY VISIBLE false

add_parameter TMP_EXTENSION_RISCV_A BOOLEAN false
set_parameter_property TMP_EXTENSION_RISCV_A DISPLAY_NAME "Extension RISC-V A"
set_parameter_property TMP_EXTENSION_RISCV_A DESCRIPTION "Enable extension RISC-V A"
set_parameter_property TMP_EXTENSION_RISCV_A GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_A HDL_PARAMETER false
add_parameter EXTENSION_RISCV_A Integer 0
set_parameter_property EXTENSION_RISCV_A HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_A DERIVED true
set_parameter_property EXTENSION_RISCV_A VISIBLE false

add_parameter TMP_EXTENSION_RISCV_C BOOLEAN true
set_parameter_property TMP_EXTENSION_RISCV_C DISPLAY_NAME "Extension RISC-V C"
set_parameter_property TMP_EXTENSION_RISCV_C DESCRIPTION "Enable extension RISC-V C"
set_parameter_property TMP_EXTENSION_RISCV_C GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_C HDL_PARAMETER false
add_parameter EXTENSION_RISCV_C Integer 1
set_parameter_property EXTENSION_RISCV_C HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_C DERIVED true
set_parameter_property EXTENSION_RISCV_C VISIBLE false

add_parameter TMP_EXTENSION_RISCV_E BOOLEAN false
set_parameter_property TMP_EXTENSION_RISCV_E DISPLAY_NAME "Extension RISC-V E"
set_parameter_property TMP_EXTENSION_RISCV_E DESCRIPTION "Enable extension RISC-V E"
set_parameter_property TMP_EXTENSION_RISCV_E GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_E HDL_PARAMETER false
add_parameter EXTENSION_RISCV_E Integer 0
set_parameter_property EXTENSION_RISCV_E HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_E DERIVED true
set_parameter_property EXTENSION_RISCV_E VISIBLE false

add_parameter TMP_EXTENSION_RISCV_M BOOLEAN true
set_parameter_property TMP_EXTENSION_RISCV_M DISPLAY_NAME "Extension RISC-V M"
set_parameter_property TMP_EXTENSION_RISCV_M DESCRIPTION "Enable extension RISC-V M"
set_parameter_property TMP_EXTENSION_RISCV_M GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_M HDL_PARAMETER false
add_parameter EXTENSION_RISCV_M Integer 1
set_parameter_property EXTENSION_RISCV_M HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_M DERIVED true
set_parameter_property EXTENSION_RISCV_M VISIBLE false

add_parameter TMP_EXTENSION_RISCV_U BOOLEAN false
set_parameter_property TMP_EXTENSION_RISCV_U DISPLAY_NAME "Extension RISC-V U"
set_parameter_property TMP_EXTENSION_RISCV_U DESCRIPTION "Enable extension RISC-V U"
set_parameter_property TMP_EXTENSION_RISCV_U GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_U HDL_PARAMETER false
add_parameter EXTENSION_RISCV_U Integer 0
set_parameter_property EXTENSION_RISCV_U HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_U DERIVED true
set_parameter_property EXTENSION_RISCV_U VISIBLE false

add_parameter TMP_EXTENSION_RISCV_ZBB BOOLEAN false
set_parameter_property TMP_EXTENSION_RISCV_ZBB DISPLAY_NAME "Extension RISC-V Zbb"
set_parameter_property TMP_EXTENSION_RISCV_ZBB DESCRIPTION "Enable extension RISC-V Zbb"
set_parameter_property TMP_EXTENSION_RISCV_ZBB GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_ZBB HDL_PARAMETER false
add_parameter EXTENSION_RISCV_ZBB Integer 0
set_parameter_property EXTENSION_RISCV_ZBB HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_ZBB DERIVED true
set_parameter_property EXTENSION_RISCV_ZBB VISIBLE false

add_parameter TMP_EXTENSION_RISCV_ZFINX BOOLEAN false
set_parameter_property TMP_EXTENSION_RISCV_ZFINX DISPLAY_NAME "Extension RISC-V Zfinx"
set_parameter_property TMP_EXTENSION_RISCV_ZFINX DESCRIPTION "Enable extension RISC-V Zfinx"
set_parameter_property TMP_EXTENSION_RISCV_ZFINX GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_ZFINX HDL_PARAMETER false
add_parameter EXTENSION_RISCV_ZFINX Integer 0
set_parameter_property EXTENSION_RISCV_ZFINX HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_ZFINX DERIVED true
set_parameter_property EXTENSION_RISCV_ZFINX VISIBLE false

add_parameter TMP_EXTENSION_RISCV_ZICSR BOOLEAN true
set_parameter_property TMP_EXTENSION_RISCV_ZICSR DISPLAY_NAME "Extension RISC-V Zicsr"
set_parameter_property TMP_EXTENSION_RISCV_ZICSR DESCRIPTION "Enable extension RISC-V Zicsr"
set_parameter_property TMP_EXTENSION_RISCV_ZICSR GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_ZICSR HDL_PARAMETER false
add_parameter EXTENSION_RISCV_ZICSR Integer 1
set_parameter_property EXTENSION_RISCV_ZICSR HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_ZICSR DERIVED true
set_parameter_property EXTENSION_RISCV_ZICSR VISIBLE false

add_parameter TMP_EXTENSION_RISCV_ZIFENCEI BOOLEAN false
set_parameter_property TMP_EXTENSION_RISCV_ZIFENCEI DISPLAY_NAME "Extension RISC-V Zfencei"
set_parameter_property TMP_EXTENSION_RISCV_ZIFENCEI DESCRIPTION "Enable extension RISC-V Zfencei"
set_parameter_property TMP_EXTENSION_RISCV_ZIFENCEI GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_ZIFENCEI HDL_PARAMETER false
add_parameter EXTENSION_RISCV_ZIFENCEI Integer 0
set_parameter_property EXTENSION_RISCV_ZIFENCEI HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_ZIFENCEI DERIVED true
set_parameter_property EXTENSION_RISCV_ZIFENCEI VISIBLE false

add_parameter TMP_EXTENSION_RISCV_ZMMUL BOOLEAN false
set_parameter_property TMP_EXTENSION_RISCV_ZMMUL DISPLAY_NAME "Extension RISC-V Zmmul"
set_parameter_property TMP_EXTENSION_RISCV_ZMMUL DESCRIPTION "Enable extension RISC-V Zmmul"
set_parameter_property TMP_EXTENSION_RISCV_ZMMUL GROUP "Core"
set_parameter_property TMP_EXTENSION_RISCV_ZMMUL HDL_PARAMETER false
add_parameter EXTENSION_RISCV_ZMMUL Integer 0
set_parameter_property EXTENSION_RISCV_ZMMUL HDL_PARAMETER true
set_parameter_property EXTENSION_RISCV_ZMMUL DERIVED true
set_parameter_property EXTENSION_RISCV_ZMMUL VISIBLE false

add_parameter GUI_CPU_IPB_ENTRIES INTEGER 2
set_parameter_property GUI_CPU_IPB_ENTRIES DISPLAY_NAME "Instruction Prefetch Buffers"
set_parameter_property GUI_CPU_IPB_ENTRIES DISPLAY_UNITS "entries"
set_parameter_property GUI_CPU_IPB_ENTRIES DESCRIPTION "Number of Instruction Prefetch Buffers record"
set_parameter_property GUI_CPU_IPB_ENTRIES ALLOWED_RANGES {1 2 4 8 16}
set_parameter_property GUI_CPU_IPB_ENTRIES GROUP "Core"
set_parameter_property GUI_CPU_IPB_ENTRIES HDL_PARAMETER true


add_parameter TMP_GUI_ENABLE_INTERNAL_IMEM BOOLEAN true
set_parameter_property TMP_GUI_ENABLE_INTERNAL_IMEM DISPLAY_NAME "Enable Internal IMEM"
set_parameter_property TMP_GUI_ENABLE_INTERNAL_IMEM DESCRIPTION "Use interal IMEM"
set_parameter_property TMP_GUI_ENABLE_INTERNAL_IMEM GROUP "Memory"
set_parameter_property TMP_GUI_ENABLE_INTERNAL_IMEM HDL_PARAMETER false
add_parameter GUI_ENABLE_INTERNAL_IMEM Integer 1
set_parameter_property GUI_ENABLE_INTERNAL_IMEM HDL_PARAMETER true
set_parameter_property GUI_ENABLE_INTERNAL_IMEM DERIVED true
set_parameter_property GUI_ENABLE_INTERNAL_IMEM VISIBLE false

add_parameter GUI_IMEM_SIZE INTEGER 16
set_parameter_property GUI_IMEM_SIZE DISPLAY_NAME "Internal IMEM Memory Size"
set_parameter_property GUI_IMEM_SIZE DISPLAY_UNITS "KBytes"
set_parameter_property GUI_IMEM_SIZE DESCRIPTION "Size of IMEM instruction memory"
set_parameter_property GUI_IMEM_SIZE ALLOWED_RANGES {4 8 16 32 64}
set_parameter_property GUI_IMEM_SIZE GROUP "Memory"
set_parameter_property GUI_IMEM_SIZE HDL_PARAMETER true

add_parameter TMP_GUI_ENABLE_INTERNAL_DMEM BOOLEAN true
set_parameter_property TMP_GUI_ENABLE_INTERNAL_DMEM DISPLAY_NAME "Enable Internal DMEM"
set_parameter_property TMP_GUI_ENABLE_INTERNAL_DMEM DESCRIPTION "Use interal DMEM"
set_parameter_property TMP_GUI_ENABLE_INTERNAL_DMEM GROUP "Memory"
set_parameter_property TMP_GUI_ENABLE_INTERNAL_DMEM HDL_PARAMETER false
add_parameter GUI_ENABLE_INTERNAL_DMEM Integer 1
set_parameter_property GUI_ENABLE_INTERNAL_DMEM HDL_PARAMETER true
set_parameter_property GUI_ENABLE_INTERNAL_DMEM DERIVED true
set_parameter_property GUI_ENABLE_INTERNAL_DMEM VISIBLE false

add_parameter GUI_DMEM_SIZE INTEGER 8
set_parameter_property GUI_DMEM_SIZE DISPLAY_NAME "Internal DMEM Memory Size"
set_parameter_property GUI_DMEM_SIZE DISPLAY_UNITS "KBytes"
set_parameter_property GUI_DMEM_SIZE DESCRIPTION "Size of DMEM data memory"
set_parameter_property GUI_DMEM_SIZE ALLOWED_RANGES {2 4 8 16 32 64}
set_parameter_property GUI_DMEM_SIZE GROUP "Memory"
set_parameter_property GUI_DMEM_SIZE HDL_PARAMETER true


add_parameter TMP_GUI_ENABLE_BOOTLOADER BOOLEAN false
set_parameter_property TMP_GUI_ENABLE_BOOTLOADER DISPLAY_NAME "Enable Bootloader"
set_parameter_property TMP_GUI_ENABLE_BOOTLOADER DESCRIPTION "Add bootloader and start bootloader"
set_parameter_property TMP_GUI_ENABLE_BOOTLOADER GROUP "Bootloader"
set_parameter_property TMP_GUI_ENABLE_BOOTLOADER HDL_PARAMETER false
add_parameter GUI_ENABLE_BOOTLOADER Integer 0
set_parameter_property GUI_ENABLE_BOOTLOADER HDL_PARAMETER true
set_parameter_property GUI_ENABLE_BOOTLOADER DERIVED true
set_parameter_property GUI_ENABLE_BOOTLOADER VISIBLE false


add_parameter TMP_GUI_ENABLE_AVALONMM BOOLEAN true
set_parameter_property TMP_GUI_ENABLE_AVALONMM DISPLAY_NAME "Enable AvalonMM Interface"
set_parameter_property TMP_GUI_ENABLE_AVALONMM DESCRIPTION "Add AvalonMM Interface for external modules"
set_parameter_property TMP_GUI_ENABLE_AVALONMM GROUP "Peripheral"
set_parameter_property TMP_GUI_ENABLE_AVALONMM HDL_PARAMETER false
add_parameter GUI_ENABLE_AVALONMM Integer 1
set_parameter_property GUI_ENABLE_AVALONMM HDL_PARAMETER true
set_parameter_property GUI_ENABLE_AVALONMM DERIVED true
set_parameter_property GUI_ENABLE_AVALONMM VISIBLE false

add_parameter TMP_GUI_ENABLE_UART0 BOOLEAN true
set_parameter_property TMP_GUI_ENABLE_UART0 DISPLAY_NAME "Enable UART0"
set_parameter_property TMP_GUI_ENABLE_UART0 DESCRIPTION "Add UART0 to core"
set_parameter_property TMP_GUI_ENABLE_UART0 GROUP "Peripheral"
set_parameter_property TMP_GUI_ENABLE_UART0 HDL_PARAMETER false
add_parameter GUI_ENABLE_UART0 Integer 1
set_parameter_property GUI_ENABLE_UART0 HDL_PARAMETER true
set_parameter_property GUI_ENABLE_UART0 DERIVED true
set_parameter_property GUI_ENABLE_UART0 VISIBLE false

add_parameter TMP_GUI_ENABLE_UART1 BOOLEAN false
set_parameter_property TMP_GUI_ENABLE_UART1 DISPLAY_NAME "Enable UART1"
set_parameter_property TMP_GUI_ENABLE_UART1 DESCRIPTION "Add UART1 to core"
set_parameter_property TMP_GUI_ENABLE_UART1 GROUP "Peripheral"
set_parameter_property TMP_GUI_ENABLE_UART1 HDL_PARAMETER false
add_parameter GUI_ENABLE_UART1 Integer 0
set_parameter_property GUI_ENABLE_UART1 HDL_PARAMETER true
set_parameter_property GUI_ENABLE_UART1 DERIVED true
set_parameter_property GUI_ENABLE_UART1 VISIBLE false

add_parameter TMP_GUI_ENABLE_GPIO BOOLEAN false
set_parameter_property TMP_GUI_ENABLE_GPIO DISPLAY_NAME "Enable GPIO"
set_parameter_property TMP_GUI_ENABLE_GPIO DESCRIPTION "Add GPIO to core"
set_parameter_property TMP_GUI_ENABLE_GPIO GROUP "Peripheral"
set_parameter_property TMP_GUI_ENABLE_GPIO HDL_PARAMETER false
add_parameter GUI_ENABLE_GPIO Integer 0
set_parameter_property GUI_ENABLE_GPIO HDL_PARAMETER true
set_parameter_property GUI_ENABLE_GPIO DERIVED true
set_parameter_property GUI_ENABLE_GPIO VISIBLE false

add_parameter TMP_GUI_ENABLE_SPI BOOLEAN false
set_parameter_property TMP_GUI_ENABLE_SPI DISPLAY_NAME "Enable SPI"
set_parameter_property TMP_GUI_ENABLE_SPI DESCRIPTION "Add SPI to core"
set_parameter_property TMP_GUI_ENABLE_SPI GROUP "Peripheral"
set_parameter_property TMP_GUI_ENABLE_SPI HDL_PARAMETER false
add_parameter GUI_ENABLE_SPI Integer 0
set_parameter_property GUI_ENABLE_SPI HDL_PARAMETER true
set_parameter_property GUI_ENABLE_SPI DERIVED true
set_parameter_property GUI_ENABLE_SPI VISIBLE false

# Read the frequency of the input clock (in Hertz)
add_parameter CLOCK_RATE_CLK INTEGER 0
set_parameter_property CLOCK_RATE_CLK DISPLAY_NAME "Component's Clock Frequency"
set_parameter_property CLOCK_RATE_CLK DISPLAY_UNITS "Hz"
set_parameter_property CLOCK_RATE_CLK SYSTEM_INFO {CLOCK_RATE clk}
set_parameter_property CLOCK_RATE_CLK VISIBLE false

# 
# display items
# 


# 
# connection point clk
# 
add_interface clk clock end
set_interface_property clk clockRate 0
set_interface_property clk ENABLED true
set_interface_property clk EXPORT_OF ""
set_interface_property clk PORT_NAME_MAP ""
set_interface_property clk CMSIS_SVD_VARIABLES ""
set_interface_property clk SVD_ADDRESS_GROUP ""

add_interface_port clk clk_i clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clk
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset rstn_i reset_n Input 1

# 
# connection point perf_gpio 
# 
add_interface perf_gpio conduit end
set_interface_property perf_gpio associatedClock none
set_interface_property perf_gpio associatedReset none
set_interface_property perf_gpio ENABLED true
set_interface_property perf_gpio EXPORT_OF ""
set_interface_property perf_gpio PORT_NAME_MAP ""
set_interface_property perf_gpio CMSIS_SVD_VARIABLES ""
set_interface_property perf_gpio SVD_ADDRESS_GROUP ""

add_interface_port perf_gpio gpio_o gpio_o Output 64
add_interface_port perf_gpio gpio_i gpio_i Input 64

# 
# connection point perf_uart0 
# 
add_interface perf_uart0 conduit end
set_interface_property perf_uart0 associatedClock none
set_interface_property perf_uart0 associatedReset none
set_interface_property perf_uart0 ENABLED true
set_interface_property perf_uart0 EXPORT_OF ""
set_interface_property perf_uart0 PORT_NAME_MAP ""
set_interface_property perf_uart0 CMSIS_SVD_VARIABLES ""
set_interface_property perf_uart0 SVD_ADDRESS_GROUP ""

add_interface_port perf_uart0 uart0_txd_o uart0_txd_o Output 1
add_interface_port perf_uart0 uart0_rxd_i uart0_rxd_i Input 1

# 
# connection point perf_uart1 
# 
add_interface perf_uart1 conduit end
set_interface_property perf_uart1 associatedClock none
set_interface_property perf_uart1 associatedReset none
set_interface_property perf_uart1 ENABLED true
set_interface_property perf_uart1 EXPORT_OF ""
set_interface_property perf_uart1 PORT_NAME_MAP ""
set_interface_property perf_uart1 CMSIS_SVD_VARIABLES ""
set_interface_property perf_uart1 SVD_ADDRESS_GROUP ""

add_interface_port perf_uart1 uart1_txd_o uart1_txd_o Output 1
add_interface_port perf_uart1 uart1_rxd_i uart1_rxd_i Input 1

# 
# connection point perf_spi 
# 
add_interface perf_spi conduit end
set_interface_property perf_spi associatedClock none
set_interface_property perf_spi associatedReset none
set_interface_property perf_spi ENABLED true
set_interface_property perf_spi EXPORT_OF ""
set_interface_property perf_spi PORT_NAME_MAP ""
set_interface_property perf_spi CMSIS_SVD_VARIABLES ""
set_interface_property perf_spi SVD_ADDRESS_GROUP ""

add_interface_port perf_spi spi_sck_o spi_sck_o Output 1
add_interface_port perf_spi spi_sdo_o spi_sdo_o Output 1
add_interface_port perf_spi spi_sdi_i spi_sdi_i Input 1
add_interface_port perf_spi spi_csn_o spi_csn_o Output 8

# 
# connection point master
# 
add_interface master avalon start
set_interface_property master addressUnits SYMBOLS
set_interface_property master associatedClock clk
set_interface_property master associatedReset reset
set_interface_property master bitsPerSymbol 8
set_interface_property master burstOnBurstBoundariesOnly false
set_interface_property master burstcountUnits WORDS
set_interface_property master doStreamReads false
set_interface_property master doStreamWrites false
set_interface_property master holdTime 0
set_interface_property master linewrapBursts false
set_interface_property master maximumPendingReadTransactions 0
set_interface_property master maximumPendingWriteTransactions 0
set_interface_property master readLatency 0
set_interface_property master readWaitTime 0
set_interface_property master setupTime 0
set_interface_property master timingUnits Cycles
set_interface_property master writeWaitTime 0
set_interface_property master ENABLED true
set_interface_property master EXPORT_OF ""
set_interface_property master PORT_NAME_MAP ""
set_interface_property master CMSIS_SVD_VARIABLES ""
set_interface_property master SVD_ADDRESS_GROUP ""

add_interface_port master address address Output 32
add_interface_port master read read Output 1
add_interface_port master write write Output 1
add_interface_port master byteenable byteenable Output 4
add_interface_port master writedata writedata Output 32
add_interface_port master readdata readdata Input 32
add_interface_port master waitrequest waitrequest Input 1

proc bool2int {bool_param} {

    if { $bool_param == "true" } {
        set result 1
    } else {
        set result 0
    }
    return $result
}
# Callback to enable/disable interface signals
proc elaborate {} {

    set_parameter_value GUI_ENABLE_INTERNAL_IMEM [bool2int [get_parameter_value TMP_GUI_ENABLE_INTERNAL_IMEM]]
    set_parameter_value GUI_ENABLE_INTERNAL_DMEM [bool2int [get_parameter_value TMP_GUI_ENABLE_INTERNAL_DMEM]]
    set_parameter_value GUI_ENABLE_BOOTLOADER [bool2int [get_parameter_value TMP_GUI_ENABLE_BOOTLOADER]]

    set_parameter_value EXTENSION_RISCV_A [bool2int [get_parameter_value TMP_EXTENSION_RISCV_A]]
    set_parameter_value EXTENSION_RISCV_C [bool2int [get_parameter_value TMP_EXTENSION_RISCV_C]]
    set_parameter_value EXTENSION_RISCV_E [bool2int [get_parameter_value TMP_EXTENSION_RISCV_E]]
    set_parameter_value EXTENSION_RISCV_M [bool2int [get_parameter_value TMP_EXTENSION_RISCV_M]]
    set_parameter_value EXTENSION_RISCV_U [bool2int [get_parameter_value TMP_EXTENSION_RISCV_U]]
    set_parameter_value EXTENSION_RISCV_ZBB [bool2int [get_parameter_value TMP_EXTENSION_RISCV_ZBB]]
    set_parameter_value EXTENSION_RISCV_ZFINX [bool2int [get_parameter_value TMP_EXTENSION_RISCV_ZFINX]]
    set_parameter_value EXTENSION_RISCV_ZICSR [bool2int [get_parameter_value TMP_EXTENSION_RISCV_ZICSR]]
    set_parameter_value EXTENSION_RISCV_ZIFENCEI [bool2int [get_parameter_value TMP_EXTENSION_RISCV_ZIFENCEI]]
    set_parameter_value EXTENSION_RISCV_ZMMUL [bool2int [get_parameter_value TMP_EXTENSION_RISCV_ZMMUL]]

    if { [get_parameter_value TMP_GUI_ENABLE_GPIO] == "false" } {
        set_interface_property perf_gpio ENABLED false
        set_parameter_value GUI_ENABLE_GPIO 0
    } else {
        set_interface_property perf_gpio ENABLED true
        set_parameter_value GUI_ENABLE_GPIO 1
    }

    if { [get_parameter_value TMP_GUI_ENABLE_UART0] == "false" } {
        set_interface_property perf_uart0 ENABLED false
        set_parameter_value GUI_ENABLE_UART0 0
    } else {
        set_interface_property perf_uart0 ENABLED true
        set_parameter_value GUI_ENABLE_UART0 1
    }

    if { [get_parameter_value TMP_GUI_ENABLE_UART1] == "false" } {
        set_interface_property perf_uart1 ENABLED false
        set_parameter_value GUI_ENABLE_UART1 0
    } else {
        set_interface_property perf_uart1 ENABLED true
        set_parameter_value GUI_ENABLE_UART1 1
    }

    if { [get_parameter_value TMP_GUI_ENABLE_AVALONMM] == "false" } {
        set_interface_property master ENABLED false
        set_parameter_value GUI_ENABLE_AVALONMM 0
    } else {
        set_interface_property master ENABLED true
        set_parameter_value GUI_ENABLE_AVALONMM 1
    }

    if { [get_parameter_value TMP_GUI_ENABLE_SPI] == "false" } {
        set_interface_property perf_spi ENABLED false
        set_parameter_value GUI_ENABLE_SPI 0
    } else {
        set_interface_property perf_spi ENABLED true
        set_parameter_value GUI_ENABLE_SPI 1
    }

    if { [get_parameter_value CLOCK_RATE_CLK] < 1} {
        set_parameter_property TMP_GUI_CLOCK_FREQUENCY VISIBLE true
        set_parameter_value GUI_CLOCK_FREQUENCY [get_parameter_value TMP_GUI_CLOCK_FREQUENCY]
    } else {
        set_parameter_property TMP_GUI_CLOCK_FREQUENCY VISIBLE false
        set_parameter_value GUI_CLOCK_FREQUENCY [get_parameter_value CLOCK_RATE_CLK]
    }

    #send_message Info "IMEM enable [get_parameter_value GUI_ENABLE_INTERNAL_IMEM]"
    #send_message Info "DMEM enable [get_parameter_value GUI_ENABLE_INTERNAL_DMEM]"
    #send_message Info "Bootloader enable [get_parameter_value GUI_ENABLE_BOOTLOADER]"
    #send_message Info "AvalonMM enable [get_parameter_value GUI_ENABLE_AVALONMM]"
    #send_message Info "UART0 enable [get_parameter_value GUI_ENABLE_UART0]"
    #send_message Info "UART1 enable [get_parameter_value GUI_ENABLE_UART1]"
    #send_message Info "GPIO enable [get_parameter_value GUI_ENABLE_GPIO]"
    send_message Info "NEORV32 Clock Frequency: [get_parameter_value CLOCK_RATE_CLK] Hz"
    

}

