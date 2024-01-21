compiler
startIntCompile
	self initIO.
	self pc: 1.
	self interpreter.
	
	Transcript show: self outbuf.
	Transcript show: 'Done.'