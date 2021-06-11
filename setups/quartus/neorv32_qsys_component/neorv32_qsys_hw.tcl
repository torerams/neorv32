
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
set_module_property AUTHOR "Tore Ramsland"
set_module_property DISPLAY_NAME "NEORV32 CPU"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE false
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


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
# connection point cpu_io 
# 
add_interface cpu_io conduit end
set_interface_property cpu_io associatedClock none
set_interface_property cpu_io associatedReset none
set_interface_property cpu_io ENABLED true
set_interface_property cpu_io EXPORT_OF ""
set_interface_property cpu_io PORT_NAME_MAP ""
set_interface_property cpu_io CMSIS_SVD_VARIABLES ""
set_interface_property cpu_io SVD_ADDRESS_GROUP ""

add_interface_port cpu_io gpio_o gpio_o Output 8
add_interface_port cpu_io uart0_txd_o uart0_txd_o Output 1
add_interface_port cpu_io uart0_rxd_i uart0_rxd_i Input 1

# 
# connection point master
# 
#add_interface master avalon start
#set_interface_property master addressUnits SYMBOLS
#set_interface_property master associatedClock clk
#set_interface_property master associatedReset reset
#set_interface_property master bitsPerSymbol 8
#set_interface_property master burstOnBurstBoundariesOnly false
#set_interface_property master burstcountUnits WORDS
#set_interface_property master doStreamReads false
#set_interface_property master doStreamWrites false
#set_interface_property master holdTime 0
#set_interface_property master linewrapBursts false
#set_interface_property master maximumPendingReadTransactions 0
#set_interface_property master maximumPendingWriteTransactions 0
#set_interface_property master readLatency 0
#set_interface_property master readWaitTime 1
#set_interface_property master setupTime 0
#set_interface_property master timingUnits Cycles
#set_interface_property master writeWaitTime 0
#set_interface_property master ENABLED true
#set_interface_property master EXPORT_OF ""
#set_interface_property master PORT_NAME_MAP ""
#set_interface_property master CMSIS_SVD_VARIABLES ""
#set_interface_property master SVD_ADDRESS_GROUP ""

#add_interface_port master address address Output 17
#add_interface_port master read read Output 1
#add_interface_port master write write Output 1
#add_interface_port master writedata writedata Output 32
#add_interface_port master readdata readdata Input 32
#add_interface_port master waitrequest waitrequest Input 1

