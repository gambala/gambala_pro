moment.locale('ru')

momentDatetimes = ->
  dates = $('.moment-datetime')
  return unless dates.length
  dates.each ->
    $(this).text moment($(this).text(), 'YYYY-MM-DD HH:mm:ss').format('DD MMMM YYYY в HH:mm')
    $(this).removeClass('moment-datetime')

momentDates = ->
  dates = $('.moment-date')
  return unless dates.length
  dates.each ->
    $(this).text moment($(this).text(), 'YYYY-MM-DD HH:mm:ss').format('DD MMMM YYYY')
    $(this).removeClass('moment-date')

momentDbDates = ->
  dates = $('.moment-db-date')
  return unless dates.length
  dates.each ->
    $(this).text moment($(this).text(), 'YYYY-MM-DD').format('DD MMMM YYYY')
    $(this).removeClass('moment-db-date')

momentTimes = ->
  dates = $('.moment-time')
  return unless dates.length
  dates.each ->
    $(this).text moment($(this).text(), 'HH:mm').format('HH:mm')
    $(this).removeClass('moment-time')

$(document).bind 'turbolinks:load ajax:success', ->
  momentDatetimes()
  momentDates()
  momentDbDates()
  momentTimes()
