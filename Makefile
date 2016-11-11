

default: test

sparsepp.h:
	curl -O https://raw.githubusercontent.com/greg7mdp/sparsepp/master/sparsepp.h

test: Makefile sparsepp.h insertion_speed.cpp
	$(CXX) -O3 -std=c++14 -DNDEBUG -I./ insertion_speed.cpp -o test
	./test

clean:
	rm -f ./test
