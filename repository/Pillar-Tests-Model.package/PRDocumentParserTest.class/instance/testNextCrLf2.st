tests
testNextCrLf2
	parser initializeOn: ((String with: Character lf) , 'a') readStream.
	self assert: parser nextLine = ''.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine isNil.
	parser initializeOn: ((String with: Character cr) , 'a') readStream.
	self assert: parser nextLine = ''.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine isNil.
	parser initializeOn: ((String with: Character cr) , (String with: Character lf) , 'a') readStream.
	self assert: parser nextLine = ''.
	self assert: parser nextLine = 'a'.
	self assert: parser nextLine isNil