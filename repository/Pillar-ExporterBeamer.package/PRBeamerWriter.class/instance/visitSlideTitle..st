visiting
visitSlideTitle: aHeader
	self closeLastSlide.
	canvas newLine.
	canvas command
		name: 'begin';
		parameter: 'frame';
		optParameter: 'fragile'.
	slideOpen := true.
	super visitHeader: aHeader.