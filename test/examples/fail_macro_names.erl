-module(fail_macro_names).

 -define (bad_name,   "(no)").
-define(GOOD_NAME,  "(megusta)").
-define(wtf_NAME,   "(yuno)").

-export([define/1]).

define(not_a_macro) -> its_not.
define(_Also, not_a_macro) -> still_not.

%% this is not using -define
use_define(x) ->
  define(this_is, not_a_macro),
  Not = "-define(this_isnt, a_macro)",
  Not.
