module Multi where
  multiTable n = [(a,b,a*b) | a <- [1..n], b <- [1..n], a <= b]
