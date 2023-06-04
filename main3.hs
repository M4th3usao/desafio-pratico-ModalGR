-- INTRUÇÕES DE EXECUÇÃO PARA O EXERCÍCIO 3: 

-- Para que esse programa seja executado é necessário instalar o cabal e a dependência split.

-- Basta utilizar os comandos abaixo, no terminal referente a aplicação:

-- cabal update
-- cabal install split

import Data.List.Split (splitOn)

parseData :: String -> ([Int], [String])
parseData input = (numericData, stringData)
  where
    values = splitOn "," input
    numericData = [read value :: Int | value <- values, isNumeric value]
    stringData = [value | value <- values, not (isNumeric value)]
    isNumeric value = case reads value :: [(Int, String)] of
                        [(_, "")] -> True
                        _ -> False

main :: IO ()
main = do
  putStrLn "Insira os dados para que sejam tratados:"
  input <- getLine
  let (numericData, stringData) = parseData input
  putStrLn "Dados Numéricos:"
  print numericData
  putStrLn "Dados em String:"
  print stringData



