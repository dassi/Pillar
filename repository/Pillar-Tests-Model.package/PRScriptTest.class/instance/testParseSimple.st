tests-parsing
testParseSimple
	| wiki text tree nLine |
	nLine := Smalltalk os pillarLineEnding.
	wiki := '[[[' , nLine , 'foo' , nLine , ']]]'.
	text := 'foo'.
	tree := PRDocument new
		add:
				(PRParagraph new
						add: (PRScript content: 'foo');
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text