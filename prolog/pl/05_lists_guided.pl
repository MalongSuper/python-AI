% Membership succeeds at the head or recursively in the tail.
member_of(X, [X|_]).
member_of(X, [_|Tail]) :-
    member_of(X, Tail).

% The empty list has length zero.
list_length([], 0).
list_length([_|Tail], Length) :-
    list_length(Tail, TailLength),
    Length is TailLength + 1.

% Summation uses the same base-and-recursive-case pattern.
sum_numbers([], 0).
sum_numbers([Head|Tail], Sum) :-
    sum_numbers(Tail, TailSum),
    Sum is Head + TailSum.

run :-
    findall(X, member_of(X, [logic, prolog, ai]), Members),
    format('Members: ~w~n', [Members]),
    list_length([logic, prolog, ai], Length),
    format('Length: ~w~n', [Length]),
    sum_numbers([3, 5, 2, 10], Sum),
    format('Sum: ~w~n', [Sum]).
