-module(lesson2_task05).

- export([reverse/1]).




reverse(List)->
   reverse(List,[]).

reverse([], Acc) ->
    Acc;
reverse([H|T], Acc)->
    reverse(T, [H|Acc]).

%last([H|[]])->
%	H;
%last([_H|T])->
%	last(T).