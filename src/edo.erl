-module (edo).
-export ([start/0, start/1]).

-spec start() -> no_return().
start() -> start([]).

-spec start([string()]) -> no_return().
start(_Args0) ->
    io:format("Arguments: ~p~n", [init:get_plain_arguments()]),
    erlang:halt().
