-module(hello).

-export([init/2]).



init(Req0, State) ->
    ListOfCodes = [100,200,304,404,500],
    %io:format("~nRequest: ~p~n", [Req0]),
    timer:sleep(1000),
    Response = cowboy_req:reply(lists:nth(rand:uniform(length(ListOfCodes)),ListOfCodes),
			   #{<<"content-type">> => <<"text/plain">>},
               <<"Hello Erlang!">>, Req0),

    {ok, Response, State}.

