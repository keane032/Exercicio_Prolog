adcionar(X,L1,[X|L1]).

apaga(VALOR,[VALOR|RABO],RABO).
apaga(VALOR,[CAB|RABO],[CAB|RABO1]) :- apaga(VALOR,RABO,RABO1). 

concatena([],B,B).
concatena([A|B],C,[A|D]) :- concatena(B,C,D).

menbro(X,[X|_]).
menbro(X,[W|L]) :- menbro(X,L).

comprimento([],0).
comprimento([_|RABO],S) :- comprimento(RABO,COMTADOR),S is 1+COMTADOR.

