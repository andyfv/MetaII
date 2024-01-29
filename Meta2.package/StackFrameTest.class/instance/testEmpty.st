tests
testEmpty
	"Test new stackframe"
	
	| stackFrame |
	stackFrame := StackFrame new.
	
	self assert: (stackFrame size) equals: 0.