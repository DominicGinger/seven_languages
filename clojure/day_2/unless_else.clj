(defn unless
  [test body elseBody]
  (list 'if(list 'not test) body elseBody))
