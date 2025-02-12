% Hechos: Definen relaciones básicas de parentesco
padre(juan, maria).
padre(juan, pedro).
padre(carlos, juan).
madre(ana, maria).
madre(ana, pedro).
madre(luisa, juan).

% Reglas: Definen relaciones derivadas
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

hermano(X, Y) :- 
    padre(P, X), padre(P, Y), 
    madre(M, X), madre(M, Y), 
    X \= Y.

abuelo(X, Y) :- padre(X, Z), (padre(Z, Y) ; madre(Z, Y)).
abuela(X, Y) :- madre(X, Z), (padre(Z, Y) ; madre(Z, Y)).

% Hechos: información sobre las personas
tiene_pasaporte(juan).
tiene_pasaporte(maria).
tiene_pasaporte(carlos).
tiene_visa(juan).
tiene_visa(carlos).
tiene_dinero(maria).
tiene_dinero(carlos).

% Reglas: definir condiciones para viajar
puede_viajar(Persona) :- 
    tiene_pasaporte(Persona), 
    tiene_visa(Persona), 
    tiene_dinero(Persona).