# c_lernen_101
include config.mk

.PHONY: all options build clean


SRC := $(wildcard *.c)
BIN := $(SRC:%.c=%)
OBJ := ${SRC:.c=.o}

all: options build

options:
	@echo "This build options:"
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "LNKFLAGS = ${LNKFLAGS}"
	@echo "CC       = ${CC}"

build: ${BIN}

%: %.o
	echo "Checking ... building binary:"
	${CC} ${LNKFLAGS} $< -o $@

%.o: %.c
	echo "Creating object ..."
	${CC} -c {CFLAGS} $<

clean:
	@echo "Cleaning up ..."
	rm -rvf *.o ${BIN}

