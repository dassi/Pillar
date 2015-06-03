tests-escaping
testEscapedRoundTrip
	| wikiText document |
	wikiText := ' ==\=\=== '.
	document := PRDocumentParser parse: wikiText.
	self assert: (PRPillarWriter write: document) equals: wikiText