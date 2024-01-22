compiler
startIntCompile
	self initIO.
	self programCounter: 1.
	self interpreter.
	
	Transcript show: self outbuf.
	Transcript show: 'Done.'