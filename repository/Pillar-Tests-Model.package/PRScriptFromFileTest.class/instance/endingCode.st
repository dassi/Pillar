helpers
endingCode
	| code |
	code := String new writeStream.
	code nextPutAll: Smalltalk os pillarLineEnding.
	code nextPut: Character tab.
	^ code contents