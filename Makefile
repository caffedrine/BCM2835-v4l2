#!/usr/bin/env bash

TARGET = bcm2835-camera

KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)
EXTRA_CFLAGS := -I$(shell pwd)/include


obj-m += controls.o
obj-m += mmal-vchiq.o
obj-m += $(TARGET).o

all:
	make -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean