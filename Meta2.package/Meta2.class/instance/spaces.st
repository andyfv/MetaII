private
spaces
	"Delete initial whitespace"
	
	[ ((self inbuf at: self inp) = Character space) 
	| ((self inbuf at: self inp) = Character cr)
	| ((self inbuf at: self inp) = Character lf) 
	| ((self inbuf at: self inp) = Character tab)
	] whileTrue: [ self inp: self inp + 1 ].