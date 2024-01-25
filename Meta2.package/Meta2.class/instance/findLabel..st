private
findLabel: aString
	| found |
	
	self programCounter: (self ic findString: (Character lf asString , aString , Character lf asString)).
	found := (self programCounter >= 1).
	
	found ifFalse: [ self programCounter: (self ic findString: (Character cr asString, aString , Character cr asString)) ].
	
	found := (self programCounter >= 1).
	
	found ifTrue: [ self programCounter: (self programCounter + aString size + 1) ].
	
	found ifFalse: [ self error: 'label ' , aString , ' not found'. self exitlevel: true. ].
	