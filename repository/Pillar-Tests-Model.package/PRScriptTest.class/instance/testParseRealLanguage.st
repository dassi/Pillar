tests-parsing
testParseRealLanguage
	| wiki text tree nLine |
	nLine := Smalltalk os pillarLineEnding.
	wiki := '[[[language=smalltalk' , nLine , 'foo' , nLine , ']]]'.
	text := 'foo'.
	tree := PRDocument new
		add:
				(PRParagraph new
						add:
								((PRScript content: 'foo')
										language: PRSmalltalkScriptLanguage default;
										yourself);
						yourself);
		yourself.
	self assertWiki: wiki equalsTree: tree.
	self assertTree: tree equalsWiki: wiki.
	self assertTree: tree equalsText: text