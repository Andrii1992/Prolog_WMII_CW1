wypisz_lista([]).

wypisz_lista([H|T]):-
                     write(H), %pojesynczy_predykat
                     nl,   %now_linia
                     wypisz_lista(T).

%do_zad1