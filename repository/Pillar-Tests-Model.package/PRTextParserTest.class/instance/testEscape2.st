tests-escaping
testEscape2
	self assert: (parser class escape: 'aa' using: 'a') = '\a\a'.
	self assert: (parser class escape: 'aab' using: 'a') = '\a\ab'.
	self assert: (parser class escape: 'baa' using: 'a') = 'b\a\a'.
	self assert: (parser class escape: 'baab' using: 'a') = 'b\a\ab'