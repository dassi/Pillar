instance creation
parse: aString with: aParser
	| stream tag |
	stream := (self copyWithoutMarkup: aString) readStream.
	tag := stream upTo: self markupParameterSeparator.
	^ (self findClassAcceptingTag: tag)
		parameters: ((self findClassAcceptingTag: tag) adaptParameters: (self parseParameters: stream upToEnd))