$(document).bind 'turbolinks:before-cache', ->
  return unless typeof(CKEDITOR) != 'undefined'
  for name in CKEDITOR.instances
    CKEDITOR.instances[name].destroy() if name?

$(document).bind 'turbolinks:load', ->
  $('.ckeditor').each ->
    CKEDITOR.replace($(this).attr('id'))
