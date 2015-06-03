class BackboneOnRails.Routers.Messages extends Backbone.Router
	routes:
		'' : 'index'

	initialize: ->
		@messages = new BackboneOnRails.Collections.Messages()
		@messages.fetch()

	index:  ->
		view = new BackboneOnRails.Views.MessagesIndex(collection: @messages)
		$("#greeting").html(view.render().el)