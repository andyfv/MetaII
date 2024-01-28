tests
testOneSlot
	| stackFrame |
	stackFrame := StackFrame new: 5.
	
	self assert: (stackFrame size) equals: 5.
	self assert: (stackFrame at: 1) equals: nil.
	
	stackFrame at: 1 put: 1. 
	
	self assert: (stackFrame size) equals: 5.
	self assert: (stackFrame at: 1) equals: 1.