input := 40

fibloop := method(num, 
  a := 1
  b := 1
  for(c,2,num,
    b = b + a
    a = b - a
  )
  a
)

fibloop(input) println

fibrecur := method(a,b,limit,
  if(limit == 2, b, fibrecur(b,a+b,limit-1))
)

fibrecur(1,1,input) println

