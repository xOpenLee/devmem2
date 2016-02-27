# a Makefile devmem.c

CC=gcc
CFLAGS=-c -Wall -g
LDFLAGS=
SRC=devmem2.c
OBJ=$(SRC:.c=.o)
EXE=devmem2

all: $(SRC) $(EXE)
	
$(EXE): $(OBJ)
	$(CC) $(LDFLAGS) $(OBJ) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f $(EXE) $(EXE).o
