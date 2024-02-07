compiler
init
	self stack: Stack new.
	self input: self i06Semicolon.
	self interpreter: self c04Semicolon.
	self output: String empty.
	self outStr: Character tab asString.
	self programCounter: 1.
	self initOpTable.