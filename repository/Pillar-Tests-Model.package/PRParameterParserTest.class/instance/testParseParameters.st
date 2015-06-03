tests-parsing
testParseParameters
	| wiki expectedParameters |
	wiki := 'a=1|b=2|c'.
	expectedParameters := Dictionary 
	with: 'a' -> '1'
	with: 'b' -> '2'
	with: 'c' -> nil.
	self assert: (PRParameterParser parse: wiki) equals: expectedParameters