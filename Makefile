FILES = main.cpp decode.cpp thumbsim_driver.cpp parse.cpp execute.cpp
UNIX4 = tnewma03@unix4.csc.calpoly.edu
CO = .completeoutput
F = fib
B = bytetest
S0 = shang.O0
s1 = shang.O1
s2 = shang.O2

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

#tests

$(F) :
	./thumbsim -i -d -s -c 256 -f inputs/$(F).sim > myOutputs/my$(F)$(CO)
	diff --text outputs/$(F)$(CO) myOutputs/my$(F)$(CO) > myOutputs/$(F)diff.txt
	cat $(F)diff.txt

$(B) :
	./thumbsim -i -d -s -c 256 -f inputs/$(B).sim > myOutputs/my$(B)$(CO)
	diff --text outputs/$(B)$(CO) myOutputs/my$(B)$(CO) > myOutputs/$(B)diff.txt
	cat $(B)diff.txt

$(S0) :
	./thumbsim -i -d -s -c 256 -f inputs/$(S0).sim > myOutputs/my$(S0)$(CO)
	diff --text outputs/$(S0)$(CO) myOutputs/my$(S0)$(CO) > myOutputs/$(S0)diff.txt
	cat $(S0)diff.tx

$(S1) :
	./thumbsim -i -d -s -c 256 -f inputs/$(S1).sim > myOutputs/my$(S1)$(CO)
	diff --text outputs/$(S1)$(CO) myOutputs/my$(S1)$(CO) > myOutputs$(S1)diff.txt
	cat $(S1)diff.tx

$(S2) :
	./thumbsim -i -d -s -c 256 -f inputs/$(S2).sim > myOutputs/my$(S2)$(CO)
	diff --text outputs/$(S2)$(CO) myOutputs/my$(S2)$(CO) > myOutputs/$(S2)diff.txt
	cat $(S2)diff.tx

clean:
	rm -rf ./*.o ./thumbsim
