factorial(0, 1).
factorial(N, Result) :-  
    N > 0,  
    N1 is N - 1,  
    factorial(N1, R1),  
    Result is N * R1.

sumar_numeros([], 0).
sumar_numeros([C|Cola], Suma) :-  
    sumar_numeros(Cola, Scola),  
    Suma is C + Scola.
