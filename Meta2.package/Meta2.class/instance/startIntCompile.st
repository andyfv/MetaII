compiler
startIntCompile
	self initIO.
	self programCounter: 1.
	self interpreter.
	self saveOutputAsMethod.