-module(glazed_ffi).
-export([unwrap/1]).

unwrap(Lazy) ->
	(erlang:element(2, Lazy))().
