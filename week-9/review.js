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