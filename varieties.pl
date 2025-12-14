% --- Varieties ---
variety(yellow_passion_fruit, 'Passiflora edulis f. flavicarpa').
variety(purple_passion_fruit, 'Passiflora edulis f. edulis').
variety(hybrid_passion_fruit, 'crossbred').

recommend_variety(yellow_passion_fruit) :- climate(hot), altitude_below(800), disease_prone_area(no).
recommend_variety(purple_passion_fruit) :- climate(cool), altitude_above(800), disease_prone_area(no).
recommend_variety(hybrid_passion_fruit) :- disease_prone_area(yes).