moment.locale('ru')

$(document).bind 'turbolinks:load ajax:success', ->
  dates = $('.moment-date')
  return unless dates.length

  dates.each ->
    $(this).text moment($(this).text(), 'YYYY-MM-DD HH:mm:ss').format('DD MMMM YYYY')
    $(this).removeClass('moment-date')
