tests-parsing
testParseMultiple
	| wiki text tree nLine|
	nLine := Smalltalk os pillarLineEnding.
	wiki := '@one' , nLine , '@two' , nLine , nLine , '@tree'.
	text := ''.
	tree := PRDocument new
		add: (PRAnchor named: 'one');
		add: (PRAnchor named: 'two');
		add: PREmptyParagraph new;
		add: (PRAnchor named: 'tree');
		yourself.
	self 
		assertWiki: wiki
		equalsTree: tree.
	self 
		assertTree: tree
		equalsWiki: wiki.
	self 
		assertTree: tree
		equalsText: text