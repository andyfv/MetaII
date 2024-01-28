tests
testFull
	| stackFrame |
	stackFrame := StackFrame new: 5.
	
	self assert: (stackFrame at: 1) equals: nil.
	self assert: (stackFrame at: 2) equals: nil.
	self assert: (stackFrame at: 3) equals: nil.
	self assert: (stackFrame at: 4) equals: nil.
	self assert: (stackFrame at: 5) equals: nil.
	
	stackFrame at: 1 put: 1.
	stackFrame at: 2 put: 2.
	stackFrame at: 3 put: 3.
	stackFrame at: 4 put: 'four'.
	stackFrame at: 5 put: 5.
	
	self assert: (stackFrame at: 1) equals: 1.
	self assert: (stackFrame at: 2) equals: 2.
	self assert: (stackFrame at: 3) equals: 3.
	self assert: (stackFrame at: 4) equals: 'four'.
	self assert: (stackFrame at: 5) equals: 5.