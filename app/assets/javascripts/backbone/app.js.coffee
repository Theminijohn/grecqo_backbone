@Demo = do (Backbone, Marionette) ->

	# Instantiate new Application
	App = new Marionette.Application

	# Define Regions
	App.addRegions
		headerRegion: '#header-region'
		mainRegion: '#main-region'
		footerRegion: '#footer-region'

	# Fire up Start Events
	App.addInitializer ->
		App.module("HeaderApp").start()
		App.module("FooterApp").start()

	# Listen to hash-change Events
	App.on "start", ->
		if Backbone.history
			Backbone.history.start()

	App