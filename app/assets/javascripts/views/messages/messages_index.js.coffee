class BackboneOnRails.Views.MessagesIndex extends Backbone.View

  template: JST['messages/index']

  initialize: ->
  	@collection.on('sync', @render, this)

  render: ->
  	$(@el).html(@template(messages: @collection))
  	@