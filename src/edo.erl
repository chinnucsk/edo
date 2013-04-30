-module (edo).
-export ([start/0, start/1]).

-spec start() -> ok.
start() -> start([]).

-spec start([string()]) -> ok.
start(Args0) ->
    ArgStr = binary_to_list(base64:decode(list_to_binary(Args0))),
    Args = string:tokens(ArgStr, " "),
    io:format("Argument tokens: ~p~n", [Args]).
