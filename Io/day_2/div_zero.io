"Before" println
(10/0) println
(10/5) println
(10/3) println

default := Number getSlot("/")
Number / := method(a, if(a == 0, 0, self default(a)))
"..." println

"After" println
(10/0) println
(10/5) println
(10/3) println
