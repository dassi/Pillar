tests
testFiguresHaveACaption
	| item caption filename |
	caption := 'A description'.
	filename := 'picture.png'.
	item := PRFigure new
		reference: 'file://' , filename;
		embedded: true;
		label: 'picture';
		add: (PRText content: caption);
		yourself.
	self
		assertWriting: item
		includesTexts:
			{(self figureBegin).
			filename.
			caption}