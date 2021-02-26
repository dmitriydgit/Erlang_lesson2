% P04 (*) Посчитать количество элементов списка:
% Пример:
% 1> lesson2_task04:len([]).
% 0
% 2> lesson2_task04:len([a,b,c,d]).
% 4

-module(lesson2_task04).

-export([len/1]).

%len(List)->
%	len2(List,0).

%len2([],N)->
%	N;
%len2([_|T],N)->
%	len2(T,N+1).

len([])->
	0;
len([_H|T])->
	1+len(T).



-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

len_test_() -> [
	?_assert(len([a,b,c,d]) =:= 4),
	?_assert(len([]) =:= 0)].
-endif.




