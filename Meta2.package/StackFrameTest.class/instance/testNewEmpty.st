tests
testNewEmpty
	| stackFrame |
	stackFrame := StackFrame new.
	
	self assert: (stackFrame isEmpty).
	self should: [ stackFrame at: 1 ] raise: Error.