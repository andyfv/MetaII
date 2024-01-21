op codes
runR
	
	self stackFrame = 0 ifTrue: [ self runEND. ^ self ].
	
	"Return the pc"
	self pc: (self stack at: self stackFrame * self stackFrameSize + 2).
	
	
	self margin: (self stack at: self stackFrame * self stackFrameSize + 4).
	
	"Pop the stackframe"
	self stackFrame: self stackFrame - 1. 