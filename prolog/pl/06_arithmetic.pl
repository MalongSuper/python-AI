% The conditions are mutually exclusive.
result_label(Score, distinction) :-
    Score >= 85.
result_label(Score, pass) :-
    Score >= 50,
    Score < 85.
result_label(Score, fail) :-
    Score < 50.

% The denominator must be non-zero before division.
average(Total, Count, Average) :-
    Count > 0,
    Average is Total / Count.

run :-
    findall(Label, result_label(72, Label), Labels),
    format('Label for 72: ~w~n', [Labels]),
    average(240, 3, Average),
    format('Average: ~2f~n', [Average]).
