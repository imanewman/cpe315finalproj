FILES = main.cpp decode.cpp thumbsim_driver.cpp parse.cpp execute.cpp
UNIX4 = tnewma03@unix4.csc.calpoly.edu
CO = .completeoutput
MO = myOutputs/
F = fib
B = bytetest
S0 = shang.O0
S1 = shang.O1
S2 = shang.O2

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
	./thumbsim -i -d -s -c 256 -f inputs/$(F).sim > $(MO)my$(F)$(CO)
	diff --text outputs/$(F)$(CO) $(MO)my$(F)$(CO) > $(MO)$(F)diff.txt
	cat $(MO)$(F)diff.txt

$(B) :
	./thumbsim -i -d -s -c 256 -f inputs/$(B).sim > $(MO)my$(B)$(CO)
	diff --text outputs/$(B)$(CO) $(MO)my$(B)$(CO) > $(MO)$(B)diff.txt
	cat $(MO)$(B)diff.txt

O0 :
	./thumbsim -i -d -s -c 256 -f inputs/$(S0).sim > $(MO)my$(S0)$(CO)
	diff --text outputs/$(S0)$(CO) $(MO)my$(S0)$(CO) > $(MO)$(S0)diff.txt
	cat $(MO)$(S0)diff.txt

O1 :
	./thumbsim -i -d -s -c 256 -f inputs/$(S1).sim > $(MO)my$(S1)$(CO)
	diff --text outputs/$(S1)$(CO) $(MO)my$(S1)$(CO) > $(MO)$(S1)diff.txt
	cat $(MO)$(S1)diff.txt

O2 :
	./thumbsim -i -d -s -c 256 -f inputs/$(S2).sim > $(MO)my$(S2)$(CO)
	diff --text outputs/$(S2)$(CO) $(MO)my$(S2)$(CO) > $(MO)$(S2)diff.txt
	cat $(MO)$(S2)diff.txt

clean:
	rm -rf ./*.o ./thumbsim
