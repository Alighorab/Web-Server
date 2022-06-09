CC = gcc
CFLAGS = -O2 -Wall -I ..
EXCLUDED_CFLAGS = -Wno-format-overflow -Wno-restrict

all: adder

adder: adder.c
	$(CC) $(CFLAGS) $(EXCLUDED_CFLAGS) -o adder adder.c

clean:
	rm -f adder *~
