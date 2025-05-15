# modelsim installation path
MODELSIM_BIN = /c/intelFPGA/20.1/modelsim_ase/win32aloem

# modelsim executables
VLIB = $(MODELSIM_BIN)/vlib
VMAP = $(MODELSIM_BIN)/vmap
VLOG = $(MODELSIM_BIN)/vlog # sv / verilog compiler
VCOM = $(MODELSIM_BIN)/vcom # vhdl compiler
VSIM = $(MODELSIM_BIN)/vsim # simulator

# text file with relative paths to hdl files
FILES = files.txt

# name of top-level testbench module
TOP_LEVEL = tb_counter

.PHONY: compile
compile:
	$(VLIB) work
	$(VMAP) work work
	$(VLOG) -f $(FILES)

.PHONY: sim
sim:
	$(VSIM) $(TOP_LEVEL)

.PHONY: clean
clean:
	@rm -rf work modelsim.ini transcript
