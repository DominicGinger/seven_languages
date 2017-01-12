module Sort where
  sort [] = []
  sort list = head:tail
    where head = minimum list
          tail = sort( filter (/= head) list)

  funSort _ [] = []
  funSort fn list = head:tail
    where head = fn list
          tail = sort( filter (/= head) list)
