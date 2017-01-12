module Convert where
  toNum str =
    read (filter (not . (`elem` "$,")) str) :: Float
