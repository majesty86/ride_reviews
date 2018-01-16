$(document).ready(function(){
  $('.rides-container__list-item--title').hover(titleHoverOnHandler, titleHoverOffHandler)
  // $('.navigation__login').on('mouseover', loginImageCycle)
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

// Okay, some notes on playing with this:
  // 1. It's fuckin' hard.
  // 2. Can't just change the file like magic on an event, because the image hasn't loaded with the page.
  // 3. Possible solution: Have all the images on the page to begin with, in hidden tags? But then how to access them?
  // 4. Maybe go back to just the middle div with images, and flipping the login/reg boxes?

// var loginImageCycle = function(){
//   console.log("ha")
//   $('.navigation__login').css('background-image', image-url('suzuki_on_road.jpg'))
// }

