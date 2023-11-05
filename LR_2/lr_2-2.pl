%Удалить каждый n-й элемент списка, написать программу с хвостовой рекурсией
del_N(N,List,Res) :- del_N(N,List,1,Res), !.

del_N(N,[H|T],Count,[H|T1]) :- Count<N, NewCount is Count+1, del_N(N,T,NewCount,T1).
del_N(N,[_|T],_,Res) :- !, del_N(N,T,1,Res).
del_N(_,[],_,[]).


%Выполнить удаления в списке списков
list_of_lists_deln(_,[],[]):- !.
list_of_lists_deln(0, [H|T], [H|T]):- !.
list_of_lists_deln(N, [H1|T1], [H2|T2]):- del_N(N,H1,H2),list_of_lists_deln(N,T1,T2).