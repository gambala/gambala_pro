scroll_top = []

$(document).bind 'turbolinks:before-cache ajax:beforeSend', ->
  scroll_areas = $('[data-turbolinks-permanent-scroll]')
  return unless scroll_areas.length
  scroll_areas.each ->
    scroll_top[$(this).attr('id')] = $(this).scrollTop()

$(document).bind 'turbolinks:load ajax:success', ->
  scroll_areas = $('[data-turbolinks-permanent-scroll]')
  return unless scroll_areas.length
  scroll_areas.each ->
    $(this).scrollTop(scroll_top[$(this).attr('id')])
