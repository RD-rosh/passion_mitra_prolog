:- dynamic observed_symptoms/1.

diagnose_condition(fusarium_wilt, 0.9) :- observed_symptoms(S), member(wilting_stem, S).
diagnose_condition(fusarium_wilt, 0.8) :- observed_symptoms(S), member(yellow_leaves, S).
diagnose_condition(anthracnose, 0.9) :- observed_symptoms(S), member(fruit_rot, S).
diagnose_condition(anthracnose, 0.85) :- observed_symptoms(S), member(leaf_spots, S).
diagnose_condition(brown_spot, 0.9) :- observed_symptoms(S), member(brown_spots, S).
diagnose_condition(brown_spot, 0.85) :- observed_symptoms(S), member(dried_fruits, S).
diagnose_condition(phytophthora_bl, 0.9) :- observed_symptoms(S), member(black_lesions, S).
diagnose_condition(phytophthora_bl, 0.85) :- observed_symptoms(S), member(fruit_rot, S).
diagnose_condition(pwv, 0.9) :- observed_symptoms(S), member(woody_fruit, S).
diagnose_condition(pwv, 0.85) :- observed_symptoms(S), member(stunted_growth, S).
diagnose_condition(fruit_rot_disease, 0.9) :- observed_symptoms(S), member(rot_fruits, S).
diagnose_condition(fruit_rot_disease, 0.85) :- observed_symptoms(S), member(soft_fruits, S).
diagnose_condition(fruit_fly, 0.9) :- observed_symptoms(S), member(fruit_holes, S).
diagnose_condition(fruit_fly, 0.85) :- observed_symptoms(S), member(fallen_fruits, S).
diagnose_condition(stem_borer, 0.95) :- observed_symptoms(S), member(stem_borer_holes, S).
diagnose_condition(stem_borer, 0.8) :- observed_symptoms(S), member(fallen_fruits, S).
diagnose_condition(aphids, 0.85) :- observed_symptoms(S), member(curling_leaves, S).
diagnose_condition(aphids, 0.8) :- observed_symptoms(S), member(sticky_leaves, S).
diagnose_condition(vine_mite, 0.85) :- observed_symptoms(S), member(leaf_curling, S).
diagnose_condition(vine_mite, 0.8) :- observed_symptoms(S), member(yellow_leaves, S).
diagnose_condition(water_deficiency, 0.9) :- observed_symptoms(S), member(wilting_leaves, S).
diagnose_condition(water_deficiency, 0.85) :- observed_symptoms(S), member(pale_leaves, S).
diagnose_condition(waterlogging, 0.9) :- observed_symptoms(S), member(root_rot, S).
diagnose_condition(waterlogging, 0.8) :- observed_symptoms(S), member(yellow_leaves, S).
diagnose_condition(low_sunlight, 0.85) :- observed_symptoms(S), member(slow_growth, S).
diagnose_condition(low_sunlight, 0.8) :- observed_symptoms(S), member(pale_leaves, S).


recommend_advice(fusarium_wilt, 'Improve soil drainage').
recommend_advice(fusarium_wilt, 'Rotate crops').
recommend_advice(fusarium_wilt, 'Apply carbendazim').
recommend_advice(anthracnose, 'Remove affected leaves').
recommend_advice(anthracnose, 'Spray copper oxychloride').
recommend_advice(anthracnose, 'Maintain air circulation').
recommend_advice(brown_spot, 'Remove infected leaves').
recommend_advice(brown_spot, 'Apply mancozeb').
recommend_advice(brown_spot, 'Avoid overhead watering').
recommend_advice(phytophthora_bl, 'Improve drainage').
recommend_advice(phytophthora_bl, 'Remove infected fruits').
recommend_advice(phytophthora_bl, 'Spray phytophthora fungicide').
recommend_advice(pwv, 'Use virus-free plants').
recommend_advice(pwv, 'Remove infected plants').
recommend_advice(pwv, 'Control aphids').
recommend_advice(fruit_rot_disease, 'Harvest promptly').
recommend_advice(fruit_rot_disease, 'Avoid fruit injuries').
recommend_advice(fruit_rot_disease, 'Apply fruit rot fungicide').
recommend_advice(fruit_fly, 'Use bait traps').
recommend_advice(fruit_fly, 'Remove fallen fruits').
recommend_advice(fruit_fly, 'Cover fruits').
recommend_advice(stem_borer, 'Destroy infested stems').
recommend_advice(stem_borer, 'Apply insecticide').
recommend_advice(stem_borer, 'Maintain field sanitation').
recommend_advice(aphids, 'Spray neem oil').
recommend_advice(aphids, 'Introduce ladybugs').
recommend_advice(aphids, 'Prune affected leaves').
recommend_advice(vine_mite, 'Spray acaricide').
recommend_advice(vine_mite, 'Ensure irrigation').
recommend_advice(vine_mite, 'Prune infested leaves').
recommend_advice(water_deficiency, 'Irrigate regularly').
recommend_advice(water_deficiency, 'Mulch soil').
recommend_advice(water_deficiency, 'Avoid drought-prone areas').
recommend_advice(waterlogging, 'Improve field drainage').
recommend_advice(waterlogging, 'Avoid over-irrigation').
recommend_advice(waterlogging, 'Use raised beds').
recommend_advice(low_sunlight, 'Plant in sunlight').
recommend_advice(low_sunlight, 'Prune shade trees').
recommend_advice(low_sunlight, 'Use trellising').
