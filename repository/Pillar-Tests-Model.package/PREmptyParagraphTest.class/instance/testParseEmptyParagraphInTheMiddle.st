tests
testParseEmptyParagraphInTheMiddle
	| wiki text tree content nLine|
	nLine := Smalltalk os pillarLineEnding.
	content := 'Lorem ipsum dolor sit amet.'.
	wiki := content , nLine , nLine , content.
	text := wiki.
	tree := PRDocument new
		add:
				(PRParagraph new
						add: (PRText content: content);
						yourself);
		add: PREmptyParagraph new;
		add:
				(PRParagraph new
						add: (PRText content: content);
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text