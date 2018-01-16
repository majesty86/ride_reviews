$(document).ready(function(){
  $('.rides-container__list-item--title').hover(titleHoverOnHandler, titleHoverOffHandler)
  $('.navigation__add-ride').on('click', '#star-one', oneStarHandler)
  $('.navigation__add-ride').on('click', '#star-two', twoStarHandler)
  $('.navigation__add-ride').on('click', '#star-three', threeStarHandler)
  $('.navigation__add-ride').on('click', '#star-four', fourStarHandler)
  $('.navigation__add-ride').on('click', '#star-five', fiveStarHandler)
  // $('.navigation__login').on('mouseover', loginImageCycle)
});

var titleHoverOnHandler = function(){
  $(this).css('color', 'silver')
};

var titleHoverOffHandler = function(){
  $(this).css('color', 'white')
};

var oneStarHandler = function(){
  clearRating()
  oneStar()
};

var twoStarHandler = function(){
  clearRating()
  oneStar()
  twoStars()
};

var threeStarHandler = function(){
  clearRating()
  oneStar()
  twoStars()
  threeStars()
};

var fourStarHandler = function(){
  clearRating()
  oneStar()
  twoStars()
  threeStars()
  fourStars()
};

var fiveStarHandler = function(){
  clearRating()
  oneStar()
  twoStars()
  threeStars()
  fourStars()
  fiveStars()
};

clearRating = function(){
  $('.rating-stars').css('color', 'white')
}

oneStar = function(){
  $('#star-one').css('color', 'orange')
}

twoStars = function(){
  $('#star-two').css('color', 'orange')
}

threeStars = function(){
  $('#star-three').css('color', 'orange')
}

fourStars = function(){
  $('#star-four').css('color', 'orange')
}

fiveStars = function(){
  $('#star-five').css('color', 'orange')
}


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

