//Deal a random card
var deal = function() {
  var card = Math.floor(Math.random()*52+1);
  return card;
}

//Deal user cards
var card1 = deal();
var card2 = deal();

//first hit
var card5 = deal();
//second hit
var card6 = deal();
//third hit
var card10 = deal();
var card12 = deal();

//Dealer hand
var card3 = deal();
var card4 = deal();

//first hit
var card7 = deal();
//second hit
var card8 = deal();
//third hit
var card9 = deal();
var card11 = deal();



var getValue = function(card) {
    if (card % 13 === 0 || card % 13 === 11 || card % 13 === 12) {
        return 10;
    }
  // Ace choice needs to be added for potential 1
    else if (card % 13 === 1) {
      return 11;
    }
  // Value
    else {
        return card%13;
    }
};


// Score the hand
function score() {
  return getValue(card1) + getValue(card2);
}
// Score dealer's hand
function score2(){
  return getValue(card3) + getValue(card4);
}

//Your hand vs dealer
var yourHand = score(card1, card2);
var dealerHand = score2(card3, card4);

if (yourHand == 21 || dealerHand == 21){
    if (yourHand == 21){
      console.log('BLACKJACK, YOU WIN!');
    }
    else {
      console.log('DEALER HAS BLACKJACK, YOU LOSE!');
    }
}

//Show your hand
// console.log(getValue(card1));     //Want to show both cards

//Output of hand totals
console.log('You have a ' + score(card1, card2));
console.log('Dealer has ' + score2(card3, card4));


//set up user choices
var choice = prompt('Would you like to HIT, STAY or FOLD?').toUpperCase();


// User decisions
switch (choice) {
  case 'HIT' :
    yourHand += getValue(card5);
    if (yourHand > 21){
      console.log('Your hand is ' + yourHand);
      throw new Error("You BUST!");
    } else if (yourHand <= 21){
      console.log(yourHand);
      var choice2 = prompt('HIT again? (Y/N)').toUpperCase();
        if (choice2 = 'Y'){
          yourHand += getValue(card6);
        }  else if (yourHand > 21){
              throw new Error("You BUST!");
        }
        else {
          console.log('Your hand is ' + yourHand);
        }
    }
  case 'STAY' :
    console.log('You stay with ' + yourHand);
    break;

  case 'FOLD' :
    throw new Error("You FOLD!");
    break;
}


//Dealer must hit showing under 17
while (dealerHand < 17){
    dealerHand += getValue(card7);       // needs to be a new card
    console.log('Dealer HITS and has ' + dealerHand);
      if (dealerHand < 21 && dealerHand > 17){
        console.log('Dealer STAYS with ' + dealerHand);
      }
      if (dealerHand > 21){
        console.log('Dealer HITS and BUSTS with ' + dealerHand)
        console.log('YOU WIN!');
     }else{
        console.log('Dealer has ' + dealerHand)
      }

}

if (dealerHand > yourHand && dealerHand <= 21){
  console.log('DEALER WINS!');
 } else if (dealerHand < yourHand && yourHand <= 21){
   console.log('YOU WIN!');
 }


//Reflection
// What was the most difficult part of this challenge?

// What did you learn about creating objects and functions that interact with one another?

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// How can you access and manipulate properties of objects?