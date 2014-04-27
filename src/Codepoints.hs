module Codepoints where

import Data.Char (ord)
import Numeric (showHex)
import Data.List (intersperse)

showCodepoint :: Char -> ShowS
showCodepoint = showHex . ord

strToCodepoints :: String -> [ShowS]
strToCodepoints = map showCodepoint

addSpaces :: [ShowS] -> [ShowS]
addSpaces = intersperse (\s -> " " ++ s)

separatedCodepoints :: String -> [ShowS]
separatedCodepoints = addSpaces . strToCodepoints

render :: [ShowS] -> String
render x = foldr (.) (const "") x ()

codepoints :: String -> String
codepoints = render . separatedCodepoints
