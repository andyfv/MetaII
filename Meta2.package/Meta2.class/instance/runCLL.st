op codes
runCLL
"	Mnemonic	: CLL AAA
	Purpose		: Call subroutine
	Action		: Call the subroutine AAA stored in the runtime variable symbolArg
						and push a new stackFrame"
		
	self stack push: self newStackFrame.
	
	self stack top at: 1 put: 0.
	self stack top at: 2 put: 0.
	self stack top at: 3 put: self programCounter.
	self stack top at: 4 put: self symbolArg.
	self stack top at: 5 put: self margin.
			
	self findLabel: self symbolArg.