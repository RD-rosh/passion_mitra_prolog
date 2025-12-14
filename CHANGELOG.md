swipl

?- consult('knowledge_base.pl').

?- [knowledge_base].
true.

?- consult('knowledge_base.pl').
true.

?- [knowledge_base].
true.

?- assert(observed_symptoms([wilting_stem, yellow_leaves])).
true.

?- diagnose_condition(Disease, Certainty).
Disease = fusarium_wilt,
Certainty = 0.9 ;
Disease = fusarium_wilt,
Certainty = 0.8
Unknown action: e (h for help)
Action? .

?-
ERROR: Unknown procedure: ommend_advice/2 (DWIM could not correct goal)
^ Exception: (4) setup_call_cleanup('$toplevel':notrace(call_repl_loop_hook(begin, 0)), '$toplevel':'$query_loop'(0), '$toplevel':notrace(call_repl_loop_hook(end, 0))) ? creep
?- recommend_advice(fusarium_wilt, Advice).
Advice = 'Improve soil drainage' ;
Advice = 'Rotate crops' ;
Advice = 'Apply carbendazim'.

?- diagnose_condition(Disease, Certainty).
Disease = fusarium_wilt,
Certainty = 0.9 ;
Disease = fusarium_wilt,
Certainty = 0.8 ;
Disease = vine_mite,
Certainty = 0.8 ;
Disease = waterlogging,
Certainty = 0.8 ;
false.

?- assert(climate(hot)).
true.

?- assert(altitude_below(800)).
true.

?- assert(disease_prone_area(no)).
true.

?- assert(disease_prone_area(no)).
true.

?- assert(disease_prone_area(no)).
true.

?- recommend_variety(V).
V = yellow_passion_fruit ;
V = yellow_passion_fruit ;
V = yellow_passion_fruit ;
false.

?- assert(days_since_flowering(65)).
true.

?- ready_to_harvest.
false.

?-
