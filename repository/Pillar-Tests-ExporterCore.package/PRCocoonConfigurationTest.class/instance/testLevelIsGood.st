tests
testLevelIsGood
	| configuration header |
	configuration := PRCocoonConfiguration new
		level1: (Dictionary with: 'numbering' -> true);
		level2: (Dictionary with: 'numbering' -> false);
		yourself.
	header := PRHeader new
		level: 2;
		add: (PRText content: 'foo');
		yourself.
	self deny: (configuration levelConfigurationFor: header) numbering