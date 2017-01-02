module BlackBlue where
  pairs arr = [(a, b) | a <- arr, b <- arr, a < b]
