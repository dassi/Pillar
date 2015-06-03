tests-parsing
testParseEasynessReferenced
	| wiki1 wiki2 text tree |
	wiki1 := '*
*' , self referenceString.
	wiki2 := '\*' , Smalltalk os pillarLineEnding , '\*' , self referenceString.
	text := '*' , Smalltalk os pillarLineEnding , '*' , self referenceString.
	tree := PRDocument new
		add:
				(PRParagraph new
						add: (PRText content: '*');
						add: PRLineBreak new;
						add: (PRText content: '*' , self referenceString);
						yourself);
		yourself.
	self assertWiki: wiki1 equalsTree: tree.
	self assertWiki: wiki2 equalsTree: tree.
	self assertTree: tree equalsWiki: wiki2.
	self assertTree: tree equalsText: text