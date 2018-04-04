% Wywo³anie predykatów dla ka¿dego
% elementu listy

% Predykaty

% dodatni(X)
% spe³niony, gdy X liczb¹ dodatni¹

	dodatni(X):-X>0.

% lista_dodatnia(L)
% spe³niony, gdy wszystkie elementy listy
% s¹ dodatnie

	lista_dodatnia(L):-
		maplist(dodatni,L).


% wiêkszy_od(X,Y)
% spe³niony, gdy Y jest wiêksze od X

	wiekszy_od(X,Y):- Y>X.

% wiekszy_od_lista(+X,+L).
% spe³niony, gdy wszystkie elementy listy L
% s¹ wiêksze od X

	wiekszy_od_lista(X,L):-
		maplist(wiekszy_od(X),L).


% wieksza_lista(+L1,+L2)
% spe³niony,  gdy elementy listy L1 s¹ wiêksze od L2
% L1=[x1,...,xn], L2=[y1,...,yn] xi>yi, i=1,...,n

	wieksza_lista(L1,L2):-
		maplist(wiekszy_od,L2,L1).


% kwadrat(+X,?Y)
% spe³niony, gdy Y =X*X

	kwadrat(X,Y):- Y is X*X.

% kwadrat_lista(+L1,?L2)

	kwadrat_lista(L1,L2):-
		maplist(kwadrat,L1,L2).

% podziel(+L1,?L2,?L3)
% spe³niony,  gdy lista L2 zawiera liczby z listy L1
% a L3 pozosta³e elementy

	podziel([],[],[]).

	podziel([H|T],[H|T1],L2):-
		number(H),
		podziel(T,T1,L2).
	podziel([H|T],L1,[H|T2]):-
		not(number(H)),
		podziel(T,L1,T2).

	podziel1(L1,L2,L3):-
		partition(number,L1,L2,L3).

% odwrotna(+L1,L2)
% spe³niony, gdy lista L2 jest odwróceniem listy L1
% ---------------------------------------------
	odwrotna(L1,L2):-odwrotna_ak(L1,[],L2).

% odwrotna_ak(+L1,A,L2) - wersja z akumulatorem
% spe³niony, gdy L2 jest po³¹czeniem listy odwrotnej
% do L1 i listy A (akumulatora)
% ---------------------------------------------

% warunek koñcz¹cy rekurencjê: je¿eli L1 jest list¹
% pust¹, wtedy L2=A
	odwrotna_ak([],A,A).

% rekurencja
	odwrotna_ak([H|T],A,L2):-
			odwrotna_ak(T,[H|A],L2).

% konkat(L1,L2,L3)
% spe³niony, gdy L3 jest po³¹czeniem list L1 i L2
% ----------------------------------------------

% rekurencja ze wzglêdu na liste L1:

% warunek koñcz¹cy rekurencjê: po³¹czenie listy
% pustej z list¹ L daje listê L
	konkat([],L,L).

% rekurencja:
% g³owa list L3 jest g³ow¹ listy L1
% ogon listy L3 jest po³¹czeniem ogona listy L1
% z list¹ L2
	konkat([H1|T1],[H1,T3]):-
		konkat(T1,L2,T3).

