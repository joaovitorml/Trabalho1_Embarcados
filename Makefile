
# CC = gcc
# LDFLAGS =
# BLDDIR = .
# INCDIR = $(BLDDIR)/inc
# SRCDIR = $(BLDDIR)/src
# OBJDIR = $(BLDDIR)/obj
# CFLAGS = -c -Wall -I$(INCDIR) -lwiringPi -lbcm2835
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
	gcc ./src/main.c ./src/bme280.c  -I ./inc  -lwiringPi -lbcm2835 -o ./bin/bin
run:
	./bin/bin /dev/i2c-1
clean:
	-rm -f $(OBJDIR)/*.o $(EXE)
	rm -v ./bin/bin
	rm -v arquivo.csv
