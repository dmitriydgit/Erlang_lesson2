% P07 (**) Выровнять структуру с вложеными списками:
% Пример:
% 1> lesson2_task07:flatten([a,[],[b,[c,d],e]]).
% [a,b,c,d,e]

-module(lesson2_task07).

-export([flatten/1]).


flatten(List) ->
    reverse(flatten(List, [])).

flatten([], Acc) ->
    Acc;
flatten([[]|Tail], Acc) ->
    flatten(Tail, Acc);
flatten([[Head|Tail]|Tail1], Acc) ->
    NewAcc = flatten(Tail, [Head|Acc]),
		flatten(Tail1, NewAcc);
flatten([Head|Tail], Acc) ->
    NewAcc = [Head|Acc],
    flatten(Tail, NewAcc).

reverse(List) -> 
	reverse(List, []).

reverse([], Acc) -> 
	Acc;
reverse([H | T], Acc) -> 
	reverse(T, [H | Acc]).




-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

flatten_test_() -> [
	?_assert(flatten([a,[],[b,[c,d],e]]) =:= [a,b,c,d,e]),
	?_assert(flatten([]) =:= [])].
-endif.