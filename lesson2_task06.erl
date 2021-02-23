-module(lesson2_task06).

- export([is_palindrome/1]).

is_palindrome(List)->
  is_palindrome(List,List,[]).

is_palindrome(List,[],NewList)->
   case List == NewList of
      true  -> "Is Polindrom";
      false -> "No, it's not a polindrom"
   end;
  
is_palindrome(List,[H|T],NewList)->
  is_palindrome(List,T,[H|NewList]).

% is_palindrome(List)->
% 	is_palindrome(List,List,[]).

% is_palindrome(List,[],NewList)->
% 	List ==	NewList
% ;
	
% is_palindrome(List,[H|T],NewList)->
% 	is_palindrome(List,T,[H|NewList]).

% is_equal(List,NewList)->
% 	if
% List == NewList-> "Is Palindrom";
% List /= NewList-> "Is not Palindrom"
% end.





