$(document).bind 'turbolinks:load', ->
  emojify.setConfig
    ignore_emoticons: true
    img_dir: '/images/emoji'

  emojify.run()
