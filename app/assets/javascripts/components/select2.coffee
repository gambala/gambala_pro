$(document).bind 'turbolinks:load ajax:success', ->
  $('.select2-container').remove()
  $('.select2-hidden-accessible').removeClass('select2-hidden-accessible')
  $('.select2-control').each ->
    $(this).select2
      allowClear: true
      minimumResultsForSearch: 10
      placeholder: $(this).find('option[value=""]').text()
      width: '100%'
