CFLAGS=-O2 -Wall

COMPILER?=riscv64-unknown-linux-gnu-gcc
CC=$(COMPILER)

targets=benchmark-branch benchmark-core benchmark-thrash benchmark-thrash2 lcg-test
all: $(targets)

clean:
	rm -f $(targets)

.PHONY: clean