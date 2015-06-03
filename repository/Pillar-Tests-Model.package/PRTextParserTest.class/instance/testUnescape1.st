tests-escaping
testUnescape1
	self assert: (parser class unescape: '\a') = 'a'.
	self assert: (parser class unescape: '\ab') = 'ab'.
	self assert: (parser class unescape: 'b\a') = 'ba'.
	self assert: (parser class unescape: 'b\ab') = 'bab'