module Count where
  third x = x:(third(x + 3))

  fifth y = y:(fifth(y + 5))

  eigth x y = zipWith(+) (third x) (fifth y)

