%%%-------------------------------------------------------------------
%%% @author chilchenchi
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. Oct 2015 11:29 PM
%%%-------------------------------------------------------------------
-module(translate).
-author("chilchenchi").

%% API
-export([test/0]).

print(Num) ->
  io:format("~p~n", [Num]),
  loop().

loop() ->
  receive
    "one" ->
      io:format("1"),
      io:format("2"),
      io:format("3"),
      io:format("4"),
      io:format("5"),
      io:format("6"),
      io:format("7"),
      io:format("8~n"),
      timer:sleep(1000),
      loop();
    "two" -> print(2);
    stop -> io:format("stop~n");
    _ -> print(0)
  end.

test() ->
  Trans = spawn(fun loop/0),
  Trans ! "one",
  Trans ! "two".