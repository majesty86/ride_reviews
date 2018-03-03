$(document).ready(function(){
  $('.rides-container__list-item--title').hover(titleHoverOnHandler, titleHoverOffHandler)
  $('.navigation__add-ride').on('click', '#star-one', oneStarHandler)
  $('.navigation__add-ride').on('click', '#star-two', twoStarHandler)
  $('.navigation__add-ride').on('click', '#star-three', threeStarHandler)
  $('.navigation__add-ride').on('click', '#star-four', fourStarHandler)
  $('.navigation__add-ride').on('click', '#star-five', fiveStarHandler)
  slideshowHandler()
  $('.rides-container__map-toggle').on('click', mapToggleHandler)
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
  $('#star-one').css('color', 'red')
}

twoStars = function(){
  $('#star-two').css('color', 'red')
}

threeStars = function(){
  $('#star-three').css('color', 'red')
}

fourStars = function(){
  $('#star-four').css('color', 'red')
}

fiveStars = function(){
  $('#star-five').css('color', 'red')
}

var slideshowHandler = function(){
  setInterval(slideshow, 9000)
};

var slideshowCounter = 0

slideshow = function(){
  var images = $('.navigation__center-box').find('img').map(function(){
    return this.className;
  })

  var currentImage;
  var newImage;

  if (slideshowCounter === images.length) {
    slideshowCounter = 0
  }

  currentImage = images[slideshowCounter]

  if (slideshowCounter === (images.length - 1)) {
    newImage = images[0]
  }
  else {
    newImage = images[slideshowCounter + 1]
  }

  $("." + currentImage).fadeOut(3000)
  $("." + newImage).delay(3000).fadeIn(3000)
  slideshowCounter++
}

var mapToggleHandler = function(){
  $(this).closest('ul').find('.map').toggle()
};

// If current index is 3, make current image 0.  Reset new image to index 0.
// If current index is 0 or 1, keep current image there.  Add one to new image.




