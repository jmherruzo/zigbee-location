CONTIKI_PROJECT = where_slave where_master blink

DEFINES+=MODEL_CC2531=1

all: $(CONTIKI_PROJECT)

CONTIKI = ../contiki-sensinode
include $(CONTIKI)/Makefile.include
