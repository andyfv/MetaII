tests
testUpdateSlot
	| stackFrame |
	stackFrame := StackFrame new: 5.
	
	self assert: (stackFrame at: 1) equals: nil.
	self assert: (stackFrame at: 2) equals: nil.
	self assert: (stackFrame at: 3) equals: nil.
	self assert: (stackFrame at: 4) equals: nil.
	self assert: (stackFrame at: 5) equals: nil.
	
	stackFrame at: 1 put: 1. 
	
	self assert: (stackFrame at: 1) equals: 1.
	self assert: (stackFrame at: 2) equals: nil.
	self assert: (stackFrame at: 3) equals: nil.
	self assert: (stackFrame at: 4) equals: nil.
	self assert: (stackFrame at: 5) equals: nil.
	
	stackFrame at: 1 put: 2.
	
	self assert: (stackFrame at: 1) equals: 2.
	self assert: (stackFrame at: 2) equals: nil.
	self assert: (stackFrame at: 3) equals: nil.
	self assert: (stackFrame at: 4) equals: nil.
	self assert: (stackFrame at: 5) equals: nil.
	