TARGET = blinky

BUILD_DIR = build

C_SOURCES =  $(shell find . -name "*.c")
ASM_SOURCES = Startup/startup.s

FLASH = stm32flash
PORT = /dev/tty.usbserial-1420

PREFIX = arm-none-eabi-
CC = $(PREFIX)gcc
AS = $(PREFIX)as
CP = $(PREFIX)objcopy
LD = $(PREFIX)ld.bfd
OD = $(PREFIX)objdump
SZ = $(PREFIX)size

BIN = $(CP) -O binary

CPU = -mcpu=cortex-m3
MCU = $(CPU) -mthumb -g

C_INCLUDES = -IInc
CFLAGS = $(MCU) $(C_INCLUDES)

LDSCRIPT = blinky.ld
LDFLAGS = -T $(LDSCRIPT)

ODFLAGS = -S -marm -Mforce-thumb
ODFLAGS1 = -x --syms

all: $(BUILD_DIR)/$(TARGET).bin $(BUILD_DIR)/$(TARGET).asm $(BUILD_DIR)/$(TARGET).dmp

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

$(BUILD_DIR)/%.bin: $(BUILD_DIR)/%.elf | $(BUILD_DIR)
	$(BIN) $< $@

$(BUILD_DIR)/$(TARGET).asm: $(BUILD_DIR)/$(TARGET).elf | $(BUILD_DIR)
	$(OD) $(ODFLAGS) $< > $@

$(BUILD_DIR)/$(TARGET).dmp: $(BUILD_DIR)/$(TARGET).elf
	$(OD) $(ODFLAGS1) $< > $@
	$(SZ) $<

$(BUILD_DIR):
	mkdir $@

clean:
	-rm -fR $(BUILD_DIR)

flash: $(BUILD_DIR)/$(TARGET).bin
	# st-flash --reset write ./$(BUILD_DIR)/$(TARGET).bin 0x08000000
	$(FLASH) -w $< -v -g 0x0 $(PORT)

openocd:
	openocd -f ../utils/openocd.cfg

telnet:
	telnet localhost 4444

gdb: $(BUILD_DIR)/$(TARGET).elf
	arm-none-eabi-gdb --eval-command="target remote localhost:3333" $<

