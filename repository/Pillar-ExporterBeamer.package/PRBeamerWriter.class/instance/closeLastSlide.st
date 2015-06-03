helpers
closeLastSlide
	slideOpen
		ifTrue: [ 
			canvas command
				name: 'end';
				parameter: 'frame'.
			slideOpen := false ]