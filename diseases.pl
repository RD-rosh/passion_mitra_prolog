:- dynamic observed_symptoms/1.

% --- Diseases, Pests, and Stresses ---

% Fusarium Wilt
diagnose_condition(fusarium_wilt, 0.9) :- observed_symptoms(S), member(wilting_stem, S).
diagnose_condition(fusarium_wilt, 0.8) :- observed_symptoms(S), member(yellow_leaves, S).

% Anthracnose
diagnose_condition(anthracnose, 0.9) :- observed_symptoms(S), member(fruit_rot, S).
diagnose_condition(anthracnose, 0.85) :- observed_symptoms(S), member(leaf_spots, S).

% Brown Spot
diagnose_condition(brown_spot, 0.9) :- observed_symptoms(S), member(brown_spots, S).
diagnose_condition(brown_spot, 0.85) :- observed_symptoms(S), member(dried_fruits, S).

% Phytophthora Black Leaf
diagnose_condition(phytophthora_bl, 0.9) :- observed_symptoms(S), member(black_lesions, S).
diagnose_condition(phytophthora_bl, 0.85) :- observed_symptoms(S), member(fruit_rot, S).

% Passion Fruit Woodiness Virus
diagnose_condition(pwv, 0.9) :- observed_symptoms(S), member(woody_fruit, S).
diagnose_condition(pwv, 0.85) :- observed_symptoms(S), member(stunted_growth, S).

% Fruit Rot Disease
diagnose_condition(fruit_rot_disease, 0.9) :- observed_symptoms(S), member(rot_fruits, S).
diagnose_condition(fruit_rot_disease, 0.85) :- observed_symptoms(S), member(soft_fruits, S).

% Fruit Fly
diagnose_condition(fruit_fly, 0.9) :- observed_symptoms(S), member(fruit_holes, S).
diagnose_condition(fruit_fly, 0.85) :- observed_symptoms(S), member(fallen_fruits, S).

% Stem Borer
diagnose_condition(stem_borer, 0.95) :- observed_symptoms(S), member(stem_borer_holes, S).
diagnose_condition(stem_borer, 0.8) :- observed_symptoms(S), member(fallen_fruits, S).

% Aphids
diagnose_condition(aphids, 0.85) :- observed_symptoms(S), member(curling_leaves, S).
diagnose_condition(aphids, 0.8) :- observed_symptoms(S), member(sticky_leaves, S).

% Vine Mite
diagnose_condition(vine_mite, 0.85) :- observed_symptoms(S), member(leaf_curling, S).
diagnose_condition(vine_mite, 0.8) :- observed_symptoms(S), member(yellow_leaves, S). % old
% --- Updated rule from HTML ---
diagnose_condition(vine_mite, 0.85) :- observed_symptoms(S), member(leaf_yellowing, S).

% Water Deficiency
diagnose_condition(water_deficiency, 0.9) :- observed_symptoms(S), member(wilting_leaves, S).
diagnose_condition(water_deficiency, 0.85) :- observed_symptoms(S), member(pale_leaves, S).

% Waterlogging
diagnose_condition(waterlogging, 0.9) :- observed_symptoms(S), member(root_rot, S).
diagnose_condition(waterlogging, 0.8) :- observed_symptoms(S), member(yellow_leaves, S).

% Low Sunlight
diagnose_condition(low_sunlight, 0.85) :- observed_symptoms(S), member(slow_growth, S).
diagnose_condition(low_sunlight, 0.8) :- observed_symptoms(S), member(pale_leaves, S).
