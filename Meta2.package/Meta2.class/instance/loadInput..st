input/output
loadInput: fileName
	^ fileName asFileReference readStreamDo: [ :stream | stream upToEnd ].