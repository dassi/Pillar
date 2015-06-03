tests-comparing
testEqualEmbedded
	self deny: (self actualClass new embedded: false; yourself) = (self actualClass new embedded: true; yourself)