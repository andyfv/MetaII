private
argstring
	self stringarg: ''.
	((self ic at: self pc) ~= '\''')
		whileTrue: [ self pc: self pc + 1 ].
	self pc: self pc + 1.
	(self ic at: self pc) ~= '\'''
		whileTrue: [ 
			self stringarg: self stringarg , (self ic at: self pc).
			self pc: self pc + 1.
			].
	self pc: self pc + 1.
	