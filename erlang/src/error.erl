%%%-------------------------------------------------------------------
%%% @author chilchenchi
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 16. Oct 2015 7:32 PM
%%%-------------------------------------------------------------------
-module(error).
-author("chilchenchi").

%% API
-export([get_msg/1]).

get_msg(success) -> success;
get_msg({error, Msg}) -> Msg.
