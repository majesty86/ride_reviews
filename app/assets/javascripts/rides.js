$(document).ready(function(){
  $('.rides-container__list-item--title').hover(titleHoverOnHandler, titleHoverOffHandler)
});

const titleHoverOnHandler = function(){
  $(this).css('color', 'silver')
};

const titleHoverOffHandler = function(){
  $(this).css('color', 'white')
};