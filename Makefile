all: main.app

main.app: main.o
	@g++ build/main.o -o build/main.app

main.o: src/main.cpp
	@g++ -c src/main.cpp -o build/main.o

run: main.app
	@./build/main.app

clean:
	@rm ./build/*.o ./build/*.app

test: run
