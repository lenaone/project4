// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

  window.onload = function(e) {

    let userAvatar = document.querySelector('.avatar')
    let avatars = document.querySelector('.avatar-dropdown')
    let selectedAvatar = document.querySelectorAll('.select-avatar')

    let changedToUserAvatar = function(e) {
      // set value in hidden field
      let inputAvatar = document.querySelector('.inputAvatar')
      inputAvatar.value = e.target.dataset.image
      userAvatar.src = e.target.src
    }
    selectedAvatar.forEach( avatar => avatar.addEventListener('click', changedToUserAvatar) )

    let dropdownAvatar = function() {
      avatars.classList.toggle('hidden')
    }
    if (userAvatar) {
      userAvatar.addEventListener('click', dropdownAvatar) 
    }

    var displayDropdownMenu = function() {
      dropdownMenus.classList.toggle('hidden')
    }
  
    var icon =  document.querySelector('.user-avatar')
    var dropdownMenus = document.querySelector('.dropdown-div')
    if (icon) {
      icon.addEventListener('click', displayDropdownMenu)   
    }

  }
  