% P10 (**) Закодировать список с использованием алгоритма RLE:
% Пример:
% 1> lesson2_task10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]

-module(lesson2_task10).

-export([encode/1]).


encode(List)->
	reverse(encode(List,{},[])).

encode([],{},Acc3)->
	Acc3;
encode([],{Qty,Mem},Acc3)->
	Acc1={Qty,Mem},
	encode([],{},[Acc1|Acc3]);
encode([H|T],{},Acc3)->
	encode(T,{1,H},Acc3);
encode([H|T],{Qty,Mem},Acc3)->
	Acc1={Qty,Mem},

	case H == Mem of
		true -> encode(T,{Qty+1,Mem},Acc3);
		false -> encode(T,{1,H},[Acc1|Acc3])
	end.



%реверс

reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).



  % reverse(pack(List, [], [])).

% pack([], [], Acc2)->
%  Acc2;

% pack([], Acc1, Acc2)->
%   pack([],[],[Acc1|Acc2]);

% pack([H|T],[],Acc2)->
% 	pack(T,[H], Acc2);

% pack([H|T],[H1|T1],Acc2)->
% 	Acc1=[H1|T1],

% 	case H == H1 of 
% 			true -> pack(T, [H|Acc1], Acc2);
% 			false -> pack(T, [H], [Acc1|Acc2])
% 	end.

	