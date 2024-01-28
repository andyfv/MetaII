tests
testOutOfBounds
	| stackFrame |
	stackFrame := StackFrame new: 5.
	
	self assert: (stackFrame at: 1) equals: nil.
	self assert: (stackFrame at: 2) equals: nil.
	self assert: (stackFrame at: 3) equals: nil.
	self assert: (stackFrame at: 4) equals: nil.
	self assert: (stackFrame at: 5) equals: nil.
	
	self should: [stackFrame at: 6] raise: SubscriptOutOfBounds.