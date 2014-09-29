@Demo.module "FooterApp", (FooterApp, App, Backbone, Marionette, $, _) ->

	# Prevents calling FooterApp right when the App start
	@startWithParent = false

	API = 
		showFooter: ->
			FooterApp.Show.Controller.showFooter()

	# Listen to Start Events
	FooterApp.on "start", ->
		API.showFooter()