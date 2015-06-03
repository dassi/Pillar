tests
testParseWrongParameters
	| wiki |
	wiki := '${' , self annoteName , ':' , self goodKey1 , '=' , self value1 asString, '}$'.
	self should: [ PRDocumentParser parse: wiki ] raise: PRPropertyError