fatorial(0,1).
fatorial(N,F):-N > 0,N1 is N-2,fatorial(N1,F1),F1 is N * F.




