private
findLabel: aString
	| found |
	
	self pc: (self ic indexOf: ('\n' , aString , '\n')).
	found := (self pc >= 0).
	
	found ifFalse: [ self pc: (self ic indexOf:('\n', aString , '\r')) ].
	
	found := (pc >= 0).
	
	found ifTrue: [ self pc: (self pc , aString size + 1) ].
	
	found ifFalse: [ self error: 'label ' , aString , ' not found'. self exitlevel: true. ].
	