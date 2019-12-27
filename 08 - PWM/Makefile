TARGET = blinky

BUILD_DIR = build

C_SOURCES =  $(shell find . -name "*.c")
ASM_SOURCES = Startup/startup.s

PREFIX = arm-none-eabi-
CC = $(PREFIX)gcc
AS = $(PREFIX)as
CP = $(PREFIX)objcopy
LD = $(PREFIX)ld.bfd
DS = $(PREFIX)objdump
DS1 = objdump
SZ = $(PREFIX)size

BIN = $(CP) -O binary

CPU = -mcpu=cortex-m3
MCU = $(CPU) -mthumb -g

C_INCLUDES = -IInc
CFLAGS = $(MCU) $(C_INCLUDES)

LDSCRIPT = blinky.ld
LDFLAGS = -T $(LDSCRIPT)

DSFLAGS = -D -bbinary -marm -Mforce-thumb
DS1FLAGS = --disassemble

all: $(BUILD_DIR)/$(TARGET).bin

OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.s | $(BUILD_DIR)
	$(AS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) | $(BUILD_DIR)
	$(LD) $(LDFLAGS) $(OBJECTS) -o $@
	$(DS1) $(DS1FLAGS) $@ > $(BUILD_DIR)/disasm.s
	$(SZ) $@

$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@
	$(DS) $(DSFLAGS) $@ > $(BUILD_DIR)/disassembly.s

$(BUILD_DIR):
	mkdir $@

clean:
	-rm -fR $(BUILD_DIR)

flash: $(BUILD_DIR)/$(TARGET).bin
	# st-flash --reset write ./$(BUILD_DIR)/$(TARGET).bin 0x08000000
	stm32flash -w $< -v -g 0x0 /dev/tty.usbserial-1420

# OPEN_OCD = -f /usr/local/share/openocd/scripts/interface/stlink-v2.cfg -f /usr/local/share/openocd/scripts/target/stm32f1x.cfg
# flash-ocd: $(BUILD_DIR)/$(TARGET).bin
# 	openocd $(OPEN_OCD) -c "program ./$(BUILD_DIR)/$(TARGET).elf verify reset exit"
