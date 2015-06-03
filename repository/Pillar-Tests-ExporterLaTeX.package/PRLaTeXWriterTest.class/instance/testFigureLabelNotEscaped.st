tests
testFigureLabelNotEscaped
	| item |
	item := PRFigure new
		reference: 'file://picture.png';
		embedded: true;
		label: 'a_b';
		yourself.
	self assertWriting: item includesText: 'a_b'