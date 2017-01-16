module Io where
  tryIo = do putStr "Enter name:";
             line <- getLine;
             let { backwards = reverse line };
                 return ("Hello. Your name backwards is " ++ backwards)
