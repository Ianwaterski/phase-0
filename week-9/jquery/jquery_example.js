// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM
$h1 = $('h1')
$bodyElement = $('body')


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
  $h1.css({'color': 'blue','border': '2px solid black', 'visibility': 'initial'})
  $('.mascottext').html("Fiddler Crab")

//RELEASE 4: Event Listener
  // Add the code for the event listener here
    $('img').on('mouseover', function(e){
      e.preventDefault()
      $(this).attr('src', 'fiddler.jpg')
  })

    $('img').on('mouseleave', function(a){
        a.preventDefault()
        $(this).attr('src', 'dbc_logo.png')
  })

//RELEASE 5: Experiment on your own
  $('img').click(function(){
    $('img').css({'position': 'absolute'})
    $('img').animate({ top: '+=100px'},1000);
  })


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

//Reflections

What is jQuery?
jQuery is a javascript library that allows you to traverse the DOM, manipulation of HTML/CSS, and addition of effects/animation.

What does jQuery do for you?
It makes using Javascript on your website much easier.  It is described as a write less do more Javascript library.

What did you learn about the DOM while working on this challenge?
That by using simple commands in jQuery you can edit and add effects to almost all aspects of your HTML.  You can also get info from the DOM with jQuery "getter" methods as well as setting them.