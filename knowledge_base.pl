% climate(zone, temperature, rainfall)
climate(wet_zone, hot, high).
climate(intermediate_zone, cool, medium).
climate(dry_zone, hot, low).

% variety(variety_name, fruit_color, suitable_climate, altitude_limit, disease_prone)
variety(yellow_passion, yellow, wet_zone, less_than_800, no).
variety(purple_passion, purple, intermediate_zone, greater_than_800, no).
variety(hybrid_passion, varies, dry_zone, any, yes).

% suitability rules
suitable_variety(Variety, Zone, Altitude, DiseaseProne) :-
    variety(Variety, _, Zone, AltCondition, DiseaseProne),
    altitude_ok(AltCondition, Altitude).

altitude_ok(less_than_800, Alt) :- Alt < 800.
altitude_ok(greater_than_800, Alt) :- Alt >= 800.
altitude_ok(any, _).

% fertilizer(zone, stage, recommendations)
fertilizer(wet_zone, planting, ['urea: 500g', 'TSP: 5kg', 'MOP: 10kg']).
fertilizer(wet_zone, week2, ['urea: 45g', 'TSP: 80g', 'MOP: 40g', 'MgSO4: 55g']).
fertilizer(intermediate_zone, planting, ['urea: 500g', 'TSP: 5kg', 'MOP: 10kg']).
fertilizer(intermediate_zone, week2, ['urea: 45g', 'TSP: 80g', 'MOP: 40g', 'MgSO4: 55g']).

get_fertilizer(Zone, Stage, List) :- fertilizer(Zone, Stage, List).

% disease(Name, Symptoms, Advice)
disease(fusarium_wilt, [yellow_leaves, wilting_stem], [improve_soil_drainage, rotate_crops, apply_carbendazim]).
disease(anthracnose, [leaf_spots, fruit_rot], [remove_affected_leaves, spray_copper_oxychloride, maintain_air_circulation]).

% diagnose based on symptoms
diagnose(Symptoms, Disease, Advice) :-
    disease(Disease, DiseaseSymptoms, Advice),
    subset(DiseaseSymptoms, Symptoms).
