// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

  var displayDropdownMenu = function() {
    dropdown_menus.classList.toggle('hidden')
  }

  var icon =  document.querySelector('.user-avatar')
  var dropdown_menus = document.querySelector('.dropdown-div')
  icon.addEventListener('click', displayDropdownMenu)   