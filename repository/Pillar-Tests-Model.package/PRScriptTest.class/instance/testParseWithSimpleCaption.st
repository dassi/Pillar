tests-parsing
testParseWithSimpleCaption
	| wiki text tree nLine |
	nLine := Smalltalk os pillarLineEnding.
	wiki := '[[[caption=foo' , nLine , 'foo' , nLine , ']]]'.
	text := 'foo'.
	tree := PRDocument new
		add:
				(PRParagraph new
						add:
								((PRScript content: 'foo')
										caption: 'foo';
										yourself);
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text