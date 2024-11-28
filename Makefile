CC      = clang
CFLAGS  = -g -Wall
RM      = rm -f
LIB	= -l sqlite3
SRC 	= src/*.c

default: all

all: bdd placement

bdd: create.sql scheme.sql
	./setup.sh

placement: main.c src/*
	$(CC) $(CFLAGS) -o placement main.c $(SRC) $(LIB)

clean:
	$(RM) placement
	$(RM) bdd.sqlite
