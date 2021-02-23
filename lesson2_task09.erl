% P09 (**) Запаковать последовательно следующие дубликаты во вложеные списки:
% Пример:
% 1> lesson2_task09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]).
% [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]]


-module(lesson2_task09).

-export([pack/1]).


pack(List)->
  reverse(pack(List, [], [])).

pack([], [], Acc2)->
 Acc2;

pack([], Acc1, Acc2)->
  pack([],[],[Acc1|Acc2]);

pack([H|T],[],Acc2)->
	pack(T,[H], Acc2);

pack([H|T],[H1|T1],Acc2)->
	Acc1=[H1|T1],

	case H == H1 of 
			true -> pack(T, [H|Acc1], Acc2);
			false -> pack(T, [H], [Acc1|Acc2])
	end.

	
%реверс

reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).




		% case Acc1 == [] of 
		% 	true -> pack(T, [],[[H|Acc1]|Acc2]);;
    %   false -> 

% pack(List)->
% 	pack(List, []).


% pack([H, H1|T],Acc1,Acc2)->
%     case H == H1 of 
%         true -> pack([H1|T], [H|Acc1],Acc2);
% 				false -> pack([H1|T], [], [[H|Acc1]|Acc2])
% 			end.

		
	%io:format("~nПЕРЕМЕННАЯ: ~p~n~n", [HAcc|TAcc]),
	%pack(T, NewAcc).

% 	pack(List)->
%   pack(List, []).

% pack([], Acc)->
%   Acc;
% pack([H|T],Acc)->
%     [[HHAcc|_T]|TAcc] = Acc, 
%     case H == HHAcc of
%          true  -> pack(T, [[H,HHAcc]|TAcc]);
%          false -> pack(T, [[H]|Acc])
%      end.