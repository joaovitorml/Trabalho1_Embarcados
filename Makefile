
# CC = gcc
# LDFLAGS =
# BLDDIR = .
# INCDIR = $(BLDDIR)/inc
# SRCDIR = $(BLDDIR)/src
# OBJDIR = $(BLDDIR)/obj
# CFLAGS = -c -Wall -I -lwiringPi $(INCDIR)
# SRC = $(wildcard $(SRCDIR)/*.c)
# OBJ = $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRC))
# EXE = bin/bin

# all: clean $(EXE) 
    
# $(EXE): $(OBJ) 
# 	$(CC) $(LDFLAGS) $(OBJDIR)/*.o -o $@ 

# $(OBJDIR)/%.o : $(SRCDIR)/%.c
# 	@mkdir -p $(@D)
# 	$(CC) $(CFLAGS) $< -o $@

# clean:
# 	-rm -f $(OBJDIR)/*.o $(EXE)


build:
	gcc ./src/main.c ./src/bme280.c -I ./inc  -lwiringPi -o ./bin/bin
run:
	./bin/prog /dev/i2c-1
clean:
	-rm -f $(OBJDIR)/*.o $(EXE)
	rm -v ./bin/prog
	rm -v arquivo.csv
