//Initial Solution

var groceryList = [];

  function addItem(item, quantity){
      groceryList.push(item, quantity);
  }

  function showList(){
     for (var i = 0; i < groceryList.length; i++){
        if (groceryList.length == 0)
          return;
       else
        console.log(groceryList[i]);
     }
  }

  function removeItem(item){
    for (var i = 0; i <= groceryList.length; i++){
      if (groceryList[i] === item)
        groceryList.splice(i, 2);
    }
  }

  function changeQuantity(item, quantity){
    for (var i = 0; i < groceryList.length; i++){
      if (groceryList[i] === item)
        groceryList.splice(i, 2);
      }
      groceryList.push(item, quantity);
    }




//Driver
// addItem('beer', 6)
// addItem('chips', 2)
// addItem('eggs', 5)
// showList();

// removeItem('chips')
// showList();

// changeQuantity('beer', 12)
// showList();


//Refactor (object instead of array)

function groceryList() {
    this.list = {};

    //add function
    this.add = function(item, quantity){
      // this.list ['item']['quantity']
      this.list[item] = quantity;
    };

    //display
    this.display = function(){
      for (var item in this.list){
        console.log("Item: " + item + " Quantity: " + this.list[item]);
      }
    };

    //update
    this.update = function(item, quantity){
      this.list[item] = quantity;
    };

    //remove
    this.remove = function(item){
      delete this.list[item];
    }
 }

//driver
var myList = new groceryList();
myList.add('beer', 6);
myList.add('milk', 2);
myList.add('eggs', 12);
myList.display()
myList.remove('eggs');
