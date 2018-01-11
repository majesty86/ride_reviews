$(document).ready(function(){
  $('.rides-container__list-item--title').hover(titleHoverOnHandler, titleHoverOffHandler)
});

var titleHoverOnHandler = function(){
  $(this).css('color', 'silver')
};

var titleHoverOffHandler = function(){
  $(this).css('color', 'white')
};