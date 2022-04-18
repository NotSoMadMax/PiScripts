#!/usr/bin/env python3

from gpiozero import OutputDevice

# Reference https://siminnovations.com/wiki/index.php?title=General_Raspberry_Pi_I/O_pin_explanation
FAN_PIN_NUM = 4

# TODO: The power pins cannot be turned off.
# Need to add transistor to the ground end to control the fan.
fan = OutputDevice(4)
fan.off()
fan.on()