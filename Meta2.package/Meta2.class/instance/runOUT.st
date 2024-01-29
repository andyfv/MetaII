op codes
runOUT
	self output: (self output , self outStr , Character cr asString).
	self outStr: Character tab asString.
		