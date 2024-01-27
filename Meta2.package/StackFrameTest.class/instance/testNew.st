tests
testNew
	| stackFrame |
	stackFrame := StackFrame new.
	
	stackFrame add: #gn1 withValue: 0. 
	
	self assert: (stackFrame size) equals: 1.
	self assert: (stackFrame at: #gn1) equals: 0.
	
	self should: [ stackFrame at: 2 ] raise: Error.