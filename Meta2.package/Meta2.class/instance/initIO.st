compiler
initIO
	self stack: (OrderedCollection new: 600).
	self inbuf: inputCompiler.
	self ic: self loadInput.
	self outbuf: ''.
	self outStr: '\t'.