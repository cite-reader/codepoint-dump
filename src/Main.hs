module Main where

import Codepoints (codepoints)

main :: IO ()
main = getContents >>= putStrLn . codepoints
