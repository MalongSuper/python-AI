registered(mai).
registered(noah).
suspended(noah).

% registered/1 binds Person before the negative check.
eligible(Person) :-
    registered(Person),
    \+ suspended(Person).

run :-
    findall(Person, eligible(Person), Eligible),
    format('Eligible before the new fact: ~w~n', [Eligible]),
    findall(Person, (\+ suspended(Person), registered(Person)), WrongOrder),
    format('Negative goal first: ~w~n', [WrongOrder]).
