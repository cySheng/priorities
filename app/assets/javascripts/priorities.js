// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
	console.log("hi");
    var burger = document.querySelector('.nav-toggle');
    var menu = document.querySelector('.nav-menu');
    burger.addEventListener('click', function() {
        burger.classList.toggle('is-active');
        menu.classList.toggle('is-active');
    });
});