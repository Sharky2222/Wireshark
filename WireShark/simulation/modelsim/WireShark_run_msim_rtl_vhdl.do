transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib Wire_Shark
vmap Wire_Shark Wire_Shark
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/wire_shark.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_sgdma_rx.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_sgdma_tx.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_tse_mac.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_uart.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_001.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_002.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_descriptor_memory.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_nios2e.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_nios2e_cpu.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_nios2e_cpu_debug_slave_sysclk.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_nios2e_cpu_debug_slave_tck.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_nios2e_cpu_debug_slave_wrapper.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_nios2e_cpu_test_bench.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_onchip_memory_nios.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_pll_0.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_reset_controller.v}
vlog -vlog01compat -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_reset_synchronizer.v}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_001_data_format_adapter_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_001_timing_adapter_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_002_channel_adapter_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_002_error_adapter_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_002_timing_adapter_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_002_timing_adapter_0_fifo.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_demultiplexer_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_irq_mapper.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_cmd_demux_005.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_cmd_mux_005.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_cmd_mux_006.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_cmd_mux_007.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router_001.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router_005.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router_006.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router_008.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router_013.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router_014.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_router_015.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_rsp_demux_006.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_rsp_demux_007.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/wire_shark_mm_interconnect_0_rsp_mux_005.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_merlin_master_agent.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_merlin_master_translator.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work Wire_Shark +incdir+c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/altera_merlin_slave_translator.sv}
vcom -93 -work work {C:/Users/Nikol/OneDrive/Documents/Complex_Digital_Sys/DE10-Standard_v.1.0.1_SystemBuilder/CodeGenerated/DE10_Standard/WireShark/WireShark.vhd}
vcom -93 -work Wire_Shark {c:/users/nikol/onedrive/documents/complex_digital_sys/de10-standard_v.1.0.1_systembuilder/codegenerated/de10_standard/wireshark/db/ip/wire_shark/submodules/packetfilter.vhd}
