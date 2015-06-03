tests
testCounter
	| headerConfig1 headerConfig2 headerConfig3  |
	headerConfig1 := PRLevelRomanConfiguration with: self defaultDictionary.
	headerConfig2 := self newDefaultConfiguration.
	headerConfig3 := PRLevelLetterConfiguration with: self defaultDictionary.
	headerConfig2 size: 0.
	headerConfig3 size: 3.
	headerConfig3 parent: headerConfig2.
	headerConfig2 parent: headerConfig1. 
	self assert: (headerConfig3 printCounter: self counterLevel3 ) equals: 'I.c'