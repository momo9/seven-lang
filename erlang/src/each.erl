%%%-------------------------------------------------------------------
%%% @author chilchenchi
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. Oct 2015 7:50 PM
%%%-------------------------------------------------------------------
-module(each).
-author("chilchenchi").

%% API
-export([print_each/1]).
-export([sum/1]).
-export([double/1]).
-export([descartes/2]).
-export([map/2]).
-export([go/0]).

print_each(List) -> lists:foreach(fun(Number) -> io:format("~p~n", [Number]) end, List).

sum(List) -> lists:foldl(fun(Ele, Sum) -> Ele + Sum end, 0, List).

double([]) -> [];
double([Head | Tail]) -> [Head * 2 | double(Tail)].

descartes(Left, Right) -> [{X, Y} || X <- Left, Y <- Right].

map(Collection, Key) -> get_value([Value || {K, Value} <- Collection, K == Key]).

get_value(Result) -> case Result of
                       [] -> null;
                       NotEmpty -> lists:last(NotEmpty)
                     end.

go() ->
  A = "a",
  io:format("~p~n", [A]).
