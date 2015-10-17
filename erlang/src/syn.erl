%%%-------------------------------------------------------------------
%%% @author chilchenchi
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Oct 2015 4:47 PM
%%%-------------------------------------------------------------------
-module(syn).
-author("chilchenchi").

%% API
-export([run/0]).

cal() ->
  receive
    {From, Num} ->
      timer:sleep(2000),
      From ! Num + 1
  end.

run() ->
  Cal = spawn(fun cal/0),
  Cal ! {self(), 3},
  io:format("Calculating...~n"),
  receive
    Result -> io:format("Result is ~p~n", [Result])
  end.
