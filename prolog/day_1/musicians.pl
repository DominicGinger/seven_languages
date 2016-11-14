plays(jimi_hendrix, guitar).
plays(stevie_ray_vaughan, guitar).
plays(bob_dylan, guitar).
plays(bob_dylan, harmonica).
plays(tom_waits, harmonica).
plays(miles_davies, trumpet).

genre(miles_davies, jazz).
genre(tom_waits, folk).
genre(bob_dylan, folk).
genre(jimi_hendrix, blues).
genre(stevie_ray_vaughan, blues).

genre_instrument(X, Y) :- plays(Z, X), genre(Z, Y).
