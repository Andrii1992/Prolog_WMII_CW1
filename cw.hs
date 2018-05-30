fx :: Num a => a -> a 
fx x = 3*x-2
f_lista1 :: Num a => [a] -> [a]
f_lista1 [] = []
f_lista1 (x:xs) = fx x : f_lista1 xs




f_lista2 xs = [fx x | x <- xs]


f_lista3 xs = map fx xs 


lista xs = map (\x -> 3*x - 2 ) xs




