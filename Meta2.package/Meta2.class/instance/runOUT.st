op codes
runOUT
	self outbuf: (self outbuf , self outStr , '\n').
	self outStr: '\t'.
		