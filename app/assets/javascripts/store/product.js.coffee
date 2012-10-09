add_image_handlers = ->
  ($ '#main-image').data 'selectedThumb', ($ '#main-image img').attr('src')
  ($ 'ul.thumbnails li').eq(0).addClass 'selected'

  ($ 'ul.thumbnails a').on 'click', (event) ->
    ($ '#main-image').data 'selectedThumb', ($ event.currentTarget).attr('href')
    ($ '#main-image').data 'selectedThumbId', ($ event.currentTarget).parent().attr('id')
    #prettyphoto - set path variable to full image on click
    ($ 'ul.thumbnails li').removeClass 'selected'
    ($ event.currentTarget).parent('li').addClass 'selected'
    original_path = ($ '#thumbnails').find('li.selected').attr('original-path')
    ($ '#main-image img').attr 'src', ($ '#main-image').data('selectedThumb')
    ($ '#main-image').data 'originalPath', original_path
    ($ '#main-image a').attr 'href', original_path

    ($ this).mouseout ->
    #  ($ 'ul.thumbnails li').removeClass 'selected'
    #  ($ event.currentTarget).parent('li').addClass 'selected'
    #  #original_path = ($ '#main-image').data 'originalPath'
    #  #($ '#main-image a').attr 'href', original_path
    false

  #($ 'ul.thumbnails li').on 'mouseenter', (event) ->
    #($ '#main-image img').attr 'src', ($ event.currentTarget).find('a').attr('href')
    #prettyphoto
    #($ '#main-image a').attr 'href', ($ event.currentTarget).attr('original-path')

  #($ 'ul.thumbnails li').on 'mouseleave', (event) ->
    #($ '#main-image img').attr 'src', ($ '#main-image').data('selectedThumb')
    #prettyphoto
    #($ '#main-image a').attr 'href', ($ '#main-image').data('originalPath')

  #prettyphoto - initialize href path after load page
  ($ '#main-image').data 'originalPath', $('#thumbnails').find('li.selected').attr('original-path')
  ($ '#main-image a').attr 'href', ($ '#main-image').data('originalPath')

show_variant_images = (variant_id) ->
  ($ 'li.vtmb').hide()
  ($ 'li.vtmb-' + variant_id).show()
  currentThumb = ($ '#' + ($ '#main-image').data('selectedThumbId'))
  if not currentThumb.hasClass('vtmb-' + variant_id) and not currentThumb.hasClass('tmb-all')
    thumb = ($ ($ 'ul.thumbnails li:visible').eq(0))
    newImg = thumb.find('a').attr('href')
    ($ 'ul.thumbnails li').removeClass 'selected'
    thumb.addClass 'selected'
    ($ '#main-image img').attr 'src', newImg
    ($ '#main-image').data 'selectedThumb', newImg
    ($ '#main-image').data 'selectedThumbId', thumb.attr('id')

$ ->
  add_image_handlers()
  show_variant_images ($ '#product-variants input[type="radio"]').eq(0).attr('value') if ($ '#product-variants input[type="radio"]').length > 0
  ($ '#product-variants input[type="radio"]').click (event) ->
    show_variant_images @value