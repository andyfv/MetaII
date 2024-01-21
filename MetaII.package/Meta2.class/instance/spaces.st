private
spaces
	"Delete initial whitespace"
	
	[ (inbuf at: inp = ' ')  | (inbuf at: inp = '\n')
	| (inbuf at: inp = '\r') | (inbuf at: inp = '\t')
	] whileTrue: [ inp := inp + 1 ].