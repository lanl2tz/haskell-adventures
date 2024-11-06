module Graph.Tree
  ( Tree (..),
    findValue,
  )
where

import Prelude

-- binary tree
data Tree a
  = Empty
  | Node a (Tree a) (Tree a)
  deriving (Show)

findValue :: (Eq a) => a -> Tree a -> Maybe a
findValue _ Empty = Nothing
findValue x (Node a left right)
  | a == x = Just a
  | findValue a left /= Nothing = findValue a left
  | findValue a right /= Nothing = findValue a right
  | otherwise = Nothing