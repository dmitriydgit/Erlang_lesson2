% P06 (*) Определить, является ли список палиндромом:
% Пример:
% 1> lesson2_task06:is_palindrome([1,2,3,2,1]).
% true

-module(lesson2_task06).

-export([is_palindrome/1]).

is_palindrome(List)->
	is_palindrome(List,List,[]).

is_palindrome(List,[],NewList)->
	case List == NewList of
    	true  -> true;
    	false -> false
   	end;
  
is_palindrome(List,[H|T],NewList)->
	is_palindrome(List,T,[H|NewList]).


-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

is_palindrome_test_() -> [
	?_assert(is_palindrome([a,b,c,b,a]) =:= true),
	?_assert(is_palindrome([a,b,c,b]) =:= false),
	?_assert(is_palindrome([]) =:= true)].
-endif.
