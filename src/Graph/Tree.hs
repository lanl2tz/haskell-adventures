module Graph.Tree
  ( Tree (..),
    findValue,
    sortTree,
    printTree,
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

insertTree :: (Ord a) => a -> Tree a -> Tree a
insertTree x Empty = Node x Empty Empty
insertTree x (Node y left right)
  | x < y = Node y (insertTree x left) right
  | otherwise = Node y left (insertTree x right)

sortTree :: (Ord a) => [a] -> Tree a
sortTree [] = Empty
sortTree (x : xs) = insertTree x (sortTree xs)

printTree :: (Show a) => Tree a -> IO ()
printTree Empty = print ""
printTree (Node x Empty Empty) = print x
printTree (Node x left Empty) = printTree left >> print x
printTree (Node x Empty right) = print x >> printTree right
printTree (Node x left right) = printTree left >> print x >> printTree right