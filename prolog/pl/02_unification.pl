% The runner demonstrates successful and failed unification.
run :-
    person(Name, Age) = person(ada, 20),
    format('Name = ~w, Age = ~w~n', [Name, Age]),

    [Head|Tail] = [logic, prolog, ai],
    format('Head = ~w, Tail = ~w~n', [Head, Tail]),

    f(X, a) = f(b, Y),
    format('X = ~w, Y = ~w~n', [X, Y]),

    (f(_) = g(_) -> Result = succeeds ; Result = fails),
    format('f(_) = g(_) : ~w~n', [Result]).
