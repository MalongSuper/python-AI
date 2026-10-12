% Direct parent relationships form an acyclic family graph.
parent(alex, beth).
parent(alex, dan).
parent(beth, claire).
parent(claire, emma).

grandparent(X, Y) :-
    parent(X, Middle),
    parent(Middle, Y).

% Base case: a parent is an ancestor.
ancestor(X, Y) :-
    parent(X, Y).

% Recursive case: move one generation toward Y.
ancestor(X, Y) :-
    parent(X, Middle),
    ancestor(Middle, Y).

run :-
    findall(Person, ancestor(alex, Person), Descendants),
    format('Descendants of alex: ~w~n', [Descendants]),
    findall(Person, grandparent(Person, claire), Grandparents),
    format('Grandparents of claire: ~w~n', [Grandparents]).
