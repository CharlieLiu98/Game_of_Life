BUILD_FLAGS = -W -Wall -pedantic 
CC = g++
RM = rm
OUT = *.out *.o

all: a.out

Game.o: Makefile Game.cpp
	$(CC) $(BUILD_FLAGS) -c Game.cpp -o Game.o

ControllingInput.o: Makefile ControllingInput.cpp
	$(CC) $(BUILD_FLAGS) -c ControllingInput.cpp -o ControllingInput.o

a.out: Makefile ControllingInput.o Game.o main.cpp
	$(CC) $(BUILD_FLAGS) ControllingInput.o Game.o main.cpp -o a.out

clean:
	$(RM) $(OUT)