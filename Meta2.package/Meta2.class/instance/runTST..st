op codes
runTST: aString
	"Needs fixing. Currently if the strings to comapre ends with the same
	character the comparison returns true even though the previous characters
	do not match "

	"Delete initial whitespace"
	self spaces.
	self pflag: true.
	
	(self pflag) ifTrue: 
		[ 1 to: aString size do: [ :i | 
			self pflag: ((aString at: i) copy asUppercase  
								= 
								((self inbuf at: (self inp + (i - 1))) copy asUppercase )).
			].
		].
	
	self pflag ifTrue: [ self inp: self inp + aString size ].