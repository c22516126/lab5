CC = gcc
PROG_NAME ?= something

$(PROG_NAME): something.o
	$(CC) -o $(PROG_NAME) something.o

something.o: something.c
	$(CC) -o something.o -c something.c

.PHONY: clean
clean:
	rm -f *.o
	rm -f $(PROG_NAME)
