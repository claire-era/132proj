# 132 Project 
Era-Marabe-Mataya-Villanueva

Update as of May 3, 2019: 2:15 AM

Current progress: reading of file contents to system.

To execute:
1. Open terminal and move to the directory of 'input2.txt' input file and 'main.vhdl'.
2. Perform the following:
	-a --ieee=synopsys main.vhdl
 	-e --ieee=synopsys main
 	-r --ieee=synopsys main --vcd=output.vcd



Notes:

- separate into operand - dest - src - flag - src
- apply fde using component based.
- apply structural inside main
- apply behavioral per component

- aim: run at least 1 instruction
- in decode: use flags. 