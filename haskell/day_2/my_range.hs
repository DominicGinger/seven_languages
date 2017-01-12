module Range where
  myRange start step = start:(myRange (start + step) step)
