activation
activate
	super activate.
	self
		optionAt: 'to'
		ifPresent: [ :subconf | subconfName := subconf ].