-module(lesson2_task03).

-export([element_at/2]).


element_at([H|_T],1) ->
	H;
element_at([_H|T],N) ->
	element_at(T,N-1).
