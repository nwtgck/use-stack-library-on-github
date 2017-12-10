module Main where

import MyLib

main :: IO ()
main = do
    putStrLn "myLibMessage:"
    putStrLn myLibMessage
    
    putStrLn "myLibAdd:"
    print $  myLibAdd 2 3
    
