tests
testFindFirstAtIn2
	self assert: (manager class findFirst: 'ab' at: 2 in: 'ab') = 0.
	self assert: (manager class findFirst: 'ab' at: 2 in: 'cab') = 2.
	self assert: (manager class findFirst: 'ab' at: 5 in: '\abab') = 0.
	self assert: (manager class findFirst: 'ab' at: 5 in: 'c\abab') = 5