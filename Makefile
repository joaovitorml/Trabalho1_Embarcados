build:
	gcc ./src/main.c ./inc/bme280.c -I ./inc -I ./inc/ -IwiringPi -o ./bin/prog
run:
	./bin/prog /dev/i2c-1
clean:
	rm -v ./bin/prog
	rm -v arquivo.csv
