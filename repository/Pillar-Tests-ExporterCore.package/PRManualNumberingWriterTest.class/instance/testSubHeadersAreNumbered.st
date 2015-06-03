tests
testSubHeadersAreNumbered
	| item |
	item := PRDocument new
		add:
				(PRHeader new
						level: 1;
						add: (PRText content: 'foo');
						counter: ((PRCascadingCounter maxLevel: 5) incrementAt: 1);
						yourself);
		add:
				(PRHeader new
						level: 2;
						add: (PRText content: 'foo');
						counter:
								((PRCascadingCounter maxLevel: 5)
										incrementAt: 1;
										incrementAt: 2);
						yourself);
		yourself.
	self configuration level1: (Dictionary with: 'rendering' -> true with: 'size' -> 1 with: 'renderAs' -> 'number').
	self
		assertWriting: item
		includesTexts:
			{(self counter1DefinitionString).
			(self counter11DefinitionString)}