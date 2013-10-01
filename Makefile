PROG=		arc4random
SRCS+=		arc4random.c
NOMAN=		yes
CFLAGS+=	-Wall
#CFLAGS+=	-DKEYSTREAM_ONLY
#CFLAGS+=	-Werror

arc4random-orig: arc4random-orig.c
arc4random-salsa: arc4random.c
	cc -o arc4random-salsa -DUSE_SALSA arc4random.c
test: arc4random arc4random-orig arc4random-salsa
	./arc4random-orig
	./arc4random-salsa
	./arc4random
distclean: cleandir
	rm arc4random-orig

.include <bsd.prog.mk>
