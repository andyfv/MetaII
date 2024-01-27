tests
testEmptyUpdateSlot
	"Test if the slot to be updated. If the slot 
	does not exist yet, create it and assign the value"
	
	| stackFrame |
	stackFrame := StackFrame new.
	
	self assert: (stackFrame size) equals: 0.
	self should: [ stackFrame at: #gn1 ] raise: Error.

	stackFrame at: #gn1 put: 1.
	
	self assert: (stackFrame size) equals: 1.
	self assert: (stackFrame at: #gn1) equals: 1.
	
	self should: [ stackFrame at: 2 ] raise: Error.