compiler
compiler 
	
	^
	'.SYNTAX PROGRAM
	
	PROGRAM = 
		''.SYNTAX'' .ID
				.OUT(.LB ''//''*'' compiler'' .NL)
				.OUT(''compiler'' .NL)
				.OUT(''| inputBuffer outBuffer input margin gnLabel |'' .NL)
				.OUT(''inputBuffer := self input.'' .NL)
				.OUT(''input 	    := 0.'' .NL)
				.OUT(''outBuffer   := String new. '' .NL)
				.OUT(''margin      := 0.'' .NL)
				.OUT(''gnLabel     := 1.'' .NL)
				.OUT(''self rule''*''.'' .NL)
				.OUT(''self ^ outBuffer.'' .NL)
		$ST
		''.END'' ;
		
	ST = .ID .OUT(.LB ''rule''*'' '' .NL)
			    .OUT(''| rName rLabel |'' .NL)
			    .OUT(''rName := ''*''. '' .NL)
			    .OUT(''rLabel := 0. '' .NL)
			''='' EX1 '';''
			.OUT(''} ;'' .NL .NL) ;
			
	EX1 = EX2 $(''/'' .OUT(''flag ifFalse: ['') EX2 .OUT('' ]'' .NL)
	
	EX2 = (EX3 .OUT(''flag ifTrue: [ '' .NL) 
		 / OUTPUT .OUT(''true ifTrue: [ '' .NL))
		 		$(EX3 .OUT(''flag ifFalse: [ self runBEstfn: rName. ].'' .NL)
		 		/ OUTPUT) 
		.OUT('' ].'' .NL) ;
			
	EX3 = .ID .OUT(''rule''*'''' .NL)
	    / .STRING .OUT(''self runTST(''*'').'' .NL)
	    / ''.ID'' .OUT(''self runID.'' .NL)
	    / ''.NUMBER'' .OUT(''self runNUM.'' .NL)
	    / ''.STRING'' .OUT(''self runSET.'' .NL)
	    / ''('' EX1 '')''
	    / ''.EMPTY'' .OUT(''self runSET.'' .NL)
	    / ''$'' .OUT(''self runSET.'' .NL)
					  .OUT(''flag whileTrue: ['' .NL)
					  EX3
					  .OUT('' ].'' .NL)
					  .OUT(''self runSET.'' .NL) ;
					
	OUTPUT = ''.OUT'' ''('' $OUT1 '')'' ;
	
	OUT1   = ''*'' .OUT(''self runCI.'' .NL)
			  / .STRING .OUT(''self runCL: ''*''.'' .NL)
			  / ''#'' .OUT(''rLabel = 0 ifTrue: [ rLabel := gnLabel. gnLabel := gnLabel + 1 .].'' .NL)
							.OUT(''self runcL: rLabel asString.'' .NL)
			  / ''.NL'' .OUT(''self runextNL.'' .NL)
			  / ''.LB'' .OUT(''self runLB.'' .NL)
			  / ''.TB'' .OUT(''self runextTB.'' .NL)
			  / ''.LM+'' .OUT(''self runextLMI.'' .NL)
			  / ''.LM-'' .OUT(''self runextLMD.'' .NL) ;
			
	.END
 	'