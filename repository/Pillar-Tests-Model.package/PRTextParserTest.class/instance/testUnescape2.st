tests-escaping
testUnescape2
	self assert: (parser class unescape: '\a\a') = 'aa'.
	self assert: (parser class unescape: '\a\ab') = 'aab'.
	self assert: (parser class unescape: 'b\a\a') = 'baa'.
	self assert: (parser class unescape: 'b\a\ab') = 'baab'