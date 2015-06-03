tests-errors
testWrongOnAnnotationTag
	self should: [ PRDocumentParser parse: '${wrongTag}$' ] raise: PRError 
