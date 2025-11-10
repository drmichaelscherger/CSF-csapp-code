CC = gcc
CFLAGS = -Wall -g
OBJS = csapp.o


.PHONY: all csapp clean

all: csapp 26-parallelism

csapp: csapp.o

26-parallelism:
	(cd 26-parallelism; make)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)
