%TALLER 1
%1. De acuerdo a la siguiente imagen de árbol genealógico, construya una lógica 
%de predicados donde las relaciones directas se generen por hechos y las 
%relacion de mas de una generación se obtengan mediante reglas.
%Ejemplo: padre(homero,bart) el anterior es un hecho y corresponde a una 
%relación directa, mientras que abuelo(X,bart) puede ser una consulta hecha 
%al programa, donde la relación abuelo (que es de más de 1 generación) debe 
%ser obtenida por reglas, no por hechos.

%Relaciones de paternidad
padre(homero, bart).
padre(homero, lisa).
padre(homero, maggie).
padre(abraham, herbert).
padre(abraham, homero).
padre(clancy, selma).
padre(clancy, patty).
padre(clancy, marge).

%Relaciones de maternidad
madre(mona, herbert).
madre(mona, homero).
madre(jacqueline, patty).
madre(jacqueline, selma).
madre(jacqueline, marge).
madre(marge, bart).
madre(marge, lisa).
madre(marge, maggie).
madre(selma, ling).

%Relaciones de generos 
hombre(abraham).
hombre(clancy).
hombre(homero).
hombre(herbert).
hombre(bart).
mujer(lisa).
mujer(maggie).
mujer(ling).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(mona).
mujer(jacqueline).

%Si alguien es el abuelo
es_abuelo(Abuelo, Nieto) :- padre(Abuelo, Padre), padre(Padre, Nieto).
es_abuelo(Abuelo, Nieto) :- padre(Abuelo, Madre), madre(Madre, Nieto).

%Si alguien es la abuela
es_abuela(Abuela, Nieto) :- madre(Abuela, Padre), padre(Padre, Nieto).
es_abuela(Abuela, Nieto) :- madre(Abuela, Madre), madre(Madre, Nieto).

%Si los 2 son hermanos
es_hermano(H1, H2) :- hombre(H1), padre(Padre, H1), padre(Padre, H2), H1 \= H2.
es_hermana(H1, H2) :- mujer(H1), padre(Padre, H1), padre(Padre, H2), H1 \= H2.

%Si alguien es tio
es_tio(Tio, Sobrino) :- es_hermano(Tio, Padre), padre(Padre, Sobrino), hombre(Tio).
es_tio(Tio, Sobrino) :- es_hermano(Tio, Madre), madre(Madre, Sobrino), hombre(Tio).

%Si alguien es tia
es_tia(Tia, Sobrino) :- es_hermana(Tia, Padre), padre(Padre, Sobrino), mujer(Tia).
es_tia(Tia, Sobrino) :- es_hermana(Tia, Madre), madre(Madre, Sobrino), mujer(Tia).

%Si los 2 son primos
es_primo(P1, P2) :- es_tio(Tio, P1), padre(Tio, P2), hombre(P1), P1 \= P2.
es_prima(P1, P2) :- es_tia(Tia, P1), madre(Tia, P2), mujer(P1), P1 \= P2.

%Si los 2 son esposos 
es_esposo(Esposo, Esposa) :- padre(Esposo, Hijo), madre(Esposa, Hijo), hombre(Esposo), Esposo \= Esposa.
es_esposa(Esposa, Esposo) :- padre(Esposo, Hijo), madre(Esposa, Hijo), mujer(Esposa), Esposa \= Esposo.
