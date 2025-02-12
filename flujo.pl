% Clasifica un número como positivo, negativo o cero
numero_es(N, Resultado) :-  
    (N > 0 ->  
        Resultado = 'Positivo'  
    ; N < 0 ->  
        Resultado = 'Negativo'  
    ;  
        Resultado = 'Cero'  
    ).

% Cuenta desde 1 hasta N
contar_hasta(1) :-  
    write(1), nl.  

contar_hasta(N) :-  
    N > 1,  
    N1 is N - 1,  
    contar_hasta(N1),  
    write(N), nl.

% Caso base: si N es 1
descontar_hasta(1) :-  
    write(1), nl.
% Caso recursivo: cuenta desde N hasta 1
descontar_hasta(N) :-  
    N > 1,  
    write(N), nl,  % Imprime el número actual
    N1 is N - 1,  
    descontar_hasta(N1).
