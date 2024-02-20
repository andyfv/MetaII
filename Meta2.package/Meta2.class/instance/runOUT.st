op codes
runOUT
"	Mnemonic	: Out
	Purpose		: Output record
	Action		: Output the runtime variable output"
			
	self output: (self output , self outStr , Character cr asString).
	self outStr: Character tab asString.
		