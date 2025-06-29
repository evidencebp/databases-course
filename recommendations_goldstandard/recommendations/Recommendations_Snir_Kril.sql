drop table if exists imdb_ijs.movies_recommendations;
CREATE TABLE imdb_ijs.movies_recommendations (
  movie_id_a INT NOT NULL,
  movie_id_b INT NOT NULL,
  recommendation_level INT NOT NULL,  -- From 1 (bad) to 10 (great)
  author VARCHAR(100) NOT NULL,       -- Recommender name, e.g., 'Snir Kril'
  justification TEXT,                 -- Reason for the recommendation
  comment TEXT,                       -- Optional comment
  PRIMARY KEY (movie_id_a, movie_id_b),
  FOREIGN KEY (movie_id_a) REFERENCES imdb_ijs.movies(id),
  FOREIGN KEY (movie_id_b) REFERENCES imdb_ijs.movies(id)
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(7341  -- Aerosmith: Big Ones You Can Look at
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(10945  -- Alien
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(31887  -- Beat of the Live Drum, The
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(34077  -- Benjamin Button
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(78183  -- Dangerous: The Short Films
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(112290  -- Fight Club
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(123435  -- Game, The
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199763  -- Madonna: The Immaculate Collection
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(199764  -- Madonna: The Video Collection 93:99
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(247579  -- Panic Room
, 291698  -- Se7en
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 7341  -- Aerosmith: Big Ones You Can Look at
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 10945  -- Alien
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 31887  -- Beat of the Live Drum, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 34077  -- Benjamin Button
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 78183  -- Dangerous: The Short Films
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 112290  -- Fight Club
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 123435  -- Game, The
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 199763  -- Madonna: The Immaculate Collection
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 199764  -- Madonna: The Video Collection 93:99
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(291698  -- Se7en
, 247579  -- Panic Room
, 8
, 'Snir Kril'
, 'If you like David Fincher’s movies, you’ll probably enjoy this one too'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191246  -- Lion King, The
, 191247  -- Lion King, The (1994/II)
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191246  -- Lion King, The
, 191248  -- Lion King: A Musical Journey with Elton John, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191246  -- Lion King, The
, 191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191246  -- Lion King, The
, 191244  -- Lion King II: Simba's Pride, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191246  -- Lion King, The
, 191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191246  -- Lion King, The
, 191243  -- Lion King 1, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191247  -- Lion King, The (1994/II)
, 191246  -- Lion King, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191247  -- Lion King, The (1994/II)
, 191248  -- Lion King: A Musical Journey with Elton John, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191247  -- Lion King, The (1994/II)
, 191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191247  -- Lion King, The (1994/II)
, 191244  -- Lion King II: Simba's Pride, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191247  -- Lion King, The (1994/II)
, 191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191247  -- Lion King, The (1994/II)
, 191243  -- Lion King 1, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191248  -- Lion King: A Musical Journey with Elton John, The
, 191246  -- Lion King, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191248  -- Lion King: A Musical Journey with Elton John, The
, 191247  -- Lion King, The (1994/II)
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191248  -- Lion King: A Musical Journey with Elton John, The
, 191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191248  -- Lion King: A Musical Journey with Elton John, The
, 191244  -- Lion King II: Simba's Pride, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191248  -- Lion King: A Musical Journey with Elton John, The
, 191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191248  -- Lion King: A Musical Journey with Elton John, The
, 191243  -- Lion King 1, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 191246  -- Lion King, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 191247  -- Lion King, The (1994/II)
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 191248  -- Lion King: A Musical Journey with Elton John, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 191244  -- Lion King II: Simba's Pride, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 191243  -- Lion King 1, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191244  -- Lion King II: Simba's Pride, The
, 191246  -- Lion King, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191244  -- Lion King II: Simba's Pride, The
, 191247  -- Lion King, The (1994/II)
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191244  -- Lion King II: Simba's Pride, The
, 191248  -- Lion King: A Musical Journey with Elton John, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191244  -- Lion King II: Simba's Pride, The
, 191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191244  -- Lion King II: Simba's Pride, The
, 191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191244  -- Lion King II: Simba's Pride, The
, 191243  -- Lion King 1, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 191246  -- Lion King, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 191247  -- Lion King, The (1994/II)
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 191248  -- Lion King: A Musical Journey with Elton John, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 191244  -- Lion King II: Simba's Pride, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 191243  -- Lion King 1, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191243  -- Lion King 1, The
, 191246  -- Lion King, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191243  -- Lion King 1, The
, 191247  -- Lion King, The (1994/II)
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191243  -- Lion King 1, The
, 191248  -- Lion King: A Musical Journey with Elton John, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191243  -- Lion King 1, The
, 191249  -- Lion King: Timon and Pumbaa's Jungle Games, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191243  -- Lion King 1, The
, 191244  -- Lion King II: Simba's Pride, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(191243  -- Lion King 1, The
, 191245  -- Lion King II: Simbaa's Pride Activity Center, The
, 2
, 'Snir Kril'
, 'Both are Lion King franchise films'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(24429  -- Austin Powers in Goldmember
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(67052  -- Collateral
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(80031  -- Days of Thunder
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(185628  -- Last Samurai, The
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(214755  -- Minority Report
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215876  -- Mission: Impossible
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215879  -- Mission: Impossible II
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(215880  -- Mission: Impossible III
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(335835  -- Top Gun
, 372569  -- Young Guns
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 24429  -- Austin Powers in Goldmember
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 67052  -- Collateral
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 80031  -- Days of Thunder
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 185628  -- Last Samurai, The
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 214755  -- Minority Report
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 215876  -- Mission: Impossible
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 215879  -- Mission: Impossible II
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 215880  -- Mission: Impossible III
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);

INSERT INTO imdb_ijs.movies_recommendations VALUES 
(372569  -- Young Guns
, 335835  -- Top Gun
, 4
, 'Snir Kril'
, 'If you don’t like Tom Cruise in action roles, you probably won’t enjoy this one either'
, NULL
);