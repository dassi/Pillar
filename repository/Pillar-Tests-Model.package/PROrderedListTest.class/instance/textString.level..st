private
textString: anObject level: anInteger 
	^ (super 
		textString: anObject
		level: anInteger) , anObject greaseString , '. '