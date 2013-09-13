PROG=		arc4random
SRCS+=		arc4random.c
NOMAN=		yes
CFLAGS+=	-Wall
#CFLAGS+=	-DKEYSTREAM_ONLY
#CFLAGS+=	-Werror

arc4random-orig: arc4random-orig.c
test: arc4random arc4random-orig
	./arc4random-orig
	./arc4random

.include <bsd.prog.mk>
