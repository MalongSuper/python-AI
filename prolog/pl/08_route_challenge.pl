% Directed roads with positive travel costs.
road(campus, library, 2).
road(campus, cafe, 1).
road(library, museum, 4).
road(cafe, park, 2).
road(park, museum, 2).
road(cafe, museum, 6).

% Direct route: a road directly connects From to To; the path is [From, To].
route(From, To, [From, To], Cost) :-
    road(From, To, Cost).

% Indirect route: a road connects From to Next; recursively find a route from Next to To;
% add the first road cost to the remaining cost; and build the path as [From|RestPath].
route(From, To, [From|RestPath], TotalCost) :-
    road(From, Next, RoadCost),
    route(Next, To, RestPath, RestCost),
    TotalCost is RoadCost + RestCost.

% Print every route in Prolog's search order.
run :-
    findall(Path-Cost, route(campus, museum, Path, Cost), Routes),
    format('Routes from campus to museum: ~w~n', [Routes]).
