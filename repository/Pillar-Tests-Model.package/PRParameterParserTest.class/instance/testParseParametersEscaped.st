tests-parsing
testParseParametersEscaped
	| wiki expectedParameters |
	wiki := '|\|\==1|2=\|\='.
	expectedParameters := Dictionary 
	with: '|=' -> '1'
	with: '2' -> '|='.
	self assert: (PRParameterParser parse: wiki) equals: expectedParameters