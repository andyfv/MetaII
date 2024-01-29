private
out: aString
	| col |
	
	(self margin > 0) & (self outStr isEmpty)
		ifTrue: [
			col := 0.
			(col < self margin) whileTrue: [ 
				self outStr: self outStr , Character space.
				col := col + 1.
				].
			].	
	
	self outStr: (self outStr,  aString). 