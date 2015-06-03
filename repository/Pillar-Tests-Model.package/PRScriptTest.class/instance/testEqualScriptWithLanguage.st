tests
testEqualScriptWithLanguage
	| param1 param2 |
	param1 := PRParameterParser parse: 'language=smalltalk'.
	param2 := PRParameterParser parse: 'language=html'.
	self deny: (self actualClass content: 'foo' parameters: param1) = (self actualClass content: 'foo' parameters: param2).
	self assert: (self actualClass content: 'foo' parameters: param1) = (self actualClass content: 'foo' parameters: param1)