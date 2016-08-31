$(document).bind 'turbolinks:load ajax:success', ->
  images = $('.img-with-link')
  return unless images.length
  images.each ->
    $(this).wrap("<a href='#{$(this).attr('src')}' target='_blank'></a>")
