-module(htmltest_sup).

-behaviour(supervisor).

-export([
  % api
  start_link/0,
  % supervisor callbacks
  init/1
]).

-define(SUP_NAME, {local, ?MODULE}).

%%%=============================================================================
%%% api
%%%=============================================================================

start_link() ->
  supervisor:start_link(?SUP_NAME, ?MODULE, []).

%%%=============================================================================
%%% supervisor callbacks
%%%=============================================================================

init([]) ->
  RestartStrategy = one_for_one,
  MaxRestarts = 100,
  MaxSecondsBetweenRestarts = 3600,
  Flags = {RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts},
  Children = [],
  {ok, {Flags, Children}}.
