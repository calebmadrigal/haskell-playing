import qualified Data.ByteString.Lazy as B
import System.Environment
import Data.Bits
import Data.Char
import IO

main = do 
    (infile:outfile:_) <- getArgs
    putStr "password: "
    hFlush stdout
    pw <- getLine
    contents <- B.readFile infile
    B.writeFile outfile $ bsFromString (xorEncrypt pw contents)

xorEncrypt pw bString = map (chr . fromIntegral) $ B.zipWith xor (bsFromString (cycle pw)) bString

bsFromString s = B.pack (map (fromIntegral . ord) s)

stringFromBs bs = map (chr . fromIntegral) (B.unpack bs)
