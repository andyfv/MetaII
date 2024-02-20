A compiler-compiler based on the original Meta II from Dewey Val Schorre. 

Responsibility: what I do, what I know.
	1) Read the input code
	2) Interpret and translate to the Meta II interpreter code 

Public API and Key Messages:

- startCompile

Example: 
	meta2 := Meta2 new.
	meta2 startCompile.

Internal Representation and Key Implementation Points:

   - Instance Variables:

	exitlevel:		<Object>
	gnLabel:		<Object>
	input:		<Object>
	inputIndex:		<Object>
	interpreter:		<Object>
	margin:		<Object>
	opCodeTable:		<Object>
	outStr:		<Object>
	output:		<Object>
	pflag:		<Object>
	programCounter:		<Object>
	stack:		<Object>
	stringArg:		<Object>
	symbolArg:		<Object>
	token:		<Object>


    Implementation Points