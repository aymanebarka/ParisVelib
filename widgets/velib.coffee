class Dashing.Velib extends Dashing.Widget

  ready: ->

  onData: (data) ->
    if data.mecanic == '0' and data.elec == '0'
      $(@node).css('background-color', '#FF0055 ') #red
    else if data.mecanic == '0'
      $(@node).css('background-color', '#FF9933') #orange
    else 
      $(@node).css('background-color', '#00CC33') #green
