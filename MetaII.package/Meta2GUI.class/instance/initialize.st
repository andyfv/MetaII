initialization
initialize

	super initialize.
	
	compiler := Meta2 new.
	
	inputWindow 	:= RubScrolledTextMorph new.
	codeWindow 	:= RubScrolledTextMorph new.
	outputWindow 	:= RubScrolledTextMorph new.
	
	
	"Change the size"
	self extent: 400 @ 200.
	self borderColor: Color black.
	self borderWidth: 2.
	self backgroundColor: (Color r: 255 g: 247 b: 194 alpha: 1.0).