tests
testSize
	| headerConfig1 headerConfig2 headerConfig3  |
	headerConfig1 := PRLevelRomanConfiguration with: self defaultDictionary.
	headerConfig2 := PRLevelNumberConfiguration with: self defaultDictionary.
	headerConfig3 := PRLevelLetterConfiguration with: self defaultDictionary.
	headerConfig2 numbering: true.
	headerConfig2 size: 0.
	headerConfig3 size: 3.
	headerConfig3 parent: headerConfig2.
	headerConfig2 parent: headerConfig1. 
	self assert: (headerConfig3 printCounter: #(1 -1 1) ) equals: 'I.a'.
	headerConfig2 numbering: true.
	headerConfig2 size: 2.
	self assert: (headerConfig3 printCounter: #(1 1 1) ) equals: 'I.1.a'.