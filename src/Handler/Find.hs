module Handler.Find where

import Import

getFindR :: Handler Value
getFindR = return $ object ["value" .= (2 :: Int) ]

--postFindR :: Handler Value
--postFindR = return $ sendResponse ()

postFindR :: Handler Value
postFindR = return $ object ["value" .= ()]