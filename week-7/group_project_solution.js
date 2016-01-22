function sumArray(array){
  for(var index = 0, length = array.length, sum = 0; index < length; sum += array[index++]);
    return sum;
}

function mean(array){
  var total_sum = sumArray[];
  var average = total_sum / array.length;
  return average;
}


