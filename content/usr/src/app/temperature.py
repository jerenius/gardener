#!/usr/bin/python3

import Adafruit_BMP.BMP085 as BMP085
import os
import paho.mqtt.client as mqtt #import the client1
import time



sensor = BMP085.BMP085()
broker_address=os.environ['mqttbroker'] 
client = mqtt.Client("P1") 
temperature = '{0:0.2f}'.format(sensor.read_temperature())
client.connect(broker_address) 
client.publish("temp/gardener",temperature) 

