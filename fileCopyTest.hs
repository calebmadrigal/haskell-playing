import System.Environment
import qualified Data.ByteString.Lazy as B

main = do
    (src:dst:_) <- getArgs
    copyFile src dst

copyFile :: FilePath -> FilePath -> IO ()
copyFile src dst = do
    contents <- B.readFile src
    B.writeFile dst contents
