#!/usr/bin/env bash

TARGET = bcm2835-v4l2-m

KDIR = /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

obj-m += bcm2835-camera.o
obj-m += controls.o
obj-m += mmal-vchiq.o
obj-m += $(TARGET).o

bcm2835-v4l2-m-objs := bcm2835-camera.o controls.o mmal-vchiq.o

all:
	make -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean