aresta(1,2).
aresta(1,3).
aresta(3,5).

tamanho([],0).
tamanho([_|RABO],T) :- tamanho(RABO,W),T is W+1.

lista(X,Lista) :- findall(W,adjacente(X|W),Lista).

adjacente(X,Y) :- aresta(X,Y).

caminho([X|E2]) :- aresta(X,E2). 
caminho([_|R]) :- caminho(R).









