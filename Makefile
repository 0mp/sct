# Public domain, do as you wish.
PREFIX ?= /usr/local
MANPREFIX ?= ${PREFIX}

X11INC = /usr/local/include
X11LIB = /usr/local/lib
INCS = -I${X11INC}
LIBS = -L${X11LIB}

SRC = sct.c
CFLAGS += -std=c99 -Wall ${INCS}
LDFLAGS += -lX11 -lXrandr ${LIBS}

all: sct

sct: sct.c
	@${CC} -o sct sct.c ${CFLAGS} ${LDFLAGS}

install: all
	@mkdir -p "${DESTDIR}${PREFIX}/bin"
	@install -m 755 sct "${DESTDIR}${PREFIX}/bin"
	@mkdir -p "${DESTDIR}${MANPREFIX}/man/man1"
	@install -m 444 sct.1 "${DESTDIR}${MANPREFIX}/man/man1"

install-strip: install
	@strip "${DESTDIR}${PREFIX}/bin/sct"

uninstall:
	@rm -f "${DESTDIR}${PREFIX}/bin/sct"
	@rm -f "${DESTDIR}${MANPREFIX}/man1/sct.1"

clean:
	@rm -f sct

.PHONY: all install install-strip uninstall
