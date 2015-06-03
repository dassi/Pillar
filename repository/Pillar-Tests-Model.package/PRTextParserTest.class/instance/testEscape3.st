tests-escaping
testEscape3
	self assert: (parser class escape: 'a' using: 'aa') = 'a'.
	self assert: (parser class escape: 'aa' using: 'aa') = '\a\a'.
	self assert: (parser class escape: 'aaa' using: 'aa') = '\a\aa'.
	self assert: (parser class escape: 'aaaa' using: 'aa') = '\a\a\a\a'