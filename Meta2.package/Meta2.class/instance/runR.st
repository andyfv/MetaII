op codes
runR
"	Mnemonic	: R
	Purpose		: Return from subroutine
	Action		: Return from CLL call to location on the top of the stack and 
						pop the stackframe"
	
	self stack isEmpty ifTrue: [ self runEND. ^ self ].
	
	"Return the pc"
	self programCounter: (self stack top at: 3).
		
	self margin: (self stack top at: 5).
	
	"Pop the stackframe"
	self stack pop.