private
spaces
	"Delete initial whitespace"
	
	[ ((self input at: self inputIndex) = Character space)
	| ((self input at: self inputIndex) = Character cr)
	| ((self input at: self inputIndex) = Character lf) 
	| ((self input at: self inputIndex) = Character tab)
	] whileTrue: [ self inputIndex: self inputIndex + 1 ].