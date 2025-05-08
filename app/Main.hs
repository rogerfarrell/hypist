module Main (main) where

main :: IO ()
main = do
  let srcText = "The road goes ever on and on..."
  putStrLn $ "Type: " ++ srcText
  let mainloop = do
        input <- getLine
        if checkInput srcText input
          then putStrLn "Correct"
          else do
            putStrLn "Try again"
            mainloop
  mainloop

checkInput :: String -> String -> Bool
checkInput src input = src == input
