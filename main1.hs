-- INSTRUÇÕES: 

-- Para executar a aplicação é necessário seguir os seguintes passos:

-- Executar o comando 'ghci' no terminal do git bash:
-- ghci

-- Carregar o arquivo, utilizando o comando :l nomeDoArquivo

-- E para interagir com a aplicação basta inserir a palavra 'main' no terminal.

isLowercaseA :: String -> Int
isLowercaseA xs = length $ filter (== 'a') xs

main :: IO ()
main = do
  let phrase = "Ana Maria da Silva Coração"
  let count =   isLowercaseA phrase
  putStrLn $ "Quantidade de letras 'a' minúsculas: " ++ show count