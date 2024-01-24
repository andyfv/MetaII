op codes
runADR
	self gnLabel: 1.
	self inp: 0.
	self margin: 0.
	self stackFrame = 0.
	
	self stack at: (self stackAt: 0) put: 0.
	self stack at: (self stackAt: 1) put: 0.
	self stack at: (self stackAt: 2) put: -1.
	self stack at: (self stackAt: 3) put: self symbolArgument.
	self stack at: (self stackAt: 4) put: self margin.
	
	self findLabel: self symbolArgument.