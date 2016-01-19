// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var myNum = 5;
console.log(myNum + 2);

var favFood = prompt('What is your favorite food?');
console.log('Mine too!');




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var counter = 0; counter <= 10; counter++) {
   if (counter % 3 === 0)
     console.log("Fizz");
   else if (counter % 5 === 0)
     console.log("Buzz");
   else
     console.log(counter);
 }

for (var counter = 0; counter <= 10; counter++) {
   if (counter % 3 === 0 || counter % 5 === 0)
     console.log("FizzBuzz");
   else
     console.log(counter);
 }


for (var hash = "#"; hash.length <= 7; hash = hash + "#")
    console.log(hash);


// Functions

// Complete the `minimum` exercise.

function min(x,y){
    console.log(Math.min(x,y))
}



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me {
  name: "Ian",
  age: "28",
  food1: "pizza",
  food2: "popcorn",
  food3: "breakfast food",
  quirk: "in depth Star Wars starship knowledge"
};