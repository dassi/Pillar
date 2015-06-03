tests-accessing
testEmbedded
	self instance embedded: true.
	self assert: self instance isEmbedded.

	self instance embedded: false.
	self deny: self instance isEmbedded