ESLPATH = /usr/local/src/freeswitch/libs/esl
CFLAGS = -I$(ESLPATH)/src/include
ESLLIB = $(ESLPATH)/.libs

all : myesl.c $(ESLLIB)/libesl.a 
	gcc $(CFLAGS) -o myesl myesl.c  $(ESLLIB)/libesl.a -lpthread
