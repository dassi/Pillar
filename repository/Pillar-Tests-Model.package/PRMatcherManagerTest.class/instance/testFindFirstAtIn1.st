tests
testFindFirstAtIn1
	self assert: (manager class findFirst: 'ab' at: 1 in: '') = 0.
	self assert: (manager class findFirst: 'ab' at: 1 in: 'ab') = 1.
	self assert: (manager class findFirst: 'ab' at: 1 in: 'cab') = 2.
	self assert: (manager class findFirst: 'ab' at: 1 in: '\ab') = 0.
	self assert: (manager class findFirst: 'ab' at: 1 in: 'c\ab') = 0.
	self assert: (manager class findFirst: 'ab' at: 1 in: '\abab') = 4.
	self assert: (manager class findFirst: 'ab' at: 1 in: 'c\abab') = 5