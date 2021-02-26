% P15 (**) Написать функцию-репликатор всех элементов входящего списка:
% Пример:
% 1> lesson2_task15:replicate([a,b,c], 3).
% [a,a,a,b,b,b,c,c,c]


-module(lesson2_task15).

-export([replicate/2]).


replicate(List,Qty)->
	replicate(List,Qty,[]).

replicate([],Qty,Acc) when is_integer(Qty)->
	reverse(Acc);
replicate([H|T],Qty,Acc)->
	MemAcc=makeList(H,Qty,[]),
	replicate(T,Qty,MemAcc++Acc).

%MemAcc

makeList(H,Qty,Acc1)->
	case Qty==1 of
		true -> [H|Acc1];
		false -> makeList( H,Qty-1,[H|Acc1])
	end.

% реверс

reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).




-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

replicate_test_() -> [
	?_assert(replicate([a,b,c], 3) =:= [a,a,a,b,b,b,c,c,c]),
	?_assert(replicate([],2) =:= [])].
-endif.