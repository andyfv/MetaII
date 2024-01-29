op codes
runR
	
	self stack isEmpty ifTrue: [ self runEND. ^ self ].
	
	"Return the pc"
	self programCounter: (self stack top at: 3).
		
	self margin: (self stack top at: 5).
	
	"Pop the stackframe"
	self stack pop.