module Lib
  ( someFunc,
    testTree,
  )
where

import Graph.Tree (Tree (..), findValue, printTree, sortTree)

someFunc :: IO ()
someFunc = putStrLn "Wellcom to lanl2tz's library!"

testTree :: IO ()
testTree = printTree $ sortTree [5, 4, 6, 4, 3, 1, 8, 9, 6, 5, 3, 7, 6, 3, 4, 9, 1]