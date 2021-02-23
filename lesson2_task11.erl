% P11 (**) Закодировать список с использованием модифицированого алгоритма RLE:
% Пример:
% 1> lesson2_task11:encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [{4,a},b,{2,c},{2,a},d,{4,e}]

-module(lesson2_task11).

-export([encode_modified/1]).


encode_modified(List)->
	reverse(encode_modified(List,{},[])).

encode_modified([],{},Acc3)->
	Acc3;
encode_modified([],{Qty,Mem},Acc3)->
	Acc1={Qty,Mem},
	encode_modified([],{},[Acc1|Acc3]);
encode_modified([H|T],{},Acc3)->
	encode_modified(T,{1,H},Acc3);
encode_modified([H|T],{Qty,Mem},Acc3)->
	Acc1={Qty,Mem},
	
		case H == Mem of
			true -> encode_modified(T,{Qty+1,Mem},Acc3);
			false ->
				case Qty==1 of 
					true -> encode_modified(T,{1,H},[Mem|Acc3]);
					false -> encode_modified(T,{1,H},[Acc1|Acc3])
		end
	end.



%реверс

reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).

