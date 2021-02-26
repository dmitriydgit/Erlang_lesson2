% P08 (**) Удалить последовательно следующие дубликаты:
% Пример:
% 1> lesson2_task08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [a,b,c,a,d,e]

-module(lesson2_task08).

-export([compress/1]).

compress(List)->
	compress(List, []).

compress([], Acc)->
	reverse(Acc);
compress([H|T],Acc)->
	case Acc == [] of
	    true  ->	compress(T, [H|Acc]);
    	false -> 
			[HAcc|_TAcc] = Acc,
			case H == HAcc of
				true  -> compress(T, Acc);
				false -> compress(T, [H|Acc])
			end
   	end.
		
reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).
	
%io:format("~nПЕРЕМЕННАЯ: ~p~n~n", [HAcc|TAcc]),
%compress(T, NewAcc).


-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

compress_test_() -> [
	?_assert(compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [a,b,c,a,d,e]),
	?_assert(compress([]) =:= [])].
-endif.