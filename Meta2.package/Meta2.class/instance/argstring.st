private
argstring
	self stringarg: String empty.
	[(self ic at: self programCounter) ~= $']
		whileTrue: [ self programCounterIncrement ].
	self programCounterIncrement.
	[(self ic at: self programCounter) ~= $']
		whileTrue: [ 
			self stringarg: self stringarg , (self ic at: self programCounter) asString.
			self programCounterIncrement.
			].
	self programCounterIncrement.
	