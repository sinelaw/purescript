module Main where

import Prelude
import Control.Monad.Eff
import Debug.Trace

replicateM_ :: forall m a. (Monad m) => Number -> m a -> m {}
replicateM_ 0.0 _ = return {}
replicateM_ n act = do
  act
  replicateM_ (n - 1.0) act

main = replicateM_ 10.0 (trace "Hello World!")
