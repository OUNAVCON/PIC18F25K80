.SUFFIXES:
.SUFFIXES: .c .s .obj

XC8 = /opt/microchip/xc8/v1.44/bin

NAME = main
PROJECT = app

ASM = $(XC8)/xc8
CC = $(XC8)/xc8
LD = $(XC8)/xc8
SIZE = $(XC8)/xc8

OUT_DIR = build
BUILD_LOG = build.log
SRC_PATH = src
SRC = $(wildcard  $(SRC_PATH)/*.c) 
INC_PATH = includes
CFLAGS = --chip=18F25K80 -I$(INC_PATH)
#ASMFLAGS = -mthumb -mcpu=cortex-m0plus
#OBJ_CPY = $(ARM)-objcopy
LDFLAGS = -T lnk.ld  -Map=$(PROJECT).map 
DEPENDENCIES = $(subst .c,.d,$(SRC))

SEGGER = /opt/SEGGER/JLink/JLinkExe

%.o: %.c
	@echo Compiling $<
	@echo >> ${BUILD_LOG}
	@echo $(CC) $(CFLAGS) -O$@ $< >> ${BUILD_LOG}
	@$(CC) $(CFLAGS) -O$@ $< >> ${BUILD_LOG}

OBJ = $(subst .c,.o,$(SRC))

all: $(OUT_DIR) $(SRC) $(OUT_DIR)
	@echo $(SRC)
#	@mv $(PROJECT).map $(PROJECT).elf $(PROJECT).bin $(OBJ) $(BUILD_LOG) $(OUT_DIR)/
#	@echo Code Size
#	@echo $(SIZE) $(OUT_DIR)/$(PROJECT).bin
#	@$(SIZE) $(OUT_DIR)/$(PROJECT).elf
	@$(CC) $(CFLAGS) --chip=18F25K80 $(SRC) -O$(PROJECT).bin
	@mv *.as *.obj *.pre *.p1 *.d *.sdb *.lst *.rlf *.cof *.cmf *.hxl *.sym *.hex $(OUT_DIR)


$(PROJECT).elf: $(OBJ)
	@echo Linking $@
	@echo >> ${BUILD_LOG}
#	@echo ${LD} ${LDFLAGS} ${OBJ} >> ${BUILD_LOG}
	@${LD} ${LDFLAGS} ${OBJ} -o $@ >> ${BUILD_LOG}
	@echo Created File: $@

$(PROJECT).bin: $(PROJECT).elf
#	@echo Creating Binary $<
	@echo >> ${BUILD_LOG}
#	@echo $(OBJ_CPY) -O binary $< $@ >> ${BUILD_LOG}
	@$(OBJ_CPY) -O binary $< $@ >> ${BUILD_LOG}
#	@echo Created File: $@


$(OUT_DIR):
	@echo Creating Build DIR
	@mkdir -p $@

flash:
	@$(SEGGER) -si swd -device S9KEAZN8xxxx loadbin $(OUT_DIR)/$(PROJECT).bin
	

 
clean:
	@echo Removing Build Files
	@rm -rf ${OUT_DIR}/*

.PHONY: all clean test flash

 
