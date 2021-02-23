-module(lesson2_task04).

-export([len/1]).

%len(List)->
%	len2(List,0).

%len2([],N)->
%	N;
%len2([_|T],N)->
%	len2(T,N+1).

len([])->
	0;
len([_H|T])->
	1+len(T).







