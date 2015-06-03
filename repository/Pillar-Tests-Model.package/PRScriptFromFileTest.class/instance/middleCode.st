helpers
middleCode
	| code |
	code := String new writeStream.
	code
		nextPutAll: '|test|';
		nextPutAll: Smalltalk os pillarLineEnding;
		nextPutAll: 'test := 1.';
		nextPutAll: Smalltalk os pillarLineEnding;
		nextPutAll: 'test := 1+1'.
	^ code contents