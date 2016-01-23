 // JavaScript Olympics

// I paired [with: ] on this challenge.

// This challenge took me [Sydney] hours.


// Warm Up


// Bulk Up

var array = [
  {name: "Ian", event: "Shotput"},
  {name: "Sydney", event: "Javelin"}
]
var win = function(array) {
  for (var i in array){
    console.log(array[i].win = array[i].name + " has won " + array[i].event);
  };
}

win(array);

// Jumble your words

var reverse = function(string){
  var reverseString = string.split('').reverse();
  console.log(reverseString);
  reverseString = reverseString.join('');
  console.log(reverseString);
}

reverse("Javelin");


// 2,4,6,8

var array = [1,2,3,4,5,6,7];

var evensfunction = function(array1){
  var evens = [];
  for(var i in array1){
    if(array1[i]%2===0){
      evens.push(array1[i]);
    };
  };
  console.log(evens);
};

evensfunction(array);

var evens2=[];

evens2 = array.filter(function(x){return x % 2 === 0});
console.log(evens2);


// "We built this city"

var Athlete = function(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!");
console.log(michaelPhelps.constructor === Athlete);
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote);


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// I've felt pretty comfortable with JS so far this week, but this definitely gave me some more practice in manipulating data structures.

// What are constructor functions?
// It is my understanding that constructors are similar to regular functions, but we use new to initialize them.  They are useful when you want to create multiple objects with the same properties.  A good description I heard was that it is like a cookie-cutter than makes creating new objects with similar properties easy.

// How are constructors different from Ruby classes (in your research)?
// A constructor method is called at the time of instantiation, so compared to a Ruby class it's similar to initialize.  They allow you to define variables which can be used class wide, much like the @ designation in ruby.