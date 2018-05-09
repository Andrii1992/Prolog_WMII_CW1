

znak1 x = if x < 0 then (-1) else
	  if x==0 then 0 else 1
znak2 x
	| x>0   = 1
	| x==0  = 0
	| x<0   = (-1)

liczba x = case znak2 x of
	(-1) -> "ujemna"
	0 -> "zero"
	1 -> "dodatnia"

-- definiowanie za pomoc¹
-- dopasowanie do wzorca
-- lub-logiczna
lub False False = False
lub _ _ = True

silnia :: Integer -> Integer
silnia 0 = 1
silnia n |n>0 = n*silnia (n-1)
         |otherwise = error "ujemny arg"