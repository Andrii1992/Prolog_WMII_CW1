dodatni(X):-X>0.

lista_dodatnia(L):-
        maplist(dodatni,L).