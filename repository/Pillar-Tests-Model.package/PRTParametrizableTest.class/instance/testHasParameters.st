tests
testHasParameters
	| instance |
	instance := PRMockForParameters new parameters: (PRParameterParser parse: self parametersAccepted).
	self assert: instance hasParameters