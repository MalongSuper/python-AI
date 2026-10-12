% last_item(List, Item) returns the final item of a non-empty list.
last_item([Item], Item).
last_item([_|Tail], Item) :-
    last_item(Tail, Item).

% count_item(Item, List, Count) counts occurrences of Item.
count_item(_, [], 0).
count_item(Item, [Item|Tail], Count) :-
    count_item(Item, Tail, TailCount),
    Count is TailCount + 1.
count_item(Item, [Head|Tail], Count) :-
    Item \= Head,
    count_item(Item, Tail, Count).

% The tests return empty lists until the predicates are implemented.
run :-
    findall(X, last_item([logic, is, powerful], X), LastAnswers),
    format('last_item answers: ~w~n', [LastAnswers]),
    findall(N, count_item(a, [a, b, a, c, a], N), CountAnswers),
    format('count_item answers: ~w~n', [CountAnswers]).
