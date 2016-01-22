// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Emmett Susselin.

// Pseudocode



// Initial Solution
var separateComma = function(x) {
  var string = x.toString();
  var array = string.split('').reverse();
  var initialIntLength = array.length;


  // console.log(array);

  for (var counter = 0; counter < initialIntLength; counter++){
    if (counter % 3 === 0 && counter !== 0){
      array.splice((counter - initialIntLength), 0, ",");
    }
  }
    return array.join('');
}



// Refactored Solution




// Your Own Tests (OPTIONAL)


console.log(separateComma(1234567890));


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// No actually, it made the most sense to try and think of it in what I had most recently been working in, Ruby, and try and translate from there.  Since I was using a Ruby mindset it was exactly the same as what I had been doing last week.

// What did you learn about iterating over arrays in JavaScript?
// I actually find it easier to understand in JS.  It's a bit more literal especially with For loops and counters.

// What was different about solving this problem in JavaScript?
// The methods for sure.  Just when I thought I was getting a handle on some Ruby method swtiching over to JS was a bit rough.  The whole crux of our for loop revolved around .splice which is very similar to .slice and was constantly getting formatting messed up.  Couple hiccups trying to get commas placed correctly as well, but was getting the right numbers.

// What built-in methods did you find to incorporate in your refactored solution?
// I chained a few more methods in variable assigns but can't think of any other methods for refactoring further.