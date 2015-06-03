tests
testEquals
	| headerConfig |
	headerConfig := self newDefaultConfiguration.
	self assert: headerConfig = self newDefaultConfiguration.
	self
		deny:
			headerConfig
				=
					(self newDefaultConfiguration
						parent: headerConfig;
						yourself)