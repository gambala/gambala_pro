$(document).bind 'turbolinks:load', ->
  $('pre code').each (i, block) ->
    hljs.highlightBlock block
