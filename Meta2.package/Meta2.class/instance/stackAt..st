accessing
stackAt: anIndex
	"Return the stack"
	^ self stack at: (self stackFrame * self stackFrameSize + anIndex)