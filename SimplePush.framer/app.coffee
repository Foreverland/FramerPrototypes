flow = new FlowComponent
	backgroundColor: "white"
	
flow.showNext(root)

tapMeButton.onTap ->
	flow.showNext(detail)

backButton.onTap ->
	flow.showPrevious(root)
