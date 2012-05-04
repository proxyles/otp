%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2008-2012. All Rights Reserved.
%%
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% %CopyrightEnd%
%%
-module(archive_script_main3).
-behaviour(escript).

-export([main/1]).

main(MainArgs) ->
    io:format("main3:~p\n", [MainArgs]),
    ArchiveFile = escript:script_name(),
    {ok, Listing} = erl_prim_loader:list_dir(ArchiveFile),
    io:format("~p~n", [lists:member([], Listing)]),

    ok.
