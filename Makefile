CC=/home/rahul/work/v2x/phase1/sdk/output/host/bin/arm-linux-gnueabihf-gcc
#CFLAGS=-Wall --std=c99
CFLAGS=-Wall
SRC=wsmp.c encode.c decode.c
HDR=wsmp.h encode.h decode.h
OBJS=wsmp.o encode.o decode.o

main: $(SRC) $(HDR)
	$(CC) $(CFLAGS) -c $(SRC)

test: test.c $(OBJS)
	$(CC) $(CFLAGS) test.c $(OBJS) -o test

wireless: wireless.c $(OBJS)
	$(CC) $(CFLAGS) wireless.c $(OBJS) -lpcap -o wireless

clean:
	rm *.o test wireless -rf
