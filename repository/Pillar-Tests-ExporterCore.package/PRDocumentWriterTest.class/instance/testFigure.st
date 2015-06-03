tests
testFigure
	| item |
	item := PRFigure new
		reference: 'file://picture.png';
		embedded: true;
		yourself.
	self
		assertWriting: item
		includesTexts:
			{(self figureBegin).
			'picture.png'}