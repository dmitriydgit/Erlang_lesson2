-module(lesson2_task01).

-export([last/1]).


%[1,2,3,4,5,6,7]

last([H|[]]) ->
	H;
last([_|T]) ->
	last(T).