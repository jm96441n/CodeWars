var uniqueInOrder=function(iterable){
  var newArr = []
  var j = -1
  for(var i = 0; i < iterable.length; i ++){
    if(i == 0 || iterable[i] != newArr[j]){
    	newArr.push(iterable[i])
      j+= 1
    }

  }
  return(newArr)
}

test1 = 'AAAABBBCCDAABBB'
test2 = [1,2,2,3,3]
test3 = 'A'
test4 = 'AD'

console.log(uniqueInOrder(test1))
console.log(uniqueInOrder(test2))
console.log(uniqueInOrder(test3))
console.log(uniqueInOrder(test4))
