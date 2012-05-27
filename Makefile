BIN=bin/
SRC=src/
LIB=lib/
OBJ=obj/

all:	${BIN}lonely-arm

${BIN}lonely-arm:	${OBJ}game.o ${OBJ}arm.o ${OBJ}platform.o
	@echo -e "Compiling obeject files:"
	g++ -o ${BIN}lonely-arm ${OBJ}platform.o ${OBJ}game.o ${OBJ}arm.o -lGLU -lGL -lglut

${OBJ}game.o:	${SRC}game.cpp
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -o ${OBJ}game.o ${SRC}game.cpp
	
${OBJ}arm.o:	${SRC}arm.cpp
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -o ${OBJ}arm.o ${SRC}arm.cpp

${OBJ}platform.o:	${SRC}platform.cpp
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -o ${OBJ}platform.o ${SRC}platform.cpp

clean:	
	@rm -rf ${OBJ}*.o
	@rm -f ${BIN}lonely-arm

run:	all
	./${BIN}lonely-arm