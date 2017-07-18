favoriteOn.opacity = 0
favoriteIndicator.opacity = 0
favoriteIndicator.scale = 0.5

favoriteOff.onTap ->
	if favoriteOn.opacity == 0
		favoriteOn.opacity = 1
		favoriteOff.opacity = 0

		favoriteIndicator.animate
			opacity: 1
			scale: 1
			options:
				time: 0.5
				curve: Spring
	
		favoriteIndicator.onAnimationEnd ->
			favoriteIndicator.animate
				opacity: 0
				scale: 0.5
				options:
					time: 0.8
					curve: Spring
	else
		favoriteOn.opacity = 0
		favoriteOff.opacity = 1
