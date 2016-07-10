#!/usr/bin/python

import RPi.GPIO as GPIO
import time

# to use Raspberry Pi board pin numbers
GPIO.setmode(GPIO.BOARD)

GPIO.setwarnings(False)

# set up GPIO output channel, we set GPIO4 (Pin 7) to OUTPUT
GPIO.setup(29, GPIO.OUT)
GPIO.setup(31, GPIO.OUT)
GPIO.setup(32, GPIO.OUT)
GPIO.setup(33, GPIO.OUT)
GPIO.setup(35, GPIO.OUT)
GPIO.setup(37, GPIO.OUT)

#GPIO.output(29,GPIO.LOW)
#GPIO.output(31,GPIO.LOW)
#GPIO.output(32,GPIO.LOW)
GPIO.output(33,GPIO.LOW)
#GPIO.output(35,GPIO.LOW)
#GPIO.output(37,GPIO.LOW)

# blink GPIO4 (Pin 7) 50 times
GPIO.output(33,GPIO.HIGH)
