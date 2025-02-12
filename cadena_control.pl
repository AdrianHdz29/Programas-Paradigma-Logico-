% Convierte una cadena a mayúsculas
convertir_a_mayusculas(Cadena, Mayus) :-
    string_upper(Cadena, Mayus).

% Convierte una cadena a minusculas
convertir_a_minusculas(Cadena, Minus) :-
    string_lower(Cadena, Minus).

% Verifica si una palabra es un palíndromo
es_palindromo(Palabra) :-
    string_chars(Palabra, Lista),
    reverse(Lista, Lista).

%Contar cadena
contar_caracteres(Cadena, Longitud) :-
    string_length(Cadena, Longitud).

%Concatenar palabras
unir_cadenas(Lista, Resultado) :-
    foldl(string_concat, Lista, "", Resultado).

%Estraer palabras de cadenas
extraer_subcadena(Cadena, Inicio, Longitud, Subcadena) :-
    sub_string(Cadena, Inicio, Longitud, _, Subcadena).

%Descomponer cadenas
cadena_a_lista(Cadena, Lista) :-
    string_chars(Cadena, Lista).

%Comprabar contenido
contiene_subcadena(Cadena, Subcadena) :-
    sub_string(Cadena, _, _, _, Subcadena).

%Descomponer palabras de cadena
dividir_cadena(Cadena, Delimitador, Resultado) :-
    split_string(Cadena, Delimitador, "", Resultado).   