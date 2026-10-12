% Candidate order determines the order in which Prolog explores meals.
candidate(salad).
candidate(burger).
candidate(curry).
candidate(soup).

vegetarian(salad).
vegetarian(curry).
vegetarian(soup).

healthy(salad).
healthy(soup).

% Both subgoals must succeed for the same Meal binding.
suitable(Meal) :-
    candidate(Meal),
    vegetarian(Meal),
    healthy(Meal).

run :-
    findall(Meal, suitable(Meal), Meals),
    format('Suitable meals in answer order: ~w~n', [Meals]).
