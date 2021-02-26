% P03 (*) Найти N-й элемент списка:
% Пример:
% 1> lesson2_task03:element_at([a,b,c,d,e,f], 4).
% d
% 2> lesson2_task03:element_at([a,b,c,d,e,f], 10).
% undefined

-module(lesson2_task03).

-export([element_at/2]).

element_at([],1) ->
	"";
element_at([H|_T],1) ->
	H;
element_at([_H|T],N) ->
	element_at(T,N-1).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

element_at_test_() -> [
	?_assert(element_at([a,b,c,d,e,f],4) =:= d),
	?_assertException(error, function_clause, element_at([a,b,c,d,e,f],8)),
	?_assert(element_at([],1) =:= "")].
-endif.