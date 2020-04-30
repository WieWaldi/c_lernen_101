# c_lernen_101 version
VERSION = 0.1

# paths
# PREFIX = ${HOME}/.local
# MANPREFIX = ${PREFIX}/share/man

# flags
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
LDFLAGS = -s ${LIBS}
# LNKFLAGS = -lm

# compiler and linker
CC = cc


# Stuff I don't need right now
CPPFLAGS = -DVERSION=\"${VERSION}\"
INCS = -I. -I/usr/include -I${X11INC}
LIBS = -L/usr/lib -lc -L${X11LIB} -lX11
X11INC = /usr/X11R6/include
X11LIB = /usr/X11R6/lib
