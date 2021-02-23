% P13 (**) Написать декодер для стандартного алгоритма RLE:
% Пример:
% 1> lesson2_task13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]).
% [a,a,a,a,b,c,c,a,a,d,e,e,e,e]

-module(lesson2_task13).

-export([decode/1]).


decode(List)->
	reverse(decode(List,[])).

decode([],Acc2)->
	Acc2;

decode([{Qty,Mem}|T],Acc2)->
	MemNew = listFromCortage({Qty,Mem}, []), %[1,1,1,1]
	decode(T, MemNew++Acc2).

%listFromCortage
	
listFromCortage({Qty,Mem}, Acc) -> 
	case Qty==0 of 
		true -> Acc; 
		false -> listFromCortage({Qty-1,Mem},[Mem|Acc])
	end.
	
% реверс

reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).
