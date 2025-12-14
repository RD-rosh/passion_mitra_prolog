% --- Fertilizers ---
fertilizer_schedule(0, planting, 'urea', 500).
fertilizer_schedule(0, planting, 'triple_super_phosphate', 5000).
fertilizer_schedule(0, planting, 'muriate_of_potash', 10000).
fertilizer_schedule(0.5, '2_weeks_after_planting', 'urea', 45).
fertilizer_schedule(0.5, '2_weeks_after_planting', 'triple_super_phosphate', 80).
fertilizer_schedule(0.5, '2_weeks_after_planting', 'muriate_of_potash', 40).
fertilizer_schedule(0.5, '2_weeks_after_planting', 'magnesium_sulphate', 55).

fertilizer(wet_zone, planting, Fertilizer, Qty) :-
    fertilizer_schedule(_, planting, Fertilizer, Qty).

fertilizer(intermediate_zone, planting, Fertilizer, Qty) :-
    fertilizer_schedule(_, planting, Fertilizer, Qty).

fertilizer(Zone, Stage, Fertilizer, Qty) :-
    fertilizer_schedule(_, Stage, Fertilizer, Qty),
    member(Zone, [wet_zone, intermediate_zone]).

