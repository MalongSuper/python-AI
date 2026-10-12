% TODO: replace this stub with the factorial definition.
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.


run :-
    findall(F0, factorial(0, F0), BaseAnswers),
    findall(F5, factorial(5, F5), RecursiveAnswers),
    format('factorial(0, F): ~w~n', [BaseAnswers]),
    format('factorial(5, F): ~w~n', [RecursiveAnswers]).
