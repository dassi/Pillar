helpers
headingCode
	| code |
	code := String new writeStream.
	self firstLine timesRepeat: [ code nextPutAll: Smalltalk os pillarLineEnding ].
	^ code contents