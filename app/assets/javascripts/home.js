// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

  window.onload = function(e) {
    var displayDropdownMenu = function() {
      dropdown_menus.classList.toggle('hidden')
    }
  
    var icon =  document.querySelector('.user-avatar')
    var dropdown_menus = document.querySelector('.dropdown-div')
    icon.addEventListener('click', displayDropdownMenu)   

    let user_avatar = document.querySelector('.avatar')
    let avatars = document.querySelector('.avatar-dropdown')
    let selected_avatar = document.querySelectorAll('.select-avatar')

    let changedToUserAvatar = function(e) {
      user_avatar.src = e.target.src
    }
    selected_avatar.forEach( avatar => avatar.addEventListener('click', changedToUserAvatar) )

    let dropdownAvatar = function() {
      avatars.classList.toggle('hidden')
    }
    user_avatar.addEventListener('click', dropdownAvatar)
  }
  