Matrix := List clone

Matrix dim := method(x, y,
  for(i, 1, y, 
    a := List clone
    for(j, 1, x, 
      a append(0)
    )
    self append(a)
  )
)

Matrix set := method(x, y, value,
  self at(x) atPut(y, value)
)

Matrix get := method(x, y,
  self at(x) at(y)
)

Matrix transpose := method(
  new_matrix := Matrix clone
  for(i,0,self at(0) size-1,
    new_matrix append(list())
    for(j,0,self size-1,
      new_matrix at(i) append(self at(j) at(i))
      new_matrix at(i) at(j)
    )
  )
  new_matrix
)

Matrix save := method(filename,
  f := File clone openForUpdating(filename)
  for(i,0,self size-1,
    for(j,0,self at(0) size-1,
      f write(self get(i,j) asString)
    )
    f write("\n")
  )
  f close
)

Matrix read := method(filename,
  f := File with(filename)
  lines := f readLines
  f close
   
  q := Matrix clone
  for(i,0, lines size-1,
    q append(list())
    for(j,0, lines at(i) size-1,
      q at(i) append(lines at(i) at(j) asNumber -48)
    )
  )
  q
)

Matrix puts := method(
  for(i, 0, self size-1,
    for(j, 0, self at(i) size-1,
      self at(i) at(j) print
    )
    "" println
  )
)

m := Matrix clone
m dim(7,10)
m println

m set(1,2,1)
m set(7,1,1)
n := m transpose

(m get(1,2) == n get(2,1)) println
(m get(7,1) == n get(1,7)) println

m save("matrix.txt")
m read("matrix.txt") puts


