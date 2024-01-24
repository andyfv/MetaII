op codes
runGN1
	| gn1 |
	gn1 := self stackFrame * stackFrameSize + 1.
	(self stack at: gn1) = 0
		ifTrue: [ 
			self stack at: gn1 put: self gnLabel.
			self gnLabel: self gnLabel + 1.
			].
		self out: ('L' , self stack at: gn1 )
		