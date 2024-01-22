input/output
loadInputAsMethod
	"Temporary solution to load the input code and add it as a method"

	self class 
		compile: ('inputCode ^ ', Character cr asString , self loadInput printString )
		classified: #IO.