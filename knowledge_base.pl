:- [varieties].
:- [fertilizers].
:- [conditions].
:- [harvest].
:- [nutrition].
:- [advices].
:- [diseases].
:- [zones].

:- dynamic climate/1, altitude/1, altitude_below/1, altitude_above/1, disease_prone_area/1, plant_age/1, growing_season/1, variety_type/1, days_since_flowering/1.

clear_session :- 
    retractall(climate(_)), retractall(altitude(_)), retractall(altitude_below(_)),
    retractall(altitude_above(_)), retractall(disease_prone_area(_)),
    retractall(observed_symptoms(_)), retractall(plant_age(_)),
    retractall(growing_season(_)), retractall(variety_type(_)),
    retractall(days_since_flowering(_)).