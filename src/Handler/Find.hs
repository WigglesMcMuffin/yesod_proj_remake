module Handler.Find where

import Import

fibs :: [Int]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

getFindR :: Handler Value
getFindR = return $ object ["value" .= (fibs !! 2)]