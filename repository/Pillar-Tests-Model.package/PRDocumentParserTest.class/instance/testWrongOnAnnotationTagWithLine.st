tests-errors
testWrongOnAnnotationTagWithLine
	self
		should: [ PRDocumentParser parse: String lf , '${wrongTag}$' ]
		raise: PRError
		whoseDescriptionIncludes: 'at line: 2'
		description: 'test line'