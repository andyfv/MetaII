op codes
runOUT
	self outbuf: (self outbuf , self outStr , Character cr asString).
	self outStr: Character tab asString.
		