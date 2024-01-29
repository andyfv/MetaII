compiler
startIntCompile
	self init.
	self interpreterLoop.
	self saveOutputAsMethod.