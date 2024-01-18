compiler
startIntCompile
	self initIO.
	self pc: 0.
	self interpreter.
	
	Transcript show: self outbuf.
	Transcript show: 'Done.'