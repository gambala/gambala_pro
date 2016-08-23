$(document).bind 'turbolinks:load', ->
  emojify.setConfig
    img_dir: '/images/emoji'
  emojify.run()
