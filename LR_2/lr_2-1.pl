%Нехвостовая рекурсия.    fib(10, Z)

fib(0, 0):- !.
fib(1, 1):- !.

fib(N, Res) :-
N1 is N - 1,
fib(N1, Res_1),
N2 is N - 2,
fib(N2, Res_2),
Res is Res_1 + Res_2.

%Хвостовая рекурсия.    fib_tail(10, 0, 1, Z)

fib_tail(0, PreLast, _, Res) :- Res is PreLast, !.

fib_tail(N, PreLast, Last, Res) :-
NewLast is PreLast + Last,
NewN is N - 1,
fib_tail(NewN, Last, NewLast, Res).