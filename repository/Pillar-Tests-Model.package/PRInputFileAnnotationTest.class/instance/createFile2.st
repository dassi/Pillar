running
createFile2
	| stream |
	stream := (directory / 'bar.pillar') writeStream.
	stream nextPutAll: '${inputFile:foo.pillar}$' , Smalltalk os pillarLineEnding , '!!Bye World'.
	stream close