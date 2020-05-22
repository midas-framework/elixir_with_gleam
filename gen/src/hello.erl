-module(hello).
-compile(no_auto_import).

-export([hello/0]).

hello() ->
    <<"Hello, from gleam!"/utf8>>.
