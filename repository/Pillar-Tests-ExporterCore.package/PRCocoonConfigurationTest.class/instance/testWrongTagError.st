tests
testWrongTagError
	| file configuration |
	file := baseDirectory / 'foo.pillar'.
	file writeStreamDo: [ :stream | stream nextPutAll: '${wrongTag}$' ].
	configuration := PRCocoonConfiguration new baseDirectory: baseDirectory. 
	self should: [ configuration parseFile: (configuration asFile: 'foo.pillar')] raise: PRError whoseDescriptionIncludes: 'foo.pillar' description:  'foo.pillar'