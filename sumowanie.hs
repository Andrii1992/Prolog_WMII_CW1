{- 	SUMA f(n) = f(a0) + f(a1)+...+f(ak) 
	a0 = a , ak <= b <= ak+1,   ai = next(ai-1),    i =1,..,k
	(funkcja next wyznacza kolejny argument funkcji f) 
-}

--Funkcje wy¿szego rzêdu

suma :: (Ord a, Num b) => (a -> b) -> a -> (a -> a) -> a -> b
suma f a next b
     |a > b 	= 0
     |otherwise = (f a) + suma f (next a) next b 


suma_liczb :: (Num a, Ord a) => a -> a -> a
suma_liczb a b = suma f a next b
		where   
			f x = x
			next x = x+1
{-
Main> suma_liczb 1 4
10
Main> suma (\x->x) 1 (\x->x+1) 4
10
-}

suma_liczb_2 a b = suma f a next b
	where
		f x = x*x-x
		next x = x+1


{- HASKEL CWICZENIE 3 -}

pi_suma n = 8*suma f 1 next (n*4)
	where
		f x = 1/(x*(x+2))
		next x = x+4


calka funkcja a b dx = dx*suma fun a next b
	where
		fun x = funkcja (x+dx/2)
		next x = x + dx

{- Main> calka (\x->exp(-x*x)/x) 1 2 0.01
0.107797864290807
-}


--calka (\x-> sqrt x * sin x) (pi/6) (pi/2) 0.01  
--0.903611288520144















