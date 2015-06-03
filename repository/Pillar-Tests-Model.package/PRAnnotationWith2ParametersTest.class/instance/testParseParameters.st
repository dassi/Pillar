tests
testParseParameters
	| wiki text tree |
	wiki := '${' , self annoteName , self goodParameters , '}$'.
	text := ''.
	tree := PRDocument new
		add:
			(PRParagraph new
				add:
					(self actualInstance parameters: (Dictionary with: self goodKey1 -> self value1 with: self goodKey2 -> self value2 )))
				yourself.
	self assertWiki: wiki equalsTree: tree.
	self assert: ((PRPillarWriter write: tree) includesSubstring: (self goodKey1, '=', self value1 asString)).
	self assert: ((PRPillarWriter write: tree) includesSubstring: (self goodKey2, '=', self value2 asString)).
	self assertTree: tree equalsText: text