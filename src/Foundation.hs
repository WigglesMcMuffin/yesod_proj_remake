module Foundation where

import           Yesod
import           Yesod.Default.Util
import           Yesod.Form.Jquery

data App = App

{-

The Yesod typeclass allows us to alter a number of the behaviors of Yesod, such
as the default page layout, error handler functions, and how URLs are rendered.
We're going to accept all of the defaults in our application, so our instance
is pretty boring.

-}
instance Yesod App

mkYesodData "App" [parseRoutes|
/                   HomeR   GET
/api/find           FindR   GET POST
|]
