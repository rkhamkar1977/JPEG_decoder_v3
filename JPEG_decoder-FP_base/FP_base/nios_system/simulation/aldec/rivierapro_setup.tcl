
# (C) 2001-2021 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 17.0 595 linux 2021.11.10.18:46:44
# ----------------------------------------
# Auto-generated simulation script rivierapro_setup.tcl
# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     nios_system
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level script that compiles Altera simulation libraries and
# the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "aldec.do", and modify the text as directed.
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# set QSYS_SIMDIR <script generation output directory>
# #
# # Source the generated IP simulation script.
# source $QSYS_SIMDIR/aldec/rivierapro_setup.tcl
# #
# # Set any compilation options you require (this is unusual).
# set USER_DEFINED_COMPILE_OPTIONS <compilation options>
# #
# # Call command to compile the Quartus EDA simulation library.
# dev_com
# #
# # Call command to compile the Quartus-generated IP simulation files.
# com
# #
# # Add commands to compile all design files and testbench files, including
# # the top level. (These are all the files required for simulation other
# # than the files compiled by the Quartus-generated IP simulation script)
# #
# vlog -sv2k5 <your compilation options> <design and testbench files>
# #
# # Set the top-level simulation or testbench module/entity name, which is
# # used by the elab command to elaborate the top level.
# #
# set TOP_LEVEL_NAME <simulation top>
# #
# # Set any elaboration options you require.
# set USER_DEFINED_ELAB_OPTIONS <elaboration options>
# #
# # Call command to elaborate your design and testbench.
# elab
# #
# # Run the simulation.
# run
# #
# # Report success to the shell.
# exit -code 0
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If nios_system is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "nios_system"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/package/eda/altera/altera17.0/quartus/"
}

