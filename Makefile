CC = gcc
CFLAGS = -O2 -Wall -I .
EXCLUDED_CFLAGS = -Wno-format-overflow -Wno-restrict

# This flag includes the Pthreads library on a Linux box.
# Others systems will probably require something different.
LIB = -lpthread

all: tiny cgi

tiny: tiny.c lib.o
	$(CC) $(CFLAGS) $(EXCLUDED_CFLAGS) -o tiny tiny.c lib.o $(LIB)

lib.o: lib.c
	$(CC) $(CFLAGS) -c lib.c

cgi:
	(cd cgi-bin; make)

clean:
	rm -f *.o tiny *~
	(cd cgi-bin; make clean)

