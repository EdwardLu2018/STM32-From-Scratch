TARGET = blinky

BUILD_DIR = build

C_SOURCES =  $(shell find . -name "*.c")
ASM_SOURCES = Startup/startup.s

PREFIX = arm-none-eabi-
CC = $(PREFIX)gcc
AS = $(PREFIX)as
CP = $(PREFIX)objcopy
LD = $(PREFIX)ld.bfd
SZ = $(PREFIX)size

BIN = $(CP) -O binary

CPU = -mcpu=cortex-m3
MCU = $(CPU) -mthumb -g

C_INCLUDES = -IInc
CFLAGS = $(MCU) $(C_INCLUDES)

LDSCRIPT = blinky.lds
LDFLAGS = -T $(LDSCRIPT)

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
	$(SZ) $@

$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@

$(BUILD_DIR):
	mkdir $@

clean:
	-rm -fR $(BUILD_DIR)

flash: $(BUILD_DIR)/$(TARGET).bin
	st-flash --reset write ./$(BUILD_DIR)/$(TARGET).bin 0x08000000

openocd:
	openocd -f openocd.cfg

telnet:
	telnet localhost 4444

gdb: $(BUILD_DIR)/$(TARGET).elf
	arm-none-eabi-gdb --eval-command="target remote localhost:3333" $<

