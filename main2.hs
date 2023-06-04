isElemDuplicate :: [Int] -> [Int] -> [Int]
isElemDuplicate xs ys = filter (`elem` ys) xs

main :: IO ()
main = do
  let vector1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 12, 13, 41, 15, 16, 17, 18, 38, 20]
  let vector2 = [15, 17, 19, 20, 23, 25, 2, 29, 31, 33, 35, 38, 39, 41, 43, 45, 47, 49]
  let duplicates = isElemDuplicate vector1 vector2
  putStrLn "Os números duplicados são:"
  print duplicates