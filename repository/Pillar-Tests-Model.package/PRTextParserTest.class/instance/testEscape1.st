tests-escaping
testEscape1
	self assert: (parser class escape: '' using: 'a') = ''.
	self assert: (parser class escape: 'a' using: 'a') = '\a'.
	self assert: (parser class escape: 'ab' using: 'a') = '\ab'.
	self assert: (parser class escape: 'ba' using: 'a') = 'b\a'.
	self assert: (parser class escape: 'bab' using: 'a') = 'b\ab'