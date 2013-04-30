-module (edo).
-export ([start/0, start/1]).

-spec start() -> ok.
start() -> start([]).

-spec start([string()]) -> ok.
start(Args) ->
    io:format("Called with arguments: ~p~n", [Args]).
