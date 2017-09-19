progenitor(jose,joao).
progenitor(jose,ana).
progenitor(maria,joao).
progenitor(maria,ana).
progenitor(ana,helena).
progenitor(ana,joana).
progenitor(joao,mario).
progenitor(helena,carlos).
progenitor(mario,carlos).

sexo(ana,feminino).
sexo(maria,feminino).
sexo(helena,feminino).
sexo(joana,feminino).
sexo(jose,masculino).
sexo(joao,masculino).
sexo(mario,masculino).
sexo(carlos,masculino).

irma(X,Y) :- progenitor(Z,X),progenitor(Z,Y),sexo(X,feminino).
irmao(X,Y):- progenitor(Z,X),progenitor(Z,Y),sexo(X,masculino).

pai(X,Y) :- progenitor(X,Y),sexo(X,masculino).
avô(X,Z) :- progenitor(X,Y),progernitor(Y,Z),sexo(X,masculino).

mae(X,Y) :- progenitor(X,Y),sexo(X,feminino).
avó(X,Z) :- progenitor(X,Y),progenitor(Y,Z),sexo(X,feminino).

descendente(X,Z) :- progenitor(X,Z).
descendente(X,Z) :- progenitor(X,Y),descendente(Y,Z).

tio(X,Y) :- irmao(X,Z) , progenitor(Z,Y).
tia(X,Y) :- irma(X,Z), progenitor(Z,Y).

prima(X,Y) :- irmao(W,Z),progenitor(W,X),progenitor(Z,Y),sexo(X,feminino).
primo(X,Y) :- irma(W,Z),progenitor(W,X),progenitor(Z,Y),sexo(X,masculino).

