visiting-document
visitDocument: aDocument
	slideOpen := false.
	super visitDocument: aDocument.
	self closeLastSlide.