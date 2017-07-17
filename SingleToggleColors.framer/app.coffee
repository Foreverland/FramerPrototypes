arrayOfLayers = []

[0..4].forEach (num, i) -> 
	arrayOfLayers[i] = new Layer
		x: Align.center
		y: (i * 220) + 50
	
	arrayOfLayers[i].isOn = false
	
	arrayOfLayers[i].turnOn = -> @isOn = true
	arrayOfLayers[i].turnOff = -> @isOn = false
	
	arrayOfLayers[i].showOn = -> @backgroundColor = 'yellow'
	arrayOfLayers[i].showOff = -> @backgroundColor = 'green'
	
	arrayOfLayers[i].flipSwitch = ->
		if @isOn is false then @turnOn()
		else if @isOn is true then @turnOff()
		arrayOfLayers.forEach (layer) ->
			if layer isnt arrayOfLayers[i] and layer.isOn is true
				layer.turnOff()

	arrayOfLayers[i].onClick ->
		@flipSwitch()
		updateLayers()

	updateLayers = ->
		arrayOfLayers.forEach (layer) ->
			if layer.isOn is true then layer.showOn()
			else if layer.isOn is false then layer.showOff()
			
	updateLayers()