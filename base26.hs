import Data.Char

base26 :: Integer -> [Int]
base26 n
    | n < 26         = [fromInteger n]
    | otherwise      = (fromInteger r) : base26 d
        where (d, r) = n `divMod` 26

prime = 2^74207281 - 1

pre xs = map (+97) xs

--text :: [Integer] -> [Char]
text xs = map (chr) xs

main = do
    --print $ base26 prime
    print $ text $ pre $ base26 prime
