$(document).bind 'turbolinks:load ajax:success', ->
  $('button[type=submit]').attr
    'data-style': 'slide-left'
    'data-spinner-color': '#fff'
  $('button[type=submit]').ladda 'bind'
  $('a.ladda-button').ladda 'bind'
