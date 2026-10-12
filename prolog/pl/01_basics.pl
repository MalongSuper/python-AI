% Facts describe courses, students, and study relationships.
course(logic).
course(ai).

student(mai).
student(lan).
student(noah).

studies(mai, logic).
studies(noah, logic).
studies(lan, ai).
studies(lan, logic).

% A person is learning logic when that person studies logic.
learning(Person) :-
    student(Person),
    studies(Person, logic).

% This runner prints one ground result and all variable bindings.
run :-
    learning(mai),
    writeln('learning(mai): true'),
    findall(Person, learning(Person), People),
    format('learning(Person): ~w~n', [People]).
