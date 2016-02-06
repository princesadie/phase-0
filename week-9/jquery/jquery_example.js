// U3.W9:JQuery


// I worked on this challenge [with: Carl Concroy].
// This challenge took me [1.8] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'white'})

//RELEASE 2:
  //Add code here to select elements of the DOM
$('h1').css({'color': 'blue', 'opacity': 0.5, 'border': 'solid'})

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
bodyElement = $('body')
$( ".mascot" ).html( "<h1>Fiddler Crabs 2016</h1> <img src='devbootcamp-logo-new.png'>" )

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://vignette4.wikia.nocookie.net/nicktheultimaswordwielder/images/4/4e/444689-671-760.png/revision/latest?cb=20120109055033')
  })

$('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'devbootcamp-logo-new.png')
  })

//RELEASE 5: Experiment on your own
$("img").animate({height: "300px"})




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
Q: What is jQuery?
A: jQuery is an awesome library of JS methods. It makes manipulating elements
through JS much much easier and fun.

Q: What does jQuery do for you?
A: Cuts out a lot of the menial tasks involved when manipulating elements using JS.

Q: What did you learn about the DOM while working on this challenge?
A: I learned quite a bit, but mostly just solidified my idea of the node structure.
*/