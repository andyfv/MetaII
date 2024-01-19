compiler
initIO
	self stack: (OrderedCollection new: 600).
	self inbuf: inputCompiler.
	self ic: self compiler.
	self outbuf: ''.
	self outStr: '\t'.