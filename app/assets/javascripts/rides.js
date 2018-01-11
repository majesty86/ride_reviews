$(document).ready(function(){
  $('.rides-container__list-item--title').hover(titleHoverOnHandler, titleHoverOffHandler)
});

var titleHoverOnHandler = function(){
  $(this).css('color', 'silver')
};

var titleHoverOffHandler = function(){
  $(this).css('color', 'white')
};

// For image slideshows:
  // Build image array
  // Time the change through the JS here with some fades
  // Function for the div will be something like:
    // $(this).css('background-image', 'image-url(image_array.sample)')
  // Just execute function on bottom?  How to repeat?




