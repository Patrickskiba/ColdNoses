# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->

  checkScroll = ->
    startY = $('.navbar').height() * 2
    #The point where the navbar changes in px
    if $(window).scrollTop() > startY
      $('.navbar').addClass 'scrolled'
    else
      $('.navbar').removeClass 'scrolled'
    return

  if window.location.href.indexOf('static_pages') > -1
    $('.navbar').addClass 'scrolled'
  if window.location.href.indexOf('static_pages') < 1
    if $('.navbar').length > 0
      $(window).on 'scroll load resize', ->
        checkScroll()
        return

  $('.smallDogTop').mouseenter(->
    $('.dogTextTop').css 'opacity', '1.0'
    return
  ).mouseleave ->
    $('.dogTextTop').css 'opacity', '0'
    return
  return
