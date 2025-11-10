.SUFFIXES: .c .o
CC=gcc
CFLAGS = -Og -I.
OBJS = csapp.o

PROGS = show-bytes

all: $(PROGS)

$(PROGS): %: %.o ../csapp.o
	$(CC) $(CFLAGS) -o $@ $@.o ../csapp.o


../csapp.o:
	$(MAKE) -C .. $(notdir $@)


%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


csapp:
	$(MAKE) -C ..


clean:
	rm -rf $(PROGS) *~


