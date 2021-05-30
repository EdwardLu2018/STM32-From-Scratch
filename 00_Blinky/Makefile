TOOLS = arm-none-eabi

AS = $(TOOLS)-as
CC = $(TOOLS)-gcc -mcpu=cortex-m3 -mthumb -g
LD = $(TOOLS)-ld.bfd
OBJCOPY = $(TOOLS)-objcopy
SZ = $(TOOLS)-size

TARGET = main
BOOT = boot
BUILD_DIR = build

all: $(BUILD_DIR)/$(TARGET).bin

$(BUILD_DIR)/$(TARGET).bin: $(BUILD_DIR)/$(TARGET).elf | $(BUILD_DIR)
	$(OBJCOPY) $< $@ -O binary

$(BUILD_DIR)/$(TARGET).elf: $(BUILD_DIR)/$(BOOT).o $(BUILD_DIR)/$(TARGET).o | $(BUILD_DIR)
	$(LD) -T blink.lds -o $@ $< $(BUILD_DIR)/$(TARGET).o
	$(SZ) $@

$(BUILD_DIR)/$(BOOT).o: $(BOOT).S | $(BUILD_DIR)
	$(AS) $< -o $@

$(BUILD_DIR)/$(TARGET).o: $(TARGET).c | $(BUILD_DIR)
	$(CC) -c $< -o $@

$(BUILD_DIR):
	@mkdir $@

clean:
	@rm -rf $(BUILD_DIR)

flash:
	st-flash --reset write ./$(BUILD_DIR)/$(TARGET).bin 0x08000000

openocd:
	openocd -f openocd.cfg

telnet:
	telnet localhost 4444

gdb: $(BUILD_DIR)/$(TARGET).elf
	arm-none-eabi-gdb --eval-command="target remote localhost:3333" $<
