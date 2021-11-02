
CXX = g++
CXXFLAGS =  -g -O2 -std=c++11
CPPFLAGS = -I/usr/include -I/usr/include/hdf5/serial  -I./include/
LIBS = -lhdf5_hl -lhdf5  -lpthread -lsz -lz -ldl -lm  -lhdf5_cpp
LDFLAGS =  -L/usr/lib/x86_64-linux-gnu/hdf5/serial 

## Directory structure
SRC_DIR := src
TST_DIR := tests
INC_DIR := include
OBJ_DIR := build
BIN_DIR := bin

EXEC := $(BIN_DIR)/test_h5 

## Dependencies
DEPS_CXX = $(SRC_DIR)/SM_Maponi.o \
	   $(SRC_DIR)/SM_Standard.o \
	   $(SRC_DIR)/Woodbury.o \
	   $(SRC_DIR)/SMWB.o \
	   $(SRC_DIR)/Helpers.o


## Build tagets
.PHONY: all clean

all: $(EXEC)

clean:
	@rm -rf $(OBJ_DIR) $(SRC_DIR)/*.o $(TST_DIR)/*.o


## Compiling dependencies
.SUFFIXES: .cpp .o


## Linking
$(BIN_DIR)/test_h5: $(DEPS_CXX) $(TST_DIR)/test_h5.o
	$(CXX) $(CPPFLAGS) $(CXXFLAGS) $(TST_DIR)/test_h5.o $(DEPS_CXX) -o $(EXEC) $(LDFLAGS) $(LIBS)

