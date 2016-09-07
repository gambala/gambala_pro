$(document).bind 'turbolinks:load ajax:success', ->
  $('.js-masonry').masonry
    itemSelector: '.js-masonry-item'
    transitionDuration: '0.25s'
