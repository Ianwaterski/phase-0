// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Coline Forde
// This challenge took me [1hr 20m] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// // Pseudocode
// // Iterate through the votes object, and tally votes for each person. Compare the total votes to rest of votes to determine which position each person will win, then push winners to officers object.

// // __________________________________________
// // Initial Solution

// for (var student in votes) {
//   for (var position in votes[student]) {
//    voteCount[position][votes[student][position]] = voteCount[position][votes[student][position]] || 0
//    voteCount[position][votes[student][position]] +=1
//   }
// };


// var maxCount = {}
// for (var position in voteCount) {
//   for (var candidate in voteCount[position]) {
//     maxCount[position] = maxCount[position] || voteCount[position][candidate]
//     officers[position] = officers[position] || candidate
//     if (maxCount[position] < voteCount[position][candidate]) {
//         maxCount[position] = voteCount[position][candidate];
//         officers[position] = candidate;
//         }
//     }
// };

// console.log(officers)
// console.log(voteCount);


// __________________________________________
// Refactored Solution


for (var student in votes) {
  for (var position in votes[student]) {
    var studentVotes = [votes[student][position]]
   voteCount[position][studentVotes] = voteCount[position][studentVotes] || 0
   voteCount[position][studentVotes] +=1
  }
};


var maxCount = {}
for (var position in voteCount) {
  for (var candidate in voteCount[position]) {
    var voteCounts = voteCount[position][candidate]
    maxCount[position] = maxCount[position] || voteCounts
    officers[position] = officers[position] || candidate
    if (maxCount[position] < voteCounts) {
        maxCount[position] = voteCounts;
        officers[position] = candidate;
        }
    }
};

console.log(officers)


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// Iterating over nested objects isn't all that difficult, but getting the right values is the hard part.

// Were you able to find useful methods to help you with this?
// Not really we kept it really simple and iterated through each object without any methods.  We were trying to find a way to work .max into our iteration but weren't sure it would save us any time.

// What concepts were solidified in the process of working through this challenge?
// Accessing values within nested objects.  My pair was really good at it and it helped to have someone explain what was going on while we were working our way down through the object values.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)