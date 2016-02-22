#!/bin/sh

# Turn GPIO 9 (Relay for controlling the monitor) ON
# Set up GPIO 9 and set to output
echo "9" > /sys/class/gpio/export
echo "out" > /sys/class/gpio/gpio9/direction

# Write output
echo "1" > /sys/class/gpio/gpio9/value

# Clean up
#echo "9" > /sys/class/gpio/unexport
