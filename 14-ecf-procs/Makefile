.SUFFIXES:
CC=gcc
CFLAGS = -g -O2 -I.
LDLIBS = -lpthread

PROGS = fork forks

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


