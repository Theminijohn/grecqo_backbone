@Demo.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->

	# Prevents calling FooterApp right when the App start
	@startWithParent = false

	API = 
		listHeader: ->
			HeaderApp.List.Controller.listHeader()

	# Listen to Start Event
	HeaderApp.on "start", ->
		API.listHeader()