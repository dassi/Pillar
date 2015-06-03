tests-escaping
testUnescape3
	self assert: (parser class unescape: '') = ''.
	self assert: (parser class unescape: '\') = ''.
	self assert: (parser class unescape: '\\') = '\'.
	self assert: (parser class unescape: '\\\') = '\'.
	self assert: (parser class unescape: '\\\\') = '\\'