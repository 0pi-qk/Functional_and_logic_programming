man('Sasha').
man('Grisha').
man('Danil').
man('Artem').
man('Anatoliy').

woman('Masha').
woman('Liza').
woman('Olga').
woman('Diana').
woman('Dasha').

married('Danil','Masha').
married('Artem','Diana').
married('Anatoliy','Dasha').

parent('Artem','Masha').
parent('Diana','Masha').
parent('Artem','Diana').
parent('Diana','Diana').
parent('Artem','Liza').
parent('Diana','Liza').
parent('Danil','Sasha').
parent('Masha','Sasha').
parent('Anatoliy','Grisha').
parent('Diana','Grisha').
parent('Anatoliy','Olga').
parent('Diana','Olga').

sister(X,Y):- woman(X), parent(Z, X), parent(Z, Y), X \= Y.
grandmother(X,Y):- woman(X), parent(X,Z), parent(Z,Y).
grandson(X,Y):- man(X), parent(Y,Z), parent(Z,X).

aunt(X,Y):- woman(X), parent(Z,Y), sister(X,Z).
brother_or_sister(X,Y):-  parent(Z, X), parent(G, Y), Z = G, X \= Y.
nephew(X,Y):- man(X), parent(Z,X), brother_or_sister(Z,Y).
teascha(X,Y):- woman(X), man(Y), married(Y,Z), parent(X,Z), woman(Z).