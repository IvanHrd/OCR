# Makefile

CC = gcc
CPPFLAGS =
CFLAGS = -Wall -Wextra -O3 `pkg-config --cflags sdl2`
LDFLAGS =
LDLIBS = `pkg-config --libs sdl2` -lm

all: base

SRC = base.c 
OBJ = ${SRC:.c=.o}
EXE = ${SRC:.c=}

base: base.o

.PHONY: clean

clean:
	${RM} ${OBJ}
	${RM} ${EXE}

# END
