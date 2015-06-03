tests
testHasParameter
	| instance |
	instance := PRMockForParameters new parameters: (PRParameterParser parse: self parametersAccepted).
	self assert: (instance hasParameter: 'bar').
	self deny: (instance hasParameter: 'Timoleon')