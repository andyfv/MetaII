op codes
runR
	
	self stackFrame = 0 ifTrue: [ self runEND. ^ self ].
	
	"Return the pc"
	self programCounter: (self stack at: self stackFrame * self stackFrameSize + 3).
		
	self margin: (self stack at: self stackFrame * self stackFrameSize + 5).
	
	"Pop the stackframe"
	self stackFrame: self stackFrame - 1. 