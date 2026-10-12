% Options are considered from top to bottom.
option(bus).
option(train).
option(bike).

available(train).
available(bike).

all_available(Option) :-
    option(Option),
    available(Option).

% CUT keeps only the first available option found in program order.
first_available(Option) :-
    option(Option),
    available(Option),
    !.

run :-
    findall(X, all_available(X), All),
    findall(X, first_available(X), First),
    format('All available: ~w~n', [All]),
    format('First available: ~w~n', [First]).
