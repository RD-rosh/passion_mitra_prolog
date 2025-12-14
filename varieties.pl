% --- Varieties ---
variety(yellow_passion_fruit, 'Passiflora edulis f. flavicarpa').
variety(purple_passion_fruit, 'Passiflora edulis f. edulis').
variety(hybrid_passion_fruit, 'crossbred').

recommend_variety(yellow_passion_fruit) :- climate(hot), altitude_below(800), disease_prone_area(no).
recommend_variety(purple_passion_fruit) :- climate(cool), altitude_above(800), disease_prone_area(no).
recommend_variety(hybrid_passion_fruit) :- disease_prone_area(yes).

recommend_variety_with_confidence(yellow_passion_fruit, 0.7) :-
    climate(hot),
    altitude_below(800),
    disease_prone_area(no).

recommend_variety_with_confidence(purple_passion_fruit, 0.7) :-
    climate(cool),
    altitude_above(800),
    disease_prone_area(no).

recommend_variety_with_confidence(hybrid_passion_fruit, 0.7) :-
    disease_prone_area(yes).
