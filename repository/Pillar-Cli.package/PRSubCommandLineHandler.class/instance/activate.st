activation
activate
	| confFilename |
	self activateHelp
		ifTrue: [ ^ self ].
	self
		optionAt: 'configurationFile'
		ifPresent: [ :file | confFilename := file ]
		ifAbsent: [ confFilename := 'pillar.conf' ].
	self optionAt: 'baseDirectory' ifPresent: [ :dir | baseDirectory := dir asFileReference ].
	self createConfiguration: confFilename