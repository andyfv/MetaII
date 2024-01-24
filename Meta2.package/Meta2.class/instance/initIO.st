compiler
initIO
	self stack: (OrderedCollection new: 600).
	self inbuf: inputCompiler.
	self ic: self inputCode.
	self outbuf: ''.
	self outStr: '\t'.