% Klocki-rekurencja

% na(X,Y)
% opis: spe�niony, gdy X le�y bezpo�rednio na Y
	na(d,c).
	na(c,a).
	na(c,b).
	na(a,e).
	na(b,g).
% nad(X,Y)
% opis: spe�niony, gdy X le�y nad Y niekoniecznie bezpo�rednio 

% Definicja rekurencyjna:

% Warunek zako�czenia rekurencji: X le�y nad Y,
% je�eli X le�y na Y.
	nad(X,Y):-
		na(X,Y).

% Rekurencja: je�eli X le�y nad Y, ale nie na Y,
% to istnieje klocek Z, taki �e X le�y na Z,
% a Z le�y nad Y
	nad(X,Y):-
		na(X,Z),
		nad(Z,Y).