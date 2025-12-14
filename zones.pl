% --- Zone to Climate Mapping ---
zone_climate(wet_zone, hot).
zone_climate(intermediate_zone, hot).
zone_climate(dry_zone, hot).
zone_climate(intermediate_zone, cool).

derive_altitude(A) :-
    A < 800 -> assert(altitude_below(800));
    A >= 800 -> assert(altitude_above(800)).
