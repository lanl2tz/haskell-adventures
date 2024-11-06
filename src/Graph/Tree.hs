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
  | x == a = Just a
  | otherwise = case findValue x left of
      Just val -> Just val
      Nothing -> findValue x right