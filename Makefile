
CC = gcc
CFLAGS = -Wall
LDFLAGS = -lfl -ly

SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

all: $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -rf $(OBJ)
