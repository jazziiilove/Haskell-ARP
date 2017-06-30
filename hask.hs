module Main where
import System
import System.Process
import Control.Monad
main :: IO ()
main = do  
putStrLn "Running command..."  
pid <- runCommand "arp -s 1139.179.33.1 00-15-f2-64-a3-38" -- or whatever you want  
replicateM_ 10 $ putStrLn "Doing other stuff"  
waitForProcess pid >>= exitWith