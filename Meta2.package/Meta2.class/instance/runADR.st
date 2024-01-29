op codes
runADR
	self inputIndex: 1.
	self gnLabel: 1.
	self margin: 0.
	
	self stack push: self newStackFrame.
	
	self stack top at: 1 put: 0.
	self stack top at: 2 put: 0.
	self stack top at: 3 put: -1.
	self stack top at: 4 put: self symbolArg.
	self stack top at: 5 put: self margin.
	
	self findLabel: self symbolArg.