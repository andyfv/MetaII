private
runCLL
	
	self stackFrame: self stackFrame + 1.
	self stack at: (self stackFrame * self stackFrameSize + 0) put: 0.								"GN1"
	self stack at: (self stackFrame * self stackFrameSize + 0) put: 0.								"GN2"
	self stack at: (self stackFrame * self stackFrameSize + 0) put: self pc.						"return pc value"
	self stack at: (self stackFrame * self stackFrameSize + 0) put: self symbolArgument.	"rule name called for errormessage"
	self stack at: (self stackFrame * self stackFrameSize + 0) put: self margin.				"left margin"
			
	self findLabel: self symbolArgument.