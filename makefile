# All Targets

all: server


# Tool invocations

# Executable "server" depends on the files server.o and 


server: clean bin/Server.o 

	@echo 'Building target: server'

	@echo 'Invoking: C++ Linker'

	g++ -o bin/server bin/Server.o bin/Model.o bin/Main.o 

	@echo 'Finished building target: server'

	@echo ' '


# Depends on the source and header files

bin/Server.o: src/Server.cpp

	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Server.o src/Server.cpp

# Depends on the source and header files

bin/Main.o: src/Main.cpp

	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Main.o src/Main.cpp

# Depends on the source and header files

bin/Model.o: src/Model.cpp

	g++ -g -Wall -Weffc++ -std=c++11 -c -Iinclude -o bin/Model.o src/Model.cpp


#Clean the build directory

clean:
	
	rm -f bin/*

