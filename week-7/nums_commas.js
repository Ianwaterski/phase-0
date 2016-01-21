// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Emmett Susselin.

// Pseudocode



// Initial Solution
var separateComma = function(x) {
  var array = [];
  var string = x.toString();
  var array = string.split('').reverse();


  for (var counter = 0; counter <= array.length; counter++){
    if (counter % 3 === 0){
      array.splice(counter, 0, ",");
    }
    return array.reverse().join('');

  }
}




console.log(separateComma(23456));



// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection