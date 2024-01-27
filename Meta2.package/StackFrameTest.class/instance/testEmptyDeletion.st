tests
testEmptyDeletion
	"Test if the slot to be updated. If the slot 
	does not exist yet, create it and assign the value"
	
	| stackFrame |
	stackFrame := StackFrame new.
	
	self assert: (stackFrame size) equals: 0.
	self should: [ stackFrame at: #gn1 ] raise: Error.

	"Try to delete an association that is not there"
	self should: [stackFrame deleteAt: #gn1] raise: Error.
	
	"Should not change the stackFrame"
	self assert: (stackFrame size) equals: 0.
	self should: [ stackFrame at: #gn1 ] raise: Error.
	