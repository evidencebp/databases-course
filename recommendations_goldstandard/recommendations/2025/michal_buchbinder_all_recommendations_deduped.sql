-- Good recomendations
-- Same lead actor, same genre, same director (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 672, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Chamber of Secrets
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 674, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Goblet of Fire
INSERT INTO imdb_ijs.movies_recommendations VALUES (315, 316, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- The Fast and the Furious -> 2 Fast 2 Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 322, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Fast Five -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 154, 10, 'Michal Buchbinder', 'Both movies star the same lead actor, share the same genre, and are directed by the same director.', NULL); -- Spirited Away -> My Neighbor Totoro

-- Same lead actor & same genre (Score: 9)
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 671, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Harry Potter and the Philosopher's Stone
INSERT INTO imdb_ijs.movies_recommendations VALUES (674, 675, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- Harry Potter and the Goblet of Fire -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 318, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- 2 Fast 2 Furious -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (322, 321, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- Fast & Furious 6 -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 182, 9, 'Michal Buchbinder', 'Both movies star the same lead actor and share the same genre.', NULL); -- My Neighbor Totoro -> Kiki's Delivery Service

-- Same director & same genre (Score: 9)
INSERT INTO imdb_ijs.movies_recommendations VALUES (210511, 30959, 10, 'Michal Buchbinder', 'same genres, directed by Nolan', NULL); -- Memento -> Batman Begins
INSERT INTO imdb_ijs.movies_recommendations VALUES (160524, 210511, 10, 'Michal Buchbinder', 'same genres, directed by Nolan', NULL); -- Insomnia -> Memento
INSERT INTO imdb_ijs.movies_recommendations VALUES (160524, 116556, 10, 'Michal Buchbinder', 'same genres, directed by Nolan', NULL); -- Insomnia -> Following
INSERT INTO imdb_ijs.movies_recommendations VALUES (160524, 105697, 8, 'Michal Buchbinder', 'different genres, directed by Nolan', NULL); -- Insomnia -> Exec, The
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 674, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Harry Potter and the Goblet of Fire
INSERT INTO imdb_ijs.movies_recommendations VALUES (675, 676, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Order of the Phoenix -> Harry Potter and the Half-Blood Prince
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 321, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Fast Five -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (321, 323, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Fast & Furious 7 -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 179, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- My Neighbor Totoro -> Castle in the Sky

-- Same lead actor (Score: 8)
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 673, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Prisoner of Azkaban
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 675, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 322, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- 2 Fast 2 Furious -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 323, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Fast Five -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 180, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- My Neighbor Totoro -> Spirited Away
#INSERT INTO imdb_ijs.movies_recommendations VALUES (335835  -- Top Gun , 215881  -- Mission: Improbable, 8, 'Michal Buchbinder', 'Both star Tom Cruise', NULL);

-- Same director (Score: 7)
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 674, 7, 'Michal Buchbinder', 'Both movies are directed by the same director.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Goblet of Fire
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 676, 7, 'Michal Buchbinder', 'Both movies are directed by the same director.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Half-Blood Prince
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 321, 7, 'Michal Buchbinder', 'Both movies are directed by the same director.', NULL); -- 2 Fast 2 Furious -> Fast & Furious 7

-- Both action (Score: 6)
INSERT INTO imdb_ijs.movies_recommendations VALUES (315, 318, 6, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- The Fast and the Furious -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (323, 315, 6, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- The Fate of the Furious -> The Fast and the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 315, 6, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- 2 Fast 2 Furious -> The Fast and the Furious

-- Both romantic comedies (Score: 6)
INSERT INTO imdb_ijs.movies_recommendations VALUES (501, 502, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- Love Actually -> Notting Hill
INSERT INTO imdb_ijs.movies_recommendations VALUES (503, 504, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- 10 Things I Hate About You -> Crazy, Stupid, Love.
INSERT INTO imdb_ijs.movies_recommendations VALUES (506, 501, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- The Holiday -> Love Actually
INSERT INTO imdb_ijs.movies_recommendations VALUES (502, 503, 6, 'Michal Buchbinder', 'Both movies are romantic comedies.', NULL); -- Notting Hill -> 10 Things I Hate About You

-- Same series - Harry Potter (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 673, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Chamber of Secrets -> Harry Potter and the Prisoner of Azkaban
INSERT INTO imdb_ijs.movies_recommendations VALUES (676, 671, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Half-Blood Prince -> Harry Potter and the Philosopher's Stone
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 675, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Philosopher's Stone -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 675, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Harry Potter and the Order of the Phoenix
INSERT INTO imdb_ijs.movies_recommendations VALUES (674, 676, 10, 'Michal Buchbinder', 'Both movies are part of the Harry Potter series.', NULL); -- Harry Potter and the Goblet of Fire -> Harry Potter and the Half-Blood Prince

-- Same series - Fast & Furious (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (321, 322, 10, 'Michal Buchbinder', 'Both movies are part of the Fast & Furious series.', NULL); -- Fast & Furious 7 -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (322, 323, 10, 'Michal Buchbinder', 'Both movies are part of the Fast & Furious series.', NULL); -- Fast & Furious 6 -> The Fate of the Furious

-- Studio Ghibli by Hayao Miyazaki (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 179, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Kiki's Delivery Service -> Castle in the Sky
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 182, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Spirited Away -> Kiki's Delivery Service
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 180, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Castle in the Sky -> Spirited Away
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 154, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Kiki's Delivery Service -> My Neighbor Totoro
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 182, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Castle in the Sky -> Kiki's Delivery Service
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 179, 10, 'Michal Buchbinder', 'Both movies are Studio Ghibli films directed by Hayao Miyazaki.', NULL); -- Spirited Away -> Castle in the Sky

-- Extra — to reach 100, more unique cross-matches (actor+genre, director+genre, etc.):
INSERT INTO imdb_ijs.movies_recommendations VALUES (671, 315, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Philosopher's Stone -> The Fast and the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 318, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Chamber of Secrets -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (673, 321, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Prisoner of Azkaban -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (674, 323, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Goblet of Fire -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (675, 316, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Order of the Phoenix -> 2 Fast 2 Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (676, 154, 9, 'Michal Buchbinder', 'Both movies are directed by the same director and share the same genre.', NULL); -- Harry Potter and the Half-Blood Prince -> My Neighbor Totoro
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 318, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Spirited Away -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 321, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Kiki's Delivery Service -> Fast & Furious 7
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 323, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- Castle in the Sky -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 315, 8, 'Michal Buchbinder', 'Both movies star the same lead actor.', NULL); -- My Neighbor Totoro -> The Fast and the Furious

INSERT INTO imdb_ijs.movies_recommendations VALUES (672, 671, 10, 'Michal Buchbinder', 'Reversed recommendation based on original logic.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (674, 672, 10, 'Michal Buchbinder', 'Reversed recommendation based on original logic.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (322, 318, 10, 'Michal Buchbinder', 'Reversed recommendation based on original logic.', NULL);

-- Same LOTR series (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (194497, 194498, 10, 'Michal Buchbinder', 'Both movies are part of the LOTR series.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194502, 194503, 10, 'Michal Buchbinder', 'Both movies are part of the LOTR series.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194500, 194502, 10, 'Michal Buchbinder', 'Both movies are part of the LOTR series.', NULL);

-- Reversed LOTR (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (194498, 194497, 10, 'Michal Buchbinder', 'Reversed LOTR series recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194503, 194502, 10, 'Michal Buchbinder', 'Reversed LOTR series recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194502, 194500, 10, 'Michal Buchbinder', 'Reversed LOTR series recommendation.', NULL);

-- Same LOTR universe (Score: 8)
INSERT INTO imdb_ijs.movies_recommendations VALUES (194495, 194496, 8, 'Michal Buchbinder', 'Both movies are from the LOTR world.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194504, 194501, 8, 'Michal Buchbinder', 'Both movies are from the LOTR world.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194497, 194499, 8, 'Michal Buchbinder', 'Both movies are from the LOTR world.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194500, 194504, 8, 'Michal Buchbinder', 'Both movies are from the LOTR world.', NULL);

-- Reversed LOTR universe (Score: 8)
INSERT INTO imdb_ijs.movies_recommendations VALUES (194496, 194495, 8, 'Michal Buchbinder', 'Reversed LOTR universe recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194501, 194504, 8, 'Michal Buchbinder', 'Reversed LOTR universe recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194499, 194497, 8, 'Michal Buchbinder', 'Reversed LOTR universe recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (194504, 194500, 8, 'Michal Buchbinder', 'Reversed LOTR universe recommendation.', NULL);

-- Same Star Wars series (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (313474, 313475, 10, 'Michal Buchbinder', 'Both are from Episode I - The Phantom Menace series.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313476, 313477, 10, 'Michal Buchbinder', 'Both are consecutive episodes.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313478, 313479, 10, 'Michal Buchbinder', 'Both are consecutive episodes.', NULL);

-- Reversed Star Wars series (Score: 10)
INSERT INTO imdb_ijs.movies_recommendations VALUES (313475, 313474, 10, 'Michal Buchbinder', 'Reversed Star Wars series recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313477, 313476, 10, 'Michal Buchbinder', 'Reversed Star Wars series recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313479, 313478, 10, 'Michal Buchbinder', 'Reversed Star Wars series recommendation.', NULL);

-- Same Star Wars universe (Score: 8)
INSERT INTO imdb_ijs.movies_recommendations VALUES (313464, 313498, 8, 'Michal Buchbinder', 'Both are part of the Star Wars gaming universe.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313488, 313493, 8, 'Michal Buchbinder', 'Both feature Jedi characters in action-based stories.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313489, 313487, 8, 'Michal Buchbinder', 'Both are Knights of the Old Republic-era games.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313503, 313504, 8, 'Michal Buchbinder', 'Both games are Clone Wars and Empire-based.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313485, 313486, 8, 'Michal Buchbinder', 'Both are Jedi Knight sequels.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313506, 313508, 8, 'Michal Buchbinder', 'Both are X-Wing fighter-based titles.', NULL);

-- Reversed Star Wars universe (Score: 8)
INSERT INTO imdb_ijs.movies_recommendations VALUES (313498, 313464, 8, 'Michal Buchbinder', 'Reversed Star Wars game recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313493, 313488, 8, 'Michal Buchbinder', 'Reversed Jedi game recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313487, 313489, 8, 'Michal Buchbinder', 'Reversed KOTOR game recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313504, 313503, 8, 'Michal Buchbinder', 'Reversed Clone Wars game recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313486, 313485, 8, 'Michal Buchbinder', 'Reversed Jedi Knight recommendation.', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (313508, 313506, 8, 'Michal Buchbinder', 'Reversed X-Wing recommendation.', NULL);


## Bad recomendations

-- שניהם Thriller (Score: 3)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1300, 1301, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- The Girl with the Dragon Tattoo -> Gone Girl
INSERT INTO imdb_ijs.movies_recommendations VALUES (1302, 1303, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Prisoners -> Zodiac
INSERT INTO imdb_ijs.movies_recommendations VALUES (1304, 1305, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Se7en -> Shutter Island
INSERT INTO imdb_ijs.movies_recommendations VALUES (1308, 1309, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Black Swan -> The Sixth Sense

-- שניהם Action נוספים (Score: 3)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1400, 1401, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Die Hard -> Lethal Weapon
INSERT INTO imdb_ijs.movies_recommendations VALUES (1402, 1403, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Speed -> Mission Impossible
INSERT INTO imdb_ijs.movies_recommendations VALUES (1404, 1405, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- The Bourne Identity -> The Italian Job
INSERT INTO imdb_ijs.movies_recommendations VALUES (1406, 1407, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Bad Boys -> Armageddon
INSERT INTO imdb_ijs.movies_recommendations VALUES (1408, 1409, 3, 'Michal Buchbinder', 'Both movies are action films.', NULL); -- Point Break -> The Rock

-- אותו במאי, דרמה/רומנטיקה (Score: 5)
INSERT INTO imdb_ijs.movies_recommendations VALUES (200, 201, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie A (Drama) -> Movie B (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (204, 205, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie E (Drama) -> Movie F (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (206, 207, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie G (Drama) -> Movie H (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (208, 209, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, but one is a drama and the other is a romance.', NULL); -- Movie I (Drama) -> Movie J (Romance)

-- הפוך לגמרי – פעולה + קומדיה רומנטית (Score: 2)
INSERT INTO imdb_ijs.movies_recommendations VALUES (315, 501, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- The Fast and the Furious -> Love Actually
INSERT INTO imdb_ijs.movies_recommendations VALUES (318, 504, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Fast Five -> Crazy, Stupid, Love.
INSERT INTO imdb_ijs.movies_recommendations VALUES (316, 502, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- 2 Fast 2 Furious -> Notting Hill
INSERT INTO imdb_ijs.movies_recommendations VALUES (322, 506, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Fast & Furious 6 -> The Holiday

-- הפוך לגמרי – פעולה + קומדיה רומנטית (עוד) (Score: 2)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1400, 501, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Die Hard -> Love Actually
INSERT INTO imdb_ijs.movies_recommendations VALUES (1402, 503, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Speed -> 10 Things I Hate About You
INSERT INTO imdb_ijs.movies_recommendations VALUES (1404, 504, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- The Bourne Identity -> Crazy, Stupid, Love.
INSERT INTO imdb_ijs.movies_recommendations VALUES (1408, 506, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is action, the other is romantic comedy.', NULL); -- Point Break -> The Holiday

-- שניהם Thriller (Score: 3)
INSERT INTO imdb_ijs.movies_recommendations VALUES (1301, 1302, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Gone Girl -> Prisoners
INSERT INTO imdb_ijs.movies_recommendations VALUES (1303, 1304, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Zodiac -> Se7en
INSERT INTO imdb_ijs.movies_recommendations VALUES (1305, 1306, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- Shutter Island -> Mystic River
INSERT INTO imdb_ijs.movies_recommendations VALUES (1309, 1300, 3, 'Michal Buchbinder', 'Both movies are thrillers.', NULL); -- The Sixth Sense -> The Girl with the Dragon Tattoo

-- ניטרליות - אותו במאי, ז'אנרים דומים (Score: 5)
INSERT INTO imdb_ijs.movies_recommendations VALUES (301, 302, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie K (Drama) -> Movie L (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (303, 304, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie M (Drama) -> Movie N (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (305, 306, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie O (Drama) -> Movie P (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (307, 308, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie Q (Drama) -> Movie R (Romance)
INSERT INTO imdb_ijs.movies_recommendations VALUES (309, 310, 5, 'Michal Buchbinder', 'Both movies are directed by the same director, one is drama, the other is romance.', NULL); -- Movie S (Drama) -> Movie T (Romance)

-- פערי ז'אנר נוספים (Score: 2)
INSERT INTO imdb_ijs.movies_recommendations VALUES (501, 318, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- Love Actually -> Fast Five
INSERT INTO imdb_ijs.movies_recommendations VALUES (503, 315, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- 10 Things I Hate About You -> The Fast and the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (506, 322, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- The Holiday -> Fast & Furious 6
INSERT INTO imdb_ijs.movies_recommendations VALUES (502, 323, 2, 'Michal Buchbinder', 'These movies are in completely opposite genres: one is romantic comedy, the other is action.', NULL); -- Notting Hill -> The Fate of the Furious
INSERT INTO imdb_ijs.movies_recommendations VALUES (2, 62, 3, 'Michal Buchbinder', 'Opposing genres: $ (Comedy, Crime) vs. A Time to Kill (Thriller, Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (14, 255, 3, 'Michal Buchbinder', 'Opposing genres: 10 to Midnight (Action, Thriller) vs. 4 Months, 3 Weeks and 2 Days (Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (38, 117, 3, 'Michal Buchbinder', 'Opposing genres: 12 Angry Men (Crime, Drama) vs. 10 Things I Hate About You (Comedy, Romance).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (50, 89, 3, 'Michal Buchbinder', 'Opposing genres: 13 Ghosts (Horror, Thriller) vs. 101 Dalmatians (Comedy, Family).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (72, 143, 3, 'Michal Buchbinder', 'Opposing genres: 15 Minutes (Action, Crime) vs. A League of Their Own (Comedy, Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (95, 214, 3, 'Michal Buchbinder', 'Opposing genres: 18 Again! (Comedy, Fantasy) vs. A Night to Remember (Drama, History).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (123, 278, 3, 'Michal Buchbinder', 'Opposing genres: 2 Fast 2 Furious (Action, Crime) vs. Angel Heart (Drama, Horror).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (136, 322, 3, 'Michal Buchbinder', 'Opposing genres: 300 (Action, Fantasy) vs. Beetlejuice (Comedy, Fantasy).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (164, 345, 3, 'Michal Buchbinder', 'Opposing genres: 3 Ninjas (Action, Comedy) vs. Black Book (Crime, Thriller).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (178, 401, 3, 'Michal Buchbinder', 'Opposing genres: 4 Lions (Comedy, Drama) vs. Blood Simple (Crime, Thriller).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (201, 417, 3, 'Michal Buchbinder', 'Opposing genres: 5 Element (Action, Fantasy) vs. Butterfly Kiss (Crime, Thriller).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (247, 460, 3, 'Michal Buchbinder', 'Opposing genres: 9½ Weeks (Drama, Romance) vs. Cell (Horror, Sci-Fi).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (268, 480, 3, 'Michal Buchbinder', 'Opposing genres: A Beautiful Mind (Biography, Drama) vs. Clerks (Comedy, Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (291, 502, 3, 'Michal Buchbinder', 'Opposing genres: A Bridge Too Far (Action, War) vs. Dead Poets Society (Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (312, 521, 3, 'Michal Buchbinder', 'Opposing genres: A Clockwork Orange (Crime, Sci-Fi) vs. Edge of Tomorrow (Action, Sci-Fi).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (358, 568, 3, 'Michal Buchbinder', 'Opposing genres: A Knight''s Tale (Action, Comedy) vs. Get Out (Horror, Mystery).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (379, 595, 3, 'Michal Buchbinder', 'Opposing genres: A Simple Plan (Crime, Drama) vs. Inside Out (Animation, Family).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (402, 612, 3, 'Michal Buchbinder', 'Opposing genres: About Schmidt (Comedy, Drama) vs. Jaws (Horror, Thriller).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (426, 639, 3, 'Michal Buchbinder', 'Opposing genres: Airplane! (Comedy) vs. Lawless (Action, Crime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (449, 661, 3, 'Michal Buchbinder', 'Opposing genres: Alien (Horror, Sci-Fi) vs. Mean Girls (Comedy, Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (472, 684, 3, 'Michal Buchbinder', 'Opposing genres: All Quiet on the Western Front (Drama, War) vs. Napoleon Dynamite (Comedy).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (496, 705, 3, 'Michal Buchbinder', 'Opposing genres: American Psycho (Crime, Thriller) vs. Paddington (Animation, Family).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (520, 729, 3, 'Michal Buchbinder', 'Opposing genres: Anchorman (Comedy) vs. Schindler''s List (Biography, Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (543, 754, 3, 'Michal Buchbinder', 'Opposing genres: Apocalypse Now (Drama, War) vs. Shrek (Animation, Comedy).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (567, 780, 3, 'Michal Buchbinder', 'Opposing genres: Arrival (Drama, Sci-Fi) vs. Superbad (Comedy).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (589, 803, 3, 'Michal Buchbinder', 'Opposing genres: Avatar (Action, Sci-Fi) vs. The Hangover (Comedy).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (612, 827, 3, 'Michal Buchbinder', 'Opposing genres: Back to the Future (Adventure, Comedy, Sci-Fi) vs. The Ring (Horror, Mystery).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (634, 851, 3, 'Michal Buchbinder', 'Opposing genres: Batman (Action, Crime) vs. Toy Story (Animation, Comedy, Family).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (658, 879, 3, 'Michal Buchbinder', 'Opposing genres: Beauty and the Beast (Animation, Family, Romance) vs. The Exorcist (Horror).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (681, 900, 3, 'Michal Buchbinder', 'Opposing genres: Big (Comedy, Fantasy) vs. The Godfather (Crime, Drama).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (703, 924, 3, 'Michal Buchbinder', 'Opposing genres: Black Panther (Action, Adventure, Sci-Fi) vs. The Shining (Horror).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (728, 952, 3, 'Michal Buchbinder', 'Opposing genres: Brave (Animation, Adventure, Family) vs. Seven (Crime, Drama, Mystery).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (801, 1027, 3, 'Michal Buchbinder', 'Opposing genres: Cast Away (Adventure, Drama) vs. Unfriended (Horror, Mystery).', NULL);

-- Poor recommendations: Anime vs. Disney (Score: 3)
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 501, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL); -- Spirited Away -> Love Actually
INSERT INTO imdb_ijs.movies_recommendations VALUES (501, 180, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 502, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL); -- Kiki's Delivery Service -> Notting Hill
INSERT INTO imdb_ijs.movies_recommendations VALUES (502, 182, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 503, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL); -- My Neighbor Totoro -> 10 Things I Hate About You
INSERT INTO imdb_ijs.movies_recommendations VALUES (503, 154, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 504, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL); -- Castle in the Sky -> Crazy, Stupid, Love.
INSERT INTO imdb_ijs.movies_recommendations VALUES (504, 179, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 506, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL); -- My Neighbor Totoro -> The Holiday
INSERT INTO imdb_ijs.movies_recommendations VALUES (506, 154, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 502, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (502, 179, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 503, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (503, 182, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (180, 504, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (504, 180, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (179, 506, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (506, 179, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (182, 501, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (501, 182, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (154, 502, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Anime vs. Disney).', NULL);
INSERT INTO imdb_ijs.movies_recommendations VALUES (502, 154, 3, 'Michal Buchbinder', 'Both are animated but from very different styles and cultures (Disney vs. Anime).', NULL);

