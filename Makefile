all: main.app test

main.app: main.o
	@g++ build/main.o -o build/main.app && echo 'Project built.'

main.o: src/main.cpp
	@g++ -c src/main.cpp -o build/main.o

main_test.app: main_test.o
	@g++ build/main_test.o -o build/main_test.app && echo 'Tests built.'

main_test.o: src/main_test.cpp
	@g++ -c src/main_test.cpp -o build/main_test.o

run: main.app
	@./build/main.app

test: main_test.app
	@./build/main_test.app && echo 'Tests passed!' || echo 'Tests failed!'

clean:
	@rm ./build/*.o ./build/*.app

