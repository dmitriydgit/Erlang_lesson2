% P02 (*) Найти два последних элемента списка:
% Пример:
% 1> lesson2_task02:but_last([a,b,c,d,e,f]).
% [e,f]

-module(lesson2_task02).

-export([but_last/1]).

but_last([])->
	[];
but_last([H|[]])->
	[H];
but_last([H,H1|[]])->
	[H,H1];
but_last([_|T])->
	but_last(T).

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

but_last_test_() -> [
	?_assert(but_last([a,b,c,d,e,f]) =:= [e,f]),
	?_assert(but_last([]) =:= []),
	?_assert(but_last([a]) =:= [a])].
-endif.