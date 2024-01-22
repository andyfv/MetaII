private
findLabel: aString
	| found |
	
	self programCounter: (self ic indexOf: ('\n' , aString , '\n')).
	found := (self programCounter >= 0).
	
	found ifFalse: [ self programCounter: (self ic indexOf:('\n', aString , '\r')) ].
	
	found := (self programCounter >= 0).
	
	found ifTrue: [ self programCounter: (self programCounter , aString size + 1) ].
	
	found ifFalse: [ self error: 'label ' , aString , ' not found'. self exitlevel: true. ].
	