initDataMaxlength = ->
  inputs = $('input[data-maxlength]')
  return unless inputs.length
  inputs.each ->
    $(this).maxlength
      allowOverMax: true
      customMaxAttribute: $(this).attr('data-maxlength')

initMaxlength = ->
  $('input[maxlength]').maxlength()

$(document).bind 'turbolinks:load ajax:success', ->
  initMaxlength()
  initDataMaxlength()
