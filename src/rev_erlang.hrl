
-define(APP_STRING, "Reversible Erlang").

-define(ID_GAMMA, 0).

-ifdef(debug).
-define(LOG(X), io:format("{~p,~p}: ~p~n", [?MODULE, ?LINE, X])).
-define(TO_STRING(X), lists:flatten(io_lib:format("~p",[X]))).
-else.
-define(LOG(X), true).
-define(TO_STRING(X), true).
-endif.

-define(FWD_SEM, fwd_sem).
-define(BWD_SEM, bwd_sem).

-define(TYPE_MSG,  msg).
-define(TYPE_PROC, proc).

-define(RULE_SEQ,      seq).
-define(RULE_CHECK,    check).
-define(RULE_SEND,     send).
-define(RULE_RECEIVE, 'receive').
-define(RULE_SPAWN,    spawn).
-define(RULE_SELF,     self).
-define(RULE_SCHED,    sched).

-define(FILE_PATH, 600).

% ets defs
-define(APP_REF, '_._app').
-define(GUI_REF, '_._gui').

-define(MULT_FWD, mult_fwd).
-define(MULT_BWD, mult_bwd).

-define(NOT_EXP,   not_exp).
-define(NULL_RULE, null_rule).
-define(NULL_OPT,  null_opt).

% TODO: Add types
-record(proc, {pid,
               hist = [],
               env  = [],
               exp,
               mail = []}).

% TODO: Add types
-record(msg, {dest,
              val,
              time}).

% TODO: Add types
-record(sys, {msgs  = [],
              procs = []}).


-record(opt, {sem,    % forward or backward
              type,   % proc or msg
              id,     % integer
              rule}). % seq, spawn, ...
