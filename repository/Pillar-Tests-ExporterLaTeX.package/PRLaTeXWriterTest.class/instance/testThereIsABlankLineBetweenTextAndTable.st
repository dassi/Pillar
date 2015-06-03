tests
testThereIsABlankLineBetweenTextAndTable
	| text nLine |
	nLine := Smalltalk os pillarLineEnding.
	text := 'This is a table:
| foo
| bar'.
	self
		assertWriting: (PRDocumentParser parse: text)
		includesText: 'This is a table:' , nLine , nLine , '\begin{tab'