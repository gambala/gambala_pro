EMOJI_HASH =
  id: 'emoji'
  index: 1
  match: /\ :([\-+\w]*)$/
  replace: (value) ->
    ' :' + value + ': '
  search: (term, callback) ->
    callback $.map(emojify.emojiNames, (emoji) ->
      if emoji.indexOf(term) == 0 then emoji else null
    )
    return
  template: (value) ->
    '<img src="/images/emoji/' + value + '.png"></img>' + value

CKEDITOR.on 'instanceReady', (event) ->
  $(event.editor.editable().$).textcomplete [EMOJI_HASH],
    appendTo: $('#permanent-textcomplete-dropdown')

  event.editor.on 'key', (event) ->
    enter_pressed = event.data.keyCode == 13
    textcomplete_active = $('.textcomplete-dropdown').first().is(':visible')
    return false if enter_pressed and textcomplete_active

$(document).bind 'ckeditor:before-destroy', (event) ->
  $(event.target).textcomplete('destroy')
