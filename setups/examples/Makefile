OSFLOW := ../osflow
EXAMPLES := ../../examples
TEMPLATES := ../../../rtl/templates
MV := mv

TASK := clean $(BITSTREAM)

FOMU_REV ?= pvt

ifndef BOARD
$(error BOARD needs to be set to 'Fomu' or 'UPDuino_v3'!)
endif

run:
	$(eval TASK ?= clean $(BITSTREAM))
	$(MAKE) -C $(OSFLOW)/$(BOARD)/ \
	  BOARD_SRC=$(EXAMPLES)/neorv32_$(BOARD)_BoardTop_$(DESIGN).vhd \
	  TOP=neorv32_$(BOARD)_BoardTop_$(DESIGN) \
	  ID=$(DESIGN) \
	  $(TASK)
	$(MV) $(OSFLOW)/$(BOARD)/$(BITSTREAM) ./

Fomu:
ifeq ($(DESIGN),Minimal)
	$(eval IMEM_SRC := ../../../rtl/core/neorv32_imem.vhd)
else
	$(eval IMEM_SRC := ../devices/ice40/neorv32_imem.ice40up_spram.vhd)
endif
	$(MAKE) \
	  BITSTREAM=neorv32_$(BOARD)_$(FOMU_REV)_$(DESIGN).bit \
	  NEORV32_MEM_SRC="${IMEM_SRC} ../devices/ice40/neorv32_dmem.ice40up_spram.vhd" \
	  run

UPduino_v3:
	$(MAKE) \
	  BITSTREAM=neorv32_$(BOARD)_$(DESIGN).bit \
	  run

Minimal:
	$(MAKE) \
	  DESIGN=$@ \
	  DESIGN_SRC=$(TEMPLATES)/processor/neorv32_ProcessorTop_Minimal.vhd \
	  $(BOARD)

MinimalBoot:
	$(MAKE) \
	  DESIGN=$@ \
	  DESIGN_SRC=$(TEMPLATES)/processor/neorv32_ProcessorTop_MinimalBoot.vhd \
	  $(BOARD)

UP5KDemo:
	$(MAKE) \
	  DESIGN=$@ \
	  DESIGN_SRC=$(TEMPLATES)/processor/neorv32_ProcessorTop_UP5KDemo.vhd \
	  $(BOARD)
