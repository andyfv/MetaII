private
argstring
	self stringarg: ''.
	((self ic at: self programCounter) ~= '\''')
		whileTrue: [ self programCounter: self programCounter + 1 ].
	self programCounter: self programCounter + 1.
	(self ic at: self programCounter) ~= '\'''
		whileTrue: [ 
			self stringarg: self stringarg , (self ic at: self programCounter).
			self programCounter: self programCounter + 1.
			].
	self programCounter: self programCounter + 1.
	