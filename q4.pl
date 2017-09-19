concatena([],B,B).
concatena([A|B],C,[A|D]) :- concatena(B,C,D).

inverte([],[]).
inverte([H|L1],R):-inverte(L1,L2),concatena(L2,[H],R).

