test - loading
testLoadInputCodeAsMethod
	"Test that the loaded input code is in the class method dictionary
	and that it is not empty"
	| meta |
	meta := Meta2 new.
	meta loadInputCodeAsMethod.

	self assert: (Meta2 methodDict includesKey: #inputCode).
	self assert: (Meta2 methodDict at: #inputCode) value isNotEmpty.