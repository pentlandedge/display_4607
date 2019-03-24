-module(display_4607).

%% API exports
-export([main/1]).

%%====================================================================
%% API functions
%%====================================================================

%% escript Entry point
main(Args) ->
    try
        [Filename] = Args,
        Bin = s4607:read_file(Filename),
        PacketList = s4607:decode(Bin),
        s4607:display_packets(PacketList),
        erlang:halt(0)
    catch
        _:_ ->
            usage()
    end.

%%====================================================================
%% Internal functions
%%====================================================================

usage() ->
    io:format("usage: display_4607 filename\n"),
    halt(1).
