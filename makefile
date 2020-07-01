libhello.o:libhello.c
	gcc -c -fPIC libhello.c

libdemshare.so:libhello.o
	gcc -shared -o libdemshare.so libhello.o

main: demo_use.c libdemshare.so
	gcc -o main demo_use.c libdemoshare.so
