% P14 (*) Написать дубликатор всех элементов входящего списка:
% Пример:
% 1> lesson2_task14:duplicate([a,b,c,c,d]).
% [a,a,b,b,c,c,c,c,d,d]


-module(lesson2_task14).

-export([duplicate/1]).


duplicate(List)->
	reverse(duplicate(List,[])).

duplicate([],Acc2)->
	Acc2;

duplicate([H|T],Acc2)->
	duplicate(T,[H,H]++Acc2).

% реверс

reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).
