loadCode
loadInputCode
"Load input code from a file named input.txt in a subdirectory meta2.
If you want to load your own input code just place the file in the Smalltalk 
image directory update the inputFileName variable"
	| inputFileName |
	inputFileName := 'meta2/input.txt'.
	
	^ self loadFile: inputFileName.