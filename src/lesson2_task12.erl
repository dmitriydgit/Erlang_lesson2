% P12 (**) Написать декодер для модифицированого алгоритма RLE:
% Пример:
% 1> lesson2_task12:decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]).
% [a,a,a,a,b,c,c,a,a,d,e,e,e,e]

-module(lesson2_task12).

-export([decode_modified/1]).


decode_modified(List)->
	decode_modified(List,[]).

decode_modified([],Acc2)->
	reverse(Acc2);

decode_modified([{Qty,Mem}|T],Acc2)->
	MemNew = listFromCortage({Qty,Mem}, []), %[1,1,1,1]
	decode_modified(T, MemNew++Acc2);
	
decode_modified([H|T],Acc2)->
	decode_modified(T, [H|Acc2]).

listFromCortage({Qty,Mem}, Acc) -> 
	case Qty==0 of 
		true -> Acc; 
		false -> listFromCortage({Qty-1,Mem},[Mem|Acc])
	end.
	

% %реверс

reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).


-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

decode_modified_test_() -> [
	?_assert(decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
	?_assert(decode_modified([]) =:= [])].
-endif.