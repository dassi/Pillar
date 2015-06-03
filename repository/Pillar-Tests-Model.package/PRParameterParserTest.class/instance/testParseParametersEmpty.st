tests-parsing
testParseParametersEmpty
	| wiki expectedParameters |
	wiki := '|a||b|'.
	expectedParameters := Dictionary 
	with: 'a' -> nil
	with: 'b' -> nil.
	self assert: (PRParameterParser parse: wiki) equals: expectedParameters