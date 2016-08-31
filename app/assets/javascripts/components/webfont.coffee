$(document).ready ->
  WebFont.load
    google:
      families: ['Roboto:300,400,500,700:latin,cyrillic']
    active: ->
      $(window).trigger 'webfontactive'
