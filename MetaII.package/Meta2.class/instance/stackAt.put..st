accessing
stackAt: anIndex put: anObject
	"Return the stack"
	^ self stack at: (self stackAt: anIndex) put: anObject.