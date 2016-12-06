-module(doctor_monitor).
-export([loop/0]).

loop() ->
  process_flag(trap_exit, true),
  receive
    new ->
      io:format("Creating and monitoring process. ~n"),
      register(doctor, spawn_link(fun doctor:loop/0)),
      loop();
    {'EXIT',_,_} ->
      io:format("Restarting. ~n"),
      self() ! new,
      loop()
  end.
