% P01 (*) Найти последний элемент списка:
% Пример:
% 1> lesson2_task01:last([a,b,c,d,e,f]).
% f
%[1,2,3,4,5,6,7]

-module(lesson2_task01).

-export([last/1]).


last([]) ->
	[];
last([H|[]]) ->
	H;
last([_|T]) ->
	last(T).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

last_test_() -> [
	?_assert(last([a,b,c,d,e,f]) =:= f),
	?_assert(last([]) =:= [])].
-endif.