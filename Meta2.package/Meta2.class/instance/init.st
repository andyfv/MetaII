compiler
init
	self stack: Stack new.
	self input: self inputCode.
	self interpreter: self interpreterCode.
	self output: String empty.
	self outStr: Character tab asString.
	self programCounter: 1.
	self initOpTable.