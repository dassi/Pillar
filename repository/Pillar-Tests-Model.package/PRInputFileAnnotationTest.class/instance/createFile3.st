running
createFile3
	| stream |
	stream := (directory / 'timoleon.pillar') writeStream.
	stream nextPutAll: '!!Hello World' , Smalltalk os pillarLineEnding , 'test'.
	stream close