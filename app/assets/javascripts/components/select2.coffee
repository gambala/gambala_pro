template = (result, container) ->
  option_class = $(result.element).attr('class')
  $(container).addClass(option_class) if option_class
  return result.text

$(document).bind 'turbolinks:load ajax:success', ->
  $('.select2-container').remove()
  $('.select2-hidden-accessible').removeClass('select2-hidden-accessible')
  $('.select2-control').each ->
    $(this).select2
      allowClear: true
      minimumResultsForSearch: 10
      placeholder: $(this).find('option[value=""]').text()
      templateResult: template
      width: '100%'
