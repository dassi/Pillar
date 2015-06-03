tests
testRelativePathFromFile
	| confFile configuration |
	
	(baseDirectory / 'foo.pillar') writeStreamDo: [ :stream | stream nextPutAll: 'foo' ].
	confFile := baseDirectory / 'pillar.conf'.
	confFile writeStreamDo: [ :stream | stream nextPutAll: '{ #inputFiles : [ "foo.pillar" ] }' ].
	configuration := (PRCocoonConfigurationInterpreter baseDirectory: baseDirectory) buildFromFile: confFile.
	
	self assert: (configuration asFile: configuration inputFiles first) exists.