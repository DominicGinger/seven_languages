module MapColour where
  colours = ["red", "green", "blue"]
  colour = [(a, m, g, t, f) | a <- colours, m <- colours, g <- colours, t <- colours, f <- colours,
    a /= m, a /= g, a /= t, a /= f,
    m /= t,
    g /= t, g/= f]
