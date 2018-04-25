--Definicja prostej funkcji
--Funkcja pirwsza: sta³a 5 o nazwie rozmiar

rozmiar = 5 --rozmiar stala   --Integer Hs
-- HS znaczy haskell sam nadal typ
 --Funkcja2: f(x)=x*x
kwadrat x = x*x                --argumet i wynnik tego samego typu

--Funkcja2: q(x,y)= x^2+y^2        --HS
suma_kw x y = kwadrat x 
            + kwadrat y

--Funkcja4 p->q<-> nie p plub q
imp p q = p || q                   --HS    ord pozadek 

--Funkcja5: sprawdza czy argumet1 > arg2
pirwszy_wk x y = x>y               --HS
  
f1 x y = x+y
--f1 :: Num a => a -> a -> a

f2 (x,y) = x+y 
--f2 :: Num a => (a,a) -> a


--kwadr :: Num a-> a ->a
--kwadr :: Integer ->Integer
--kwadr x y = x*x

f :: Floating a => a -> a -> a
f x y = (3 *x + 7*(y^3)) / (x*(sin(x*y)))

--typy poszczegolnych typów dzialan


-- + - * / ^ ^^ ** mod div



--Fractional  ulamek



-- Main> rozmiar^^2
-- ERROR - Cannot infer instance
-- *** Instance   : Fractional Integer
-- *** Expression : rozmiar ^^ 2

-- Main> rozmiar^2
-- 25
-- ** potegowanie zmiennoprzecinakowe

 {-
 wynniki
 Main> rozmiar
5
Main> kwadrat 5
25
Main> kwadrat rozmiar
25
Main> kwadrat (rozmiar-7)
4
Main> kwadrat rozmiar-7
18
Main> kwadrat rozmiar - rozmiar
20
Main> kwadrat rozmiar + rozmiar
30
Main> kwadrat (rozmiar - rozmiar)
0
Main> sin  (5 -6)
-0.841470984807897
Main> 

Main> suma_kw 2 (-4) -- minus w nawiasach 
20


Main> imp True False
True
Main> imp False False
False
Main> imp (4>5) (6==6)
True


Main> pirwszy_wk "ala" "ola"
False

Main> pirwszy_wk [5,5,5,5,2] [6,6,6]
False
Main> pirwszy_wk [5,5,5,5,2,5] [6,6,6]
False
Main> pirwszy_wk [7,7,7] [6,6,6]
True
Main> pirwszy_wk [7,7,7,2] [6,6,6]






--f1 x y = x + y
--f1 int -> int -> int



--f2 (x,y) = x + y
--f2 (int,int) -> int

konkatynacja dodawanie list
Main> :t (++)
(++) :: [a] -> [a] -> [a]


typ duze literki



Klase typów

Num -kalsa typów liczbowych
Eq wiadomo  co znaczy ruwnosc




--------------------------------------------------
Main> :t 5
5 :: Num a => a
Dowolny typ numeryczny
--------------------------------------------------
Main> :t rozmiar
rozmiar :: Integer
nie moge uzyc rozmiaru do funkcji sin






:t -- jaki typ



lista ma zawsze ma jeden tym dkia wszystkich wartosci

['2','4'] [char]


Krotka dowolne typy ale skonczona 

('2',True) (Char,Bool)








 int zakres ograniczony 
 Integer ograniczony pomiecia komputera
 
 
 -}
 
 
 {-
Czciaka taka sama szyrokosc   "Consolas" pgrubiona

nazwa_funkcji  parametry_funkcji

-- komebtaz konca linii
suma_cigu :: Integer :: Integer ->
                        
suma_cigu          x = x*(x+2) 
                     `div`2

w tej samej kolumnie wszsystko pisac bo z nowej kolumnie nowa definicja \

lamac  

jedna definicja w tej samej kolumnie

-}
 
 
 