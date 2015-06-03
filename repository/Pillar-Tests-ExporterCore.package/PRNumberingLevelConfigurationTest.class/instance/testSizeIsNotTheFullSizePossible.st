tests
testSizeIsNotTheFullSizePossible
	| headerConfig1 headerConfig2 |
	headerConfig1 := PRLevelRomanConfiguration with: self defaultDictionary.
	headerConfig2 := PRLevelNumberConfiguration with: self defaultDictionary.
	headerConfig2 size: 1.
	headerConfig2 parent: headerConfig1. 
	self assert: (headerConfig1 printCounter: #(1) ) equals: 'I'.
	self assert: (headerConfig2 printCounter: #(1 1) ) equals: '1'.