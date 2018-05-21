.PHONY: all clean

OBJS = Window.obj Board.obj
BIN = Othello.exe

CXXFLAGS += -finput-charset=gbk -municode -O3 -Wall -std=c++11
LDFLAGS += -mwindows

all: ${BIN}

${BIN}: ${OBJS}
	${CXX} ${LDFLAGS} -o $@ $^

%.obj: %.cpp
	${CXX} ${CXXFLAGS} -c -o $@ $^

clean:
	${RM} ${OBJS} ${BIN}
