CONTIKI_PROJECT = cc2531-usb-demo blink example-neighbors

DEFINES+=MODEL_CC2531=1

all: $(CONTIKI_PROJECT)

CONTIKI = ../contiki-sensinode
include $(CONTIKI)/Makefile.include
