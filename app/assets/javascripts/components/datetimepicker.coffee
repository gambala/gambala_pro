pickDateInputs = ->
  inputs = $('.js-date')
  return unless inputs.length
  inputs.each ->
    $(this).datetimepicker
      focusOnShow: false
      format: 'YYYY-MM-DD'
      ignoreReadonly: true
      locale: 'ru'
    $(this).attr('readonly', true)

pickTimeInputs = ->
  inputs = $('.js-time')
  return unless inputs.length
  inputs.each ->
    $(this).datetimepicker
      focusOnShow: false
      format: 'HH:mm ZZ'
      ignoreReadonly: true
      locale: 'ru'
    $(this).attr('readonly', true)

$(document).bind 'turbolinks:load ajax:success', ->
  pickDateInputs()
  pickTimeInputs()
