window.BackboneOnRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new BackboneOnRails.Routers.Messages()
  	Backbone.history.start()

$(document).ready ->
  BackboneOnRails.initialize()
