compiler
initIO
	self stack: (OrderedCollection new: 600).
	self inbuf: inputCompiler.
	self ic: codeCompiler.
	self outbuf: ''.
	self outStr: '\t'.