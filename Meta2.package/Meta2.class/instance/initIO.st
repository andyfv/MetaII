compiler
initIO
	self stack: (Array new: 600).
	self stackFrameSize: 5.
	self inbuf: self inputCode.
	self ic: self interpreterCode.
	self outbuf: String empty.
	self outStr: Character tab asString.