*pillar-exportertext
titleFromFirstHeader
	^ self children
		detect: [ :child | child isKindOf: PRHeader ]
		ifFound: [ :header | PRTextWriter write: header ]
		ifNone: [ self defaultTitle ]