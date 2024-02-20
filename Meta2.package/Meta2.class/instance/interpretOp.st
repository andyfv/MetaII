compiler
interpretOp
	"The reading of the interpreter op codes is done here.
	We read at the index of the programCounter and extract the op code.
	If the op code exists in the opCodeTable we execute it, otherwise
	return an error"
	| operator operatorIndex |
	
	self programCounterIncrement.
	
	operator 			:= String empty.
	operatorIndex 	:= self programCounter.
	
	[ (operatorIndex < self interpreter size) and: 
	[ (self interpreter at: operatorIndex) isDigit or: 
	[ (self interpreter at: operatorIndex) isLetter ]
	]] whileTrue: [ 
		operator := operator , (self interpreter at: operatorIndex ) asString. 
		operatorIndex := operatorIndex + 1 
		].

	opCodeTable at: operator 
				ifPresent: [ :operation | operation value ]
				ifAbsent: [ 
					Transcript show: 'ERROR: unknown interpreter op \' , operator , '\'.
					self exitlevel: true. 
					]