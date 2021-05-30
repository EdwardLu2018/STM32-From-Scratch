TARGET = blinky

BUILD_DIR = build

C_SOURCES = $(shell find . -name "*.c")
ASM_SOURCES = $(shell find . -name "*.S")

PREFIX = arm-none-eabi
CC = $(PREFIX)-gcc
AS = $(PREFIX)-as
CP = $(PREFIX)-objcopy
LD = $(PREFIX)-ld.bfd
SZ = $(PREFIX)-size
GDB = $(PREFIX)-gdb

BIN = $(CP) -O binary

CPU = -mcpu=cortex-m3
MCU = $(CPU) -mthumb -g

C_INCLUDES = -Iinc
CFLAGS = $(MCU) $(C_INCLUDES)

LDSCRIPT = blinky.lds
LDFLAGS = -T $(LDSCRIPT)

all: $(BUILD_DIR)/$(TARGET).bin

OBJECTS = $(addprefix $(BUILD_DIR)/,$(notdir $(ASM_SOURCES:.S=.o)))
vpath %.S $(sort $(dir $(ASM_SOURCES)))

OBJECTS += $(addprefix $(BUILD_DIR)/,$(notdir $(C_SOURCES:.c=.o)))
vpath %.c $(sort $(dir $(C_SOURCES)))

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR)/%.o: %.S | $(BUILD_DIR)
	$(AS) $< -o $@

$(BUILD_DIR)/$(TARGET).elf: $(OBJECTS) | $(BUILD_DIR)
	$(LD) $(LDFLAGS) $(OBJECTS) -o $@
	$(SZ) $@

$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@

$(BUILD_DIR):
	mkdir $@

clean:
	-rm -fR $(BUILD_DIR)

flash:
	st-flash --reset write ./$(BUILD_DIR)/$(TARGET).bin 0x08000000

openocd:
	openocd -f ../utils/openocd.cfg

telnet:
	telnet localhost 4444

gdb: $(BUILD_DIR)/$(TARGET).elf
	$(GDB) --eval-command="target remote localhost:3333" $<

