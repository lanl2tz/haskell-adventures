module Lib
  ( someFunc,
    testTree,
  )
where

import Graph.Tree (Tree (..), findValue)

someFunc :: IO ()
someFunc = putStrLn "Wellcom to lanl2tz's library!"

testTree :: IO ()
testTree = print $ findValue 1 (Node 2 (Node 1 Empty Empty) Empty)