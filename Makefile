
# Makefile for f2022, ecs36b
#
# g++ -std=c++14 test_GPS.cpp GPS.cpp -o test_GPS
#
# example: $ ./test_GPS 48.88 2.3

CC 	= g++ -std=c++14
CFLAGS 	= -g -I/opt/homebrew/include
LDFLAGS = -L//opt/homebrew/lib -I/opt/homebrew/include -ljsoncpp -lmicrohttpd -ljsonrpccpp-common -ljsonrpccpp-server -lcurl -ljsonrpccpp-client

# rules.
all: 	test_1

#
#

Record.o:	Record.cpp Record.h
	$(CC) -c $(CFLAGS) Record.cpp

GPS.o:		GPS.cpp GPS.h
	$(CC) -c $(CFLAGS) GPS.cpp

JvTime.o:	JvTime.cpp JvTime.h
	$(CC) -c $(CFLAGS) JvTime.cpp

Person.o:	Person.cpp Person.h
	$(CC) -c $(CFLAGS) Person.cpp

Thing.o:	Thing.cpp Thing.h
	$(CC) -c $(CFLAGS) Thing.cpp

test_1.o:	test_1.cpp GPS.h Thing.h Person.h JvTime.h Record.h
	$(CC) -c $(CFLAGS) test_1.cpp

test_1:	GPS.o test_1.o Thing.o Person.o JvTime.o Record.o
	g++ -std=c++14 test_1.o GPS.o Thing.o Person.o JvTime.o Record.o -o test_1 $(LDFLAGS)

clean:
	rm -f *.o *~ core test_1

