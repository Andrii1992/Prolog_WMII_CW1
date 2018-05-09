--Definicje lokalne

ob_kuli1 r = 4/3*pi*r*r*r

--Klauzula where

ob_kuli2 r = a * pi * sz
	where
		a = 4/3
		sz = r * r * r

ob_kuli3 r = a * pi * sz r
	where
		a = 4/3
		sz x = x * x * x

a=5

--Wyrazenie let ... in

ob_kuli4 r = let 
	a = 4/3
	sz = r * r * r
	in
	a * pi * sz

--f1(x) = ok*2-7 : let
f1 r = (let 
	a = 4/3
	sz = r * r * r
	in
	a * pi * sz) *2 -7

{-
--f2(x) = ok*2-7 : where
f2 r = (a * pi * sz r
	where
		a = 4/3
		sz x = x * x * x) *2 -7
f2 1
ERROR file:.\def lokalne.hs:37 - Syntax error in expression (unexpected keyword "where")
Niepopranie: definicja z where nie moze byc uzyta jako wyrazenie!
-}

--f2(x) = ok*2-7 : where
f2 r = a * pi * sz r *2 -7
	where
		a = 4/3
		sz x = x * x * x

f3 :: Floating a => a -> a -> a  --typ ogólny
--f3 :: Float->>Float->Float     --typ konkretny
--f3 ::Double ->Double->Double   --typ konkretny

--f3(x,y)=2(x+2)^2 + 3 sin(x+y) / sin^3(x+y)* 5(y+2)^2
--f3 x y =(2*b x + 3*a) / (a*a*a * 5 * b y)
f3 x y =(2*b x + 3*a) / a^3/5/b y
 	where
		a = sin(x+y)
		b z = (z+2)^2