op codes
runCLL
	
	self stackFrame: self stackFrame + 1.
	self stack at: (self stackFrame * self stackFrameSize + 1) put: 0.								"GN1"
	self stack at: (self stackFrame * self stackFrameSize + 2) put: 0.								"GN2"
	self stack at: (self stackFrame * self stackFrameSize + 3) put: self programCounter.						"return programCounter value"
	self stack at: (self stackFrame * self stackFrameSize + 4) put: self symbolArgument.	"rule name called for errormessage"
	self stack at: (self stackFrame * self stackFrameSize + 5) put: self margin.				"left margin"
			
	self findLabel: self symbolArgument.