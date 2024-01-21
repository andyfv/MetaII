initialization
initialize

	super initialize.
	
	compiler := Meta2 new.
	
	inputWindow 	:= Meta2InputWindow new.
	codeWindow 	:= Meta2CodeWindow new.
	outputWindow 	:= Meta2OutputWindow new.
		
	self addMorph: inputWindow.
	self addMorph: codeWindow.
	self addMorph: outputWindow. 
	
	
	"Change the size"
	self extent: 400 @ 200.
	self borderColor: Color black.
	self borderWidth: 2.
	"self backgroundColor: (Color r: 255 g: 247 b: 194 alpha: 1.0)."