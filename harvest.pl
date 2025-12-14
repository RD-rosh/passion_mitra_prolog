% --- Harvesting ---
harvest_time(yellow_passion_fruit, '60-70').
harvest_time(purple_passion_fruit, '90').
harvest_time(hybrid_passion_fruit, '60-90').

ready_to_harvest(Variety) :-
    days_since_flowering(D),
    harvest_time(Variety, T),
    split_string(T, "-", "", [Min|_]),
    number_string(MinDays, Min),
    D >= MinDays.


predict_yield(yellow_passion_fruit, '5000 kg/hectare') :- plant_age(A), A >= 12.
predict_yield(purple_passion_fruit, '5000 kg/hectare') :- plant_age(A), A >= 12.
predict_yield(hybrid_passion_fruit, 'Varies') :- plant_age(A), A >= 12.
predict_yield(_, 'Not yet at peak yield') :- plant_age(A), A < 12.