App.engagment = App.cable.subscriptions.create "EngagmentChannel",
  connected: ->
    console.log(' connect')
    # Called when the subscription is ready for use on the server
  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