if ![info exists USER_DEFINED_COMPILE_OPTIONS] { 
  set USER_DEFINED_COMPILE_OPTIONS ""
}
if ![info exists USER_DEFINED_ELAB_OPTIONS] { 
  set USER_DEFINED_ELAB_OPTIONS ""
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_dc_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_dc_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_dc_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_b.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_bht_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_bht_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_bht_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_ic_tag_ram.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                  ./libraries/altera_ver      
vmap       altera_ver       ./libraries/altera_ver      
ensure_lib                  ./libraries/lpm_ver         
vmap       lpm_ver          ./libraries/lpm_ver         
ensure_lib                  ./libraries/sgate_ver       
vmap       sgate_ver        ./libraries/sgate_ver       
ensure_lib                  ./libraries/altera_mf_ver   
vmap       altera_mf_ver    ./libraries/altera_mf_ver   
ensure_lib                  ./libraries/altera_lnsim_ver
vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver
ensure_lib                  ./libraries/cycloneive_ver  
vmap       cycloneive_ver   ./libraries/cycloneive_ver  
ensure_lib                                                                        ./libraries/error_adapter_0                                                       
vmap       error_adapter_0                                                        ./libraries/error_adapter_0                                                       
ensure_lib                                                                        ./libraries/avalon_st_adapter_006                                                 
vmap       avalon_st_adapter_006                                                  ./libraries/avalon_st_adapter_006                                                 
ensure_lib                                                                        ./libraries/avalon_st_adapter_001                                                 
vmap       avalon_st_adapter_001                                                  ./libraries/avalon_st_adapter_001                                                 
ensure_lib                                                                        ./libraries/avalon_st_adapter                                                     
vmap       avalon_st_adapter                                                      ./libraries/avalon_st_adapter                                                     
ensure_lib                                                                        ./libraries/nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter
vmap       nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter ./libraries/nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter
ensure_lib                                                                        ./libraries/rsp_mux_002                                                           
vmap       rsp_mux_002                                                            ./libraries/rsp_mux_002                                                           
ensure_lib                                                                        ./libraries/rsp_mux_001                                                           
vmap       rsp_mux_001                                                            ./libraries/rsp_mux_001                                                           
ensure_lib                                                                        ./libraries/rsp_mux                                                               
vmap       rsp_mux                                                                ./libraries/rsp_mux                                                               
ensure_lib                                                                        ./libraries/rsp_demux_006                                                         
vmap       rsp_demux_006                                                          ./libraries/rsp_demux_006                                                         
ensure_lib                                                                        ./libraries/rsp_demux_004                                                         
vmap       rsp_demux_004                                                          ./libraries/rsp_demux_004                                                         
ensure_lib                                                                        ./libraries/rsp_demux_001                                                         
vmap       rsp_demux_001                                                          ./libraries/rsp_demux_001                                                         
ensure_lib                                                                        ./libraries/rsp_demux                                                             
vmap       rsp_demux                                                              ./libraries/rsp_demux                                                             
ensure_lib                                                                        ./libraries/cmd_mux_006                                                           
vmap       cmd_mux_006                                                            ./libraries/cmd_mux_006                                                           
ensure_lib                                                                        ./libraries/cmd_mux_004                                                           
vmap       cmd_mux_004                                                            ./libraries/cmd_mux_004                                                           
ensure_lib                                                                        ./libraries/cmd_mux_001                                                           
vmap       cmd_mux_001                                                            ./libraries/cmd_mux_001                                                           
ensure_lib                                                                        ./libraries/cmd_mux                                                               
vmap       cmd_mux                                                                ./libraries/cmd_mux                                                               
ensure_lib                                                                        ./libraries/cmd_demux_002                                                         
vmap       cmd_demux_002                                                          ./libraries/cmd_demux_002                                                         
ensure_lib                                                                        ./libraries/cmd_demux_001                                                         
vmap       cmd_demux_001                                                          ./libraries/cmd_demux_001                                                         
ensure_lib                                                                        ./libraries/cmd_demux                                                             
vmap       cmd_demux                                                              ./libraries/cmd_demux                                                             
ensure_lib                                                                        ./libraries/sram_0_avalon_sram_slave_burst_adapter                                
vmap       sram_0_avalon_sram_slave_burst_adapter                                 ./libraries/sram_0_avalon_sram_slave_burst_adapter                                
ensure_lib                                                                        ./libraries/nios2_qsys_0_data_master_limiter                                      
vmap       nios2_qsys_0_data_master_limiter                                       ./libraries/nios2_qsys_0_data_master_limiter                                      
ensure_lib                                                                        ./libraries/router_009                                                            
vmap       router_009                                                             ./libraries/router_009                                                            
ensure_lib                                                                        ./libraries/router_007                                                            
vmap       router_007                                                             ./libraries/router_007                                                            
ensure_lib                                                                        ./libraries/router_004                                                            
vmap       router_004                                                             ./libraries/router_004                                                            
ensure_lib                                                                        ./libraries/router_003                                                            
vmap       router_003                                                             ./libraries/router_003                                                            
ensure_lib                                                                        ./libraries/router_002                                                            
vmap       router_002                                                             ./libraries/router_002                                                            
ensure_lib                                                                        ./libraries/router_001                                                            
vmap       router_001                                                             ./libraries/router_001                                                            
ensure_lib                                                                        ./libraries/router                                                                
vmap       router                                                                 ./libraries/router                                                                
ensure_lib                                                                        ./libraries/sram_0_avalon_sram_slave_agent_rsp_fifo                               
vmap       sram_0_avalon_sram_slave_agent_rsp_fifo                                ./libraries/sram_0_avalon_sram_slave_agent_rsp_fifo                               
ensure_lib                                                                        ./libraries/sram_0_avalon_sram_slave_agent                                        
vmap       sram_0_avalon_sram_slave_agent                                         ./libraries/sram_0_avalon_sram_slave_agent                                        
ensure_lib                                                                        ./libraries/video_pixel_buffer_dma_0_avalon_pixel_dma_master_agent                
vmap       video_pixel_buffer_dma_0_avalon_pixel_dma_master_agent                 ./libraries/video_pixel_buffer_dma_0_avalon_pixel_dma_master_agent                
ensure_lib                                                                        ./libraries/video_pixel_buffer_dma_0_avalon_pixel_dma_master_translator           
vmap       video_pixel_buffer_dma_0_avalon_pixel_dma_master_translator            ./libraries/video_pixel_buffer_dma_0_avalon_pixel_dma_master_translator           
ensure_lib                                                                        ./libraries/tda                                                                   
vmap       tda                                                                    ./libraries/tda                                                                   
ensure_lib                                                                        ./libraries/slave_translator                                                      
vmap       slave_translator                                                       ./libraries/slave_translator                                                      
ensure_lib                                                                        ./libraries/tdt                                                                   
vmap       tdt                                                                    ./libraries/tdt                                                                   
ensure_lib                                                                        ./libraries/rst_controller                                                        
vmap       rst_controller                                                         ./libraries/rst_controller                                                        
ensure_lib                                                                        ./libraries/irq_mapper                                                            
vmap       irq_mapper                                                             ./libraries/irq_mapper                                                            
ensure_lib                                                                        ./libraries/mm_interconnect_0                                                     
vmap       mm_interconnect_0                                                      ./libraries/mm_interconnect_0                                                     
ensure_lib                                                                        ./libraries/nios2_qsys_0_custom_instruction_master_comb_slave_translator0         
vmap       nios2_qsys_0_custom_instruction_master_comb_slave_translator0          ./libraries/nios2_qsys_0_custom_instruction_master_comb_slave_translator0         
ensure_lib                                                                        ./libraries/nios2_qsys_0_custom_instruction_master_comb_xconnect                  
vmap       nios2_qsys_0_custom_instruction_master_comb_xconnect                   ./libraries/nios2_qsys_0_custom_instruction_master_comb_xconnect                  
ensure_lib                                                                        ./libraries/nios2_qsys_0_custom_instruction_master_translator                     
vmap       nios2_qsys_0_custom_instruction_master_translator                      ./libraries/nios2_qsys_0_custom_instruction_master_translator                     
ensure_lib                                                                        ./libraries/ycc_col_conv_r_0                                                      
vmap       ycc_col_conv_r_0                                                       ./libraries/ycc_col_conv_r_0                                                      
ensure_lib                                                                        ./libraries/ycc_col_conv_g_0                                                      
vmap       ycc_col_conv_g_0                                                       ./libraries/ycc_col_conv_g_0                                                      
ensure_lib                                                                        ./libraries/ycc_col_conv_b_0                                                      
vmap       ycc_col_conv_b_0                                                       ./libraries/ycc_col_conv_b_0                                                      
ensure_lib                                                                        ./libraries/video_vga_controller_0                                                
vmap       video_vga_controller_0                                                 ./libraries/video_vga_controller_0                                                
ensure_lib                                                                        ./libraries/video_rgb_resampler_0                                                 
vmap       video_rgb_resampler_0                                                  ./libraries/video_rgb_resampler_0                                                 
ensure_lib                                                                        ./libraries/video_pixel_buffer_dma_0                                              
vmap       video_pixel_buffer_dma_0                                               ./libraries/video_pixel_buffer_dma_0                                              
ensure_lib                                                                        ./libraries/video_dual_clock_buffer_0                                             
vmap       video_dual_clock_buffer_0                                              ./libraries/video_dual_clock_buffer_0                                             
ensure_lib                                                                        ./libraries/tristate_conduit_bridge_0                                             
vmap       tristate_conduit_bridge_0                                              ./libraries/tristate_conduit_bridge_0                                             
ensure_lib                                                                        ./libraries/sram_0                                                                
vmap       sram_0                                                                 ./libraries/sram_0                                                                
ensure_lib                                                                        ./libraries/performance_counter_0                                                 
vmap       performance_counter_0                                                  ./libraries/performance_counter_0                                                 
ensure_lib                                                                        ./libraries/nios2_qsys_0                                                          
vmap       nios2_qsys_0                                                           ./libraries/nios2_qsys_0                                                          
ensure_lib                                                                        ./libraries/new_sdram_controller_0                                                
vmap       new_sdram_controller_0                                                 ./libraries/new_sdram_controller_0                                                
ensure_lib                                                                        ./libraries/jtag_uart_0                                                           
vmap       jtag_uart_0                                                            ./libraries/jtag_uart_0                                                           
ensure_lib                                                                        ./libraries/generic_tristate_controller_0                                         
vmap       generic_tristate_controller_0                                          ./libraries/generic_tristate_controller_0                                         

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  eval vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v" -work altera_ver      
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"          -work lpm_ver         
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"             -work sgate_ver       
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"         -work altera_mf_ver   
  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"     -work altera_lnsim_ver
  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/cycloneive_atoms.v"  -work cycloneive_ver  
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_006_error_adapter_0.sv" -work error_adapter_0                                                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -work error_adapter_0                                                       
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -work error_adapter_0                                                       
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_006.v"                  -work avalon_st_adapter_006                                                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_avalon_st_adapter_001.v"                  -work avalon_st_adapter_001                                                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_avalon_st_adapter.v"                      -work avalon_st_adapter                                                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                         -work nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                     -work nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                    -work nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_rsp_mux_002.sv"                           -work rsp_mux_002                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                            -work rsp_mux_002                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_rsp_mux_001.sv"                           -work rsp_mux_001                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                            -work rsp_mux_001                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_rsp_mux.sv"                               -work rsp_mux                                                               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                            -work rsp_mux                                                               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_rsp_demux_006.sv"                         -work rsp_demux_006                                                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_rsp_demux_004.sv"                         -work rsp_demux_004                                                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_rsp_demux_001.sv"                         -work rsp_demux_001                                                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_rsp_demux.sv"                             -work rsp_demux                                                             
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_cmd_mux_006.sv"                           -work cmd_mux_006                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                            -work cmd_mux_006                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_cmd_mux_004.sv"                           -work cmd_mux_004                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                            -work cmd_mux_004                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_cmd_mux_001.sv"                           -work cmd_mux_001                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                            -work cmd_mux_001                                                           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_cmd_mux.sv"                               -work cmd_mux                                                               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                            -work cmd_mux                                                               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_cmd_demux_002.sv"                         -work cmd_demux_002                                                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_cmd_demux_001.sv"                         -work cmd_demux_001                                                         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_cmd_demux.sv"                             -work cmd_demux                                                             
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                         -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                  -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                    -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                     -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                         -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                         -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                      -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                     -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                     -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                       -work sram_0_avalon_sram_slave_burst_adapter                                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                       -work nios2_qsys_0_data_master_limiter                                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                        -work nios2_qsys_0_data_master_limiter                                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                -work nios2_qsys_0_data_master_limiter                                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                       -work nios2_qsys_0_data_master_limiter                                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_router_009.sv"                            -work router_009                                                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_router_007.sv"                            -work router_007                                                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_router_004.sv"                            -work router_004                                                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_router_003.sv"                            -work router_003                                                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_router_002.sv"                            -work router_002                                                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_router_001.sv"                            -work router_001                                                            
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0_router.sv"                                -work router                                                                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                -work sram_0_avalon_sram_slave_agent_rsp_fifo                               
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                           -work sram_0_avalon_sram_slave_agent                                        
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                    -work sram_0_avalon_sram_slave_agent                                        
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                          -work video_pixel_buffer_dma_0_avalon_pixel_dma_master_agent                
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                     -work video_pixel_buffer_dma_0_avalon_pixel_dma_master_translator           
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_tristate_controller_aggregator.sv"                               -work tda                                                                   
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                      -work slave_translator                                                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_tristate_controller_translator.sv"                               -work tdt                                                                   
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                              -work rst_controller                                                        
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                            -work rst_controller                                                        
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_irq_mapper.sv"                                              -work irq_mapper                                                            
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_mm_interconnect_0.v"                                        -work mm_interconnect_0                                                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/altera_customins_slave_translator.sv"                                   -work nios2_qsys_0_custom_instruction_master_comb_slave_translator0         
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_custom_instruction_master_comb_xconnect.sv"    -work nios2_qsys_0_custom_instruction_master_comb_xconnect                  
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_customins_master_translator.v"                                   -work nios2_qsys_0_custom_instruction_master_translator                     
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/ycc_col_convert_sc_ci_r.sv"                                             -work ycc_col_conv_r_0                                                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/ycc_col_convert_sc_ci_g.sv"                                             -work ycc_col_conv_g_0                                                      
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/ycc_col_convert_sc_ci_b.sv"                                             -work ycc_col_conv_b_0                                                      
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                                    -work video_vga_controller_0                                                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_video_vga_controller_0.v"                                   -work video_vga_controller_0                                                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_video_rgb_resampler_0.v"                                    -work video_rgb_resampler_0                                                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_video_pixel_buffer_dma_0.v"                                 -work video_pixel_buffer_dma_0                                              
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_video_dual_clock_buffer_0.v"                                -work video_dual_clock_buffer_0                                             
  eval  vlog  $USER_DEFINED_COMPILE_OPTIONS      "$QSYS_SIMDIR/submodules/nios_system_tristate_conduit_bridge_0.sv"                               -work tristate_conduit_bridge_0                                             
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_sram_0.v"                                                   -work sram_0                                                                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_performance_counter_0.v"                                    -work performance_counter_0                                                 
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0.vo"                                            -work nios2_qsys_0                                                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_jtag_debug_module_wrapper.v"                   -work nios2_qsys_0                                                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_jtag_debug_module_sysclk.v"                    -work nios2_qsys_0                                                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_jtag_debug_module_tck.v"                       -work nios2_qsys_0                                                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_oci_test_bench.v"                              -work nios2_qsys_0                                                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_mult_cell.v"                                   -work nios2_qsys_0                                                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_nios2_qsys_0_test_bench.v"                                  -work nios2_qsys_0                                                          
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_new_sdram_controller_0_test_component.v"                    -work new_sdram_controller_0                                                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_new_sdram_controller_0.v"                                   -work new_sdram_controller_0                                                
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_jtag_uart_0.v"                                              -work jtag_uart_0                                                           
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/nios_system_generic_tristate_controller_0.v"                            -work generic_tristate_controller_0                                         
  eval  vlog -v2k5 $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/nios_system.v"                                                                                                                                                 
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L error_adapter_0 -L avalon_st_adapter_006 -L avalon_st_adapter_001 -L avalon_st_adapter -L nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_mux -L rsp_demux_006 -L rsp_demux_004 -L rsp_demux_001 -L rsp_demux -L cmd_mux_006 -L cmd_mux_004 -L cmd_mux_001 -L cmd_mux -L cmd_demux_002 -L cmd_demux_001 -L cmd_demux -L sram_0_avalon_sram_slave_burst_adapter -L nios2_qsys_0_data_master_limiter -L router_009 -L router_007 -L router_004 -L router_003 -L router_002 -L router_001 -L router -L sram_0_avalon_sram_slave_agent_rsp_fifo -L sram_0_avalon_sram_slave_agent -L video_pixel_buffer_dma_0_avalon_pixel_dma_master_agent -L video_pixel_buffer_dma_0_avalon_pixel_dma_master_translator -L tda -L slave_translator -L tdt -L rst_controller -L irq_mapper -L mm_interconnect_0 -L nios2_qsys_0_custom_instruction_master_comb_slave_translator0 -L nios2_qsys_0_custom_instruction_master_comb_xconnect -L nios2_qsys_0_custom_instruction_master_translator -L ycc_col_conv_r_0 -L ycc_col_conv_g_0 -L ycc_col_conv_b_0 -L video_vga_controller_0 -L video_rgb_resampler_0 -L video_pixel_buffer_dma_0 -L video_dual_clock_buffer_0 -L tristate_conduit_bridge_0 -L sram_0 -L performance_counter_0 -L nios2_qsys_0 -L new_sdram_controller_0 -L jtag_uart_0 -L generic_tristate_controller_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L error_adapter_0 -L avalon_st_adapter_006 -L avalon_st_adapter_001 -L avalon_st_adapter -L nios2_qsys_0_data_master_to_sram_0_avalon_sram_slave_cmd_width_adapter -L rsp_mux_002 -L rsp_mux_001 -L rsp_mux -L rsp_demux_006 -L rsp_demux_004 -L rsp_demux_001 -L rsp_demux -L cmd_mux_006 -L cmd_mux_004 -L cmd_mux_001 -L cmd_mux -L cmd_demux_002 -L cmd_demux_001 -L cmd_demux -L sram_0_avalon_sram_slave_burst_adapter -L nios2_qsys_0_data_master_limiter -L router_009 -L router_007 -L router_004 -L router_003 -L router_002 -L router_001 -L router -L sram_0_avalon_sram_slave_agent_rsp_fifo -L sram_0_avalon_sram_slave_agent -L video_pixel_buffer_dma_0_avalon_pixel_dma_master_agent -L video_pixel_buffer_dma_0_avalon_pixel_dma_master_translator -L tda -L slave_translator -L tdt -L rst_controller -L irq_mapper -L mm_interconnect_0 -L nios2_qsys_0_custom_instruction_master_comb_slave_translator0 -L nios2_qsys_0_custom_instruction_master_comb_xconnect -L nios2_qsys_0_custom_instruction_master_translator -L ycc_col_conv_r_0 -L ycc_col_conv_g_0 -L ycc_col_conv_b_0 -L video_vga_controller_0 -L video_rgb_resampler_0 -L video_pixel_buffer_dma_0 -L video_dual_clock_buffer_0 -L tristate_conduit_bridge_0 -L sram_0 -L performance_counter_0 -L nios2_qsys_0 -L new_sdram_controller_0 -L jtag_uart_0 -L generic_tristate_controller_0 -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo "                                 For most designs, this should be overridden"
  echo "                                 to enable the elab/elab_debug aliases."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
  echo
  echo "USER_DEFINED_COMPILE_OPTIONS  -- User-defined compile options, added to com/dev_com aliases."
  echo
  echo "USER_DEFINED_ELAB_OPTIONS     -- User-defined elaboration options, added to elab/elab_debug aliases."
}
file_copy
h
