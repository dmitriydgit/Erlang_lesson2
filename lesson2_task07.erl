% P07 (**) Выровнять структуру с вложеными списками:
% Пример:
% 1> lesson2_task07:flatten([a,[],[b,[c,d],e]]).
% [a,b,c,d,e]
-module(lesson2_task07).

- export([flatten/1]).


flatten(List) ->
    lists:reverse(flatten(List, [])).

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


