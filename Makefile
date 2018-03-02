# Public domain, do as you wish.
PREFIX ?= /usr/local

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
	@cp -f sct "${DESTDIR}${PREFIX}/bin"
	@chmod 0755 "${DESTDIR}${PREFIX}/bin/sct"

install-strip: install
	@strip "${DESTDIR}${PREFIX}/bin/sct"

uninstall:
	@rm -f "${DESTDIR}${PREFIX}/bin/sct"

clean:
	@rm -f sct

.PHONY: all install install-strip uninstall
