tests
testSize
	| stackFrame |
	stackFrame := StackFrame new: 5.
	
	self assert: (stackFrame size) equals: 5.