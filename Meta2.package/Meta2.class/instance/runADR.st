op codes
runADR
	self gnLabel: 1.
	self inp: 1.
	self margin: 0.
	self stackFrame: 0.
	
	self stack at: (self stackFrame * self stackFrameSize + 1) put: 0.
	self stack at: (self stackFrame * self stackFrameSize + 2) put: 0.
	self stack at: (self stackFrame * self stackFrameSize + 3) put: -1.
	self stack at: (self stackFrame * self stackFrameSize + 4) put: self symbolArgument.
	self stack at: (self stackFrame * self stackFrameSize + 5) put: self margin.
	
	self findLabel: self symbolArgument.