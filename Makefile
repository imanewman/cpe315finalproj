FILES = main.cpp decode.cpp thumbsim_driver.cpp parse.cpp execute.cpp
UNIX4 = tnewma03@unix4.csc.calpoly.edu

all :
	g++ -g $(FILES) -o thumbsim

run :
	./thumbsim -i -d -f inputs/fib.sim

ssh :
	ssh $(UNIX4)

scpf :
	scp ./*/* $(UNIX4):~/cpe315/finalproj

scpm :
	scp *.cpp $(UNIX4):~/cpe315/finalproj

clean:
	rm -rf ./*.o ./thumbsim
