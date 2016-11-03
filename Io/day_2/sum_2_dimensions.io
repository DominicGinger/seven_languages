sumTwoDimensions := method(input,
  input reduce(l, v, l append(v sum)) sum
)

arr := list(list(1,2,3),list(4,5,6),list(2))
sumTwoDimensions(arr) println

