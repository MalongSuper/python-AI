registered(mai).
registered(noah).
suspended(noah).
suspended(mai).

eligible(Person) :-
    registered(Person),
    \+ suspended(Person).

run :-
    findall(Person, eligible(Person), Eligible),
    format('Eligible after the new fact: ~w~n', [Eligible]).
