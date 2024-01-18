private
runGN2
	| gn2 |
	gn2 := self stackFrame * stackFrameSize + 1.
	(self stack at: gn2) = 0
		ifTrue: [ 
			self stack at: gn2 put: self gnLabel.
			self gnLabel: self gnLabel + 1.
			].
		self out: ('L' , self stack at: gn2 )
		