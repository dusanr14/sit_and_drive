all: diet

diet: main.cpp
	g++ -std=c++14 -lsystemc main.cpp -o main 
valgrind:
	valgrind --tool=callgrind ./diet
	kcachegrind callgrind.out.*
.PHONY: clean
clean:
	rm main
	rm callgrind.out.*
