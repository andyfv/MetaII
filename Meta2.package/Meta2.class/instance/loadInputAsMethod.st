IO
loadInputAsMethod
	"Temporary solution to load the input code and add it as a method"
	| inputText |
	inputText := self loadInput.
	self class 	compile: ('inputCode ^ {1}' format: { inputText })
					classified: #(IO).