private
out: aString
	| col |
	
	(self margin > 0) & (self outStr size = 0)
		ifTrue: [
			col := 0.
			(col < self margin) whileTrue: [ 
				self outStr: self outStr , ' '.
				col := col + 1.
				].
			].	
	
	self outStr: self outStr + aString. 