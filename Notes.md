Create a startup file (a startup file is a small, crucial piece of code that runs immediately after the microcontroller is powered on or reset, and just before the main())
	Its primary purpose is to prepare the hardware and software environment so that your C/C++ application code can execute correctly. 
	Add the necessary directives ( what are the directives.)
	
	
	
	
	
	
	
We have have shown that it is possible to write the main code file using both C and S (assembly) with the setup file. In the setup file, we just need to specify the entry function.


#### ResetHandler
	This is an important piece of code that is normally found in the startup file, it is the code that is executed whenever your board resets. If we are going to write a code hat does not make use of the startup file, then we need to have the reset handler in our main code.
	
	Without this piece of code, the mcu will crash because it depends on it, also this is due to the behaviour of the linker script.
	THe linker script links the various source files that our firmware would have into 1 executable file. The goal of the linker script is to link the various files and merge the various memory sections to similar ones which will exist in one file. It also indicates the starting point of the program, and inside it it is indicated that the starting point is the reset handler. The extension for the linker script is ld.
	
	


COMPUTE IN IT'S SIMPLEST FORM (Consists of the the processor, the memory and the bus. The memory stores the data and the code. The processor fetches data and instruction from the memory and executes them.


One Hex digit gives s 4 binary digit.
A5E9
A(1010) 5(0101) E(1110) 9(1001)


INSTRUCTION SETS
