%%%-------------------------------------------------------------------
%% @doc cowboy2_test public API
%% @end
%%%-------------------------------------------------------------------

-module(cowboy2_test_app).

-behaviour(application).

%% Application callbacks
-export([do_metrics_callback/1, start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_Type, _Args) ->
    Dispatch = cowboy_router:compile([{'_',
                       [{"/", hello, []},
                       {"/test/[:page]", hello, []}
            ]}]),

    io:format("Dispatch: ~p~n~n~n",[Dispatch]),

    {ok, _} = cowboy:start_clear(my_http_listener,
				 [{port, 8081}],
				 #{env => #{dispatch => Dispatch},
				   metrics_callback =>
				       fun do_metrics_callback/1,
				   stream_handlers =>
				       [cowboy_metrics_h, cowboy_stream_h]}),
    cowboy2_test_sup:start_link().

do_metrics_callback(Metric) ->
    io:format("Metric: ~p ", [Metric]),
    try wombat_plugin_cowboy2 ! {cowboy_metric, Metric} of
      _ -> ok
    catch
      _:_ -> ok
    end.

%%--------------------------------------------------------------------
stop(_State) -> ok.

%%====================================================================
%% Internal functions
%%====================================================================

