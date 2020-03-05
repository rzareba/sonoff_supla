#!/bin/bash

echo "start flashing procedure"
sudo esptool.py --port /dev/ttyUSB0 --baud 115200 write_flash --flash_mode dout 0x00000 boot_v1.5.bin 0x01000 sonoff_mini.bin 0xfc000 esp_init_data_default.bin 
echo "finished"
