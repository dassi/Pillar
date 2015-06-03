tests
testParametersHaveSize
	| instance |
	instance := PRMockForParameters new parameters: (PRParameterParser parse: self parametersAccepted).
	self should: [ PRMockForParameters parameters: instance parameters haveSize: 3 ] raise: Error.
	self should: [ PRMockForParameters parameters: instance parameters haveSize: 1 ] raise: Error.
	self shouldnt: [ PRMockForParameters parameters: instance parameters haveSize: 2 ] raise: Error