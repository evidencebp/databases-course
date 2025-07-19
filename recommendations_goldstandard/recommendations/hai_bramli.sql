USE imdb_ijs;



DROP TABLE IF EXISTS movies_recommendations;



CREATE TABLE movies_recommendations (
  base_movie_id INT,
  recommended_movie_id INT,
  recommendation INT,
  suggested_by VARCHAR(255),
  justification VARCHAR(255),
  comment VARCHAR(255),
  CONSTRAINT CHK_recommendation CHECK (recommendation >=1 AND 10 >= recommendation)
);

-- Base Movie ID: 1104, Recommended Movie ID: 318
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1001, 9, 'hai bramli', 'Notable for screenplay and dialogue', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 1104, Recommended Movie ID: 922
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1002, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'A great double feature for drama lovers');
-- Base Movie ID: 1104, Recommended Movie ID: 898
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1003, 10, 'hai bramli', 'Directed by influential filmmakers', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 1104, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1004, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 1104, Recommended Movie ID: 1204
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1005, 10, 'hai bramli', 'Notable for screenplay and dialogue', 'Their critical reception and audience overlap is strong');
-- Base Movie ID: 1104, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1006, 9, 'hai bramli', 'Both movies are award-winning', 'A great double feature for drama lovers');
-- Base Movie ID: 1104, Recommended Movie ID: 1235
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1007, 9, 'hai bramli', 'Explore similar emotional journeys', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 1104, Recommended Movie ID: 2959
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1008, 9, 'hai bramli', 'Both feature outstanding performances', 'Actors deliver standout roles in both');
-- Base Movie ID: 1104, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1009, 9, 'hai bramli', 'Explore similar emotional journeys', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 1104, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1010, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 1104, Recommended Movie ID: 48516
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1011, 10, 'hai bramli', 'Both feature outstanding performances', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 1104, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1012, 10, 'hai bramli', 'Explore similar emotional journeys', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 1104, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1013, 10, 'hai bramli', 'Share narrative style or pacing', 'Film students often analyze both for storytelling');
-- Base Movie ID: 1104, Recommended Movie ID: 58559
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1014, 9, 'hai bramli', 'Share narrative style or pacing', 'Film students often analyze both for storytelling');
-- Base Movie ID: 1104, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1015, 9, 'hai bramli', 'Share narrative style or pacing', 'Their critical reception and audience overlap is strong');
-- Base Movie ID: 1104, Recommended Movie ID: 1245
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1016, 10, 'hai bramli', 'Both movies are award-winning', 'Film students often analyze both for storytelling');
-- Base Movie ID: 1104, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1017, 10, 'hai bramli', 'Both movies are award-winning', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 1104, Recommended Movie ID: 3275
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1018, 10, 'hai bramli', 'Both movies are award-winning', 'Their critical reception and audience overlap is strong');
-- Base Movie ID: 1104, Recommended Movie ID: 1208
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1019, 10, 'hai bramli', 'Critically acclaimed and share similar themes', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 1104, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1020, 10, 'hai bramli', 'Popular within the same genre community', 'Their critical reception and audience overlap is strong');
-- Base Movie ID: 1104, Recommended Movie ID: 1233
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1021, 9, 'hai bramli', 'Cult classics with loyal fanbases', 'Film students often analyze both for storytelling');
-- Base Movie ID: 1104, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1000, 1022, 9, 'hai bramli', 'Critically acclaimed and share similar themes', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 318, Recommended Movie ID: 922
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1002, 10, 'hai bramli', 'Directed by influential filmmakers', 'A great double feature for drama lovers');
-- Base Movie ID: 318, Recommended Movie ID: 898
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1003, 10, 'hai bramli', 'Cult classics with loyal fanbases', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1004, 9, 'hai bramli', 'Directed by influential filmmakers', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 318, Recommended Movie ID: 1204
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1005, 9, 'hai bramli', 'Recommended for fans of classic storytelling', 'Actors deliver standout roles in both');
-- Base Movie ID: 318, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1006, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'Actors deliver standout roles in both');
-- Base Movie ID: 318, Recommended Movie ID: 1235
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1007, 9, 'hai bramli', 'Popular within the same genre community', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 318, Recommended Movie ID: 2959
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1008, 9, 'hai bramli', 'Both movies are award-winning', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 318, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1009, 10, 'hai bramli', 'Cult classics with loyal fanbases', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1010, 10, 'hai bramli', 'Popular within the same genre community', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 318, Recommended Movie ID: 48516
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1011, 10, 'hai bramli', 'Both feature outstanding performances', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 318, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1012, 10, 'hai bramli', 'Both movies are award-winning', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 1267
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1023, 10, 'hai bramli', 'Explore similar emotional journeys', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 318, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1013, 9, 'hai bramli', 'Both feature outstanding performances', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 318, Recommended Movie ID: 58559
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1014, 9, 'hai bramli', 'Popular within the same genre community', 'Film students often analyze both for storytelling');
-- Base Movie ID: 318, Recommended Movie ID: 50
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1024, 10, 'hai bramli', 'Share narrative style or pacing', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 318, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1015, 9, 'hai bramli', 'Both movies are award-winning', 'Strong character development is a key appeal in both');
-- Base Movie ID: 318, Recommended Movie ID: 1245
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1016, 9, 'hai bramli', 'Directed by influential filmmakers', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1017, 10, 'hai bramli', 'Share narrative style or pacing', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 3275
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1018, 9, 'hai bramli', 'Cult classics with loyal fanbases', 'Strong character development is a key appeal in both');
-- Base Movie ID: 318, Recommended Movie ID: 1208
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1019, 9, 'hai bramli', 'Both feature outstanding performances', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 933
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1025, 10, 'hai bramli', 'Both feature outstanding performances', 'Strong character development is a key appeal in both');
-- Base Movie ID: 318, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1020, 9, 'hai bramli', 'Popular within the same genre community', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 318, Recommended Movie ID: 1233
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1021, 9, 'hai bramli', 'Both feature outstanding performances', 'Their critical reception and audience overlap is strong');
-- Base Movie ID: 318, Recommended Movie ID: 1252
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1026, 9, 'hai bramli', 'Notable for screenplay and dialogue', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1022, 10, 'hai bramli', 'Cult classics with loyal fanbases', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 318, Recommended Movie ID: 1089
INSERT INTO imdb_ijs.movies_recommendations VALUES (1001, 1027, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 922, Recommended Movie ID: 898
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1003, 10, 'hai bramli', 'Explore similar emotional journeys', 'A great double feature for drama lovers');
-- Base Movie ID: 922, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1004, 10, 'hai bramli', 'Directed by influential filmmakers', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 922, Recommended Movie ID: 1204
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1005, 9, 'hai bramli', 'Both movies are award-winning', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 922, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1006, 10, 'hai bramli', 'Explore similar emotional journeys', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 922, Recommended Movie ID: 1235
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1007, 10, 'hai bramli', 'Both feature outstanding performances', 'Film students often analyze both for storytelling');
-- Base Movie ID: 922, Recommended Movie ID: 2959
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1008, 9, 'hai bramli', 'Both movies are award-winning', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 922, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1009, 9, 'hai bramli', 'Cult classics with loyal fanbases', 'A great double feature for drama lovers');
-- Base Movie ID: 922, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1010, 10, 'hai bramli', 'Explore similar emotional journeys', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 922, Recommended Movie ID: 48516
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1011, 10, 'hai bramli', 'Directed by influential filmmakers', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 922, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1012, 9, 'hai bramli', 'Explore similar emotional journeys', 'Actors deliver standout roles in both');
-- Base Movie ID: 922, Recommended Movie ID: 930
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1028, 9, 'hai bramli', 'Critically acclaimed and share similar themes', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 922, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1013, 9, 'hai bramli', 'Critically acclaimed and share similar themes', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 922, Recommended Movie ID: 58559
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1014, 10, 'hai bramli', 'Notable for screenplay and dialogue', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 922, Recommended Movie ID: 1197
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1029, 9, 'hai bramli', 'Explore similar emotional journeys', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 922, Recommended Movie ID: 1212
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1030, 10, 'hai bramli', 'Explore similar emotional journeys', 'Film students often analyze both for storytelling');
-- Base Movie ID: 922, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1015, 9, 'hai bramli', 'Cult classics with loyal fanbases', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 922, Recommended Movie ID: 1245
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1016, 10, 'hai bramli', 'Explore similar emotional journeys', 'Their critical reception and audience overlap is strong');
-- Base Movie ID: 922, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1017, 10, 'hai bramli', 'Popular within the same genre community', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 922, Recommended Movie ID: 3275
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1018, 9, 'hai bramli', 'Popular within the same genre community', 'Film students often analyze both for storytelling');
-- Base Movie ID: 922, Recommended Movie ID: 1208
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1019, 10, 'hai bramli', 'Both movies are award-winning', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 922, Recommended Movie ID: 933
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1025, 10, 'hai bramli', 'Critically acclaimed and share similar themes', 'A great double feature for drama lovers');
-- Base Movie ID: 922, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1020, 9, 'hai bramli', 'Recommended for fans of classic storytelling', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 922, Recommended Movie ID: 1233
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1021, 10, 'hai bramli', 'Directed by influential filmmakers', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 922, Recommended Movie ID: 1252
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1026, 10, 'hai bramli', 'Explore similar emotional journeys', 'A great double feature for drama lovers');
-- Base Movie ID: 922, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1002, 1022, 10, 'hai bramli', 'Both feature outstanding performances', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 898, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1004, 9, 'hai bramli', 'Popular within the same genre community', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 898, Recommended Movie ID: 1204
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1005, 10, 'hai bramli', 'Cult classics with loyal fanbases', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 898, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1006, 10, 'hai bramli', 'Both movies are award-winning', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 898, Recommended Movie ID: 1235
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1007, 9, 'hai bramli', 'Recommended for fans of classic storytelling', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 898, Recommended Movie ID: 2959
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1008, 10, 'hai bramli', 'Explore similar emotional journeys', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 898, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1009, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'Film students often analyze both for storytelling');
-- Base Movie ID: 898, Recommended Movie ID: 750
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1031, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'Film students often analyze both for storytelling');
-- Base Movie ID: 898, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1010, 10, 'hai bramli', 'Directed by influential filmmakers', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 898, Recommended Movie ID: 48516
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1011, 9, 'hai bramli', 'Notable for screenplay and dialogue', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 898, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1012, 9, 'hai bramli', 'Both feature outstanding performances', 'Actors deliver standout roles in both');
-- Base Movie ID: 898, Recommended Movie ID: 930
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1028, 9, 'hai bramli', 'Share narrative style or pacing', 'Film students often analyze both for storytelling');
-- Base Movie ID: 898, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1013, 9, 'hai bramli', 'Cult classics with loyal fanbases', 'Their critical reception and audience overlap is strong');
-- Base Movie ID: 898, Recommended Movie ID: 58559
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1014, 9, 'hai bramli', 'Recommended for fans of classic storytelling', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 898, Recommended Movie ID: 1197
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1029, 9, 'hai bramli', 'Both movies are award-winning', 'Fans of one often appreciate the other for thematic depth');
-- Base Movie ID: 898, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1015, 9, 'hai bramli', 'Critically acclaimed and share similar themes', 'Strong character development is a key appeal in both');
-- Base Movie ID: 898, Recommended Movie ID: 1245
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1016, 10, 'hai bramli', 'Cult classics with loyal fanbases', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 898, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1017, 10, 'hai bramli', 'Notable for screenplay and dialogue', 'Actors deliver standout roles in both');
-- Base Movie ID: 898, Recommended Movie ID: 3275
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1018, 10, 'hai bramli', 'Popular within the same genre community', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 898, Recommended Movie ID: 1208
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1019, 10, 'hai bramli', 'Recommended for fans of classic storytelling', 'They showcase similar cinematographic techniques');
-- Base Movie ID: 898, Recommended Movie ID: 933
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1025, 10, 'hai bramli', 'Critically acclaimed and share similar themes', 'Narrative tension and payoff are comparable');
-- Base Movie ID: 898, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1020, 10, 'hai bramli', 'Explore similar emotional journeys', 'Strong character development is a key appeal in both');
-- Base Movie ID: 898, Recommended Movie ID: 1233
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1021, 9, 'hai bramli', 'Critically acclaimed and share similar themes', 'A great double feature for drama lovers');
-- Base Movie ID: 898, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1003, 1022, 10, 'hai bramli', 'Directed by influential filmmakers', 'Widely discussed in film circles for similar reasons');
-- Base Movie ID: 475, Recommended Movie ID: 1204
INSERT INTO imdb_ijs.movies_recommendations VALUES (1004, 1005, 10, 'hai bramli', 'Explore similar emotional journeys', 'A great double feature for drama lovers');
-- Base Movie ID: 475, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1004, 1006, 10, 'hai bramli', 'Notable for screenplay and dialogue', 'Actors deliver standout roles in both');
-- Base Movie ID: 475, Recommended Movie ID: 1235
INSERT INTO imdb_ijs.movies_recommendations VALUES (1004, 1007, 10, 'hai bramli', 'Directed by influential filmmakers', 'Actors deliver standout roles in both');
-- Base Movie ID: 475, Recommended Movie ID: 2959
INSERT INTO imdb_ijs.movies_recommendations VALUES (1004, 1008, 10, 'hai bramli', 'Share narrative style or pacing', 'Both movies leave a lasting emotional impact');
-- Base Movie ID: 1499, Recommended Movie ID: 1104
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1000, 6, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 318
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1001, 4, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 922
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1002, 6, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 898
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1003, 4, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'For those open to surprises in movie selection');
-- Base Movie ID: 1499, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1004, 7, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 246
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1033, 3, 'hai bramli', 'Very different eras or directors', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1006, 7, 'hai bramli', 'Obscure mix of genres that could appeal to niche tastes', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 1235
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1007, 6, 'hai bramli', 'Mismatch in theme, but both offer unique cinematic experiences', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1009, 3, 'hai bramli', 'Randomly paired with minimal connection', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 750
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1031, 7, 'hai bramli', 'Randomly paired with minimal connection', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 1499, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1010, 3, 'hai bramli', 'Obscure mix of genres that could appeal to niche tastes', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1012, 3, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1013, 7, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'For those open to surprises in movie selection');
-- Base Movie ID: 1499, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1015, 7, 'hai bramli', 'Randomly paired with minimal connection', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1017, 2, 'hai bramli', 'Mismatch in theme, but both offer unique cinematic experiences', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1020, 7, 'hai bramli', 'Contrasting styles may challenge typical expectations', NULL);
-- Base Movie ID: 1499, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1032, 1022, 2, 'hai bramli', 'Very different eras or directors', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 1882, Recommended Movie ID: 1104
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1000, 6, 'hai bramli', 'Contrasting styles may challenge typical expectations', 'For those open to surprises in movie selection');
-- Base Movie ID: 1882, Recommended Movie ID: 318
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1001, 7, 'hai bramli', 'Contrasting styles may challenge typical expectations', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 922
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1002, 3, 'hai bramli', 'Connection exists only in broad categorization', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 1882, Recommended Movie ID: 898
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1003, 4, 'hai bramli', 'Low relevance, but might suit genre explorers', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1004, 7, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 1882, Recommended Movie ID: 1204
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1005, 4, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 246
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1033, 3, 'hai bramli', 'Contrasting styles may challenge typical expectations', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1006, 4, 'hai bramli', 'Low relevance, but might suit genre explorers', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 1882, Recommended Movie ID: 1235
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1007, 4, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1009, 4, 'hai bramli', 'Contrasting styles may challenge typical expectations', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 750
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1031, 2, 'hai bramli', 'Very different eras or directors', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1010, 5, 'hai bramli', 'Very different eras or directors', 'For those open to surprises in movie selection');
-- Base Movie ID: 1882, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1012, 3, 'hai bramli', 'Very different eras or directors', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1013, 2, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 1882, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1015, 3, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 1882, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1017, 7, 'hai bramli', 'Contrasting styles may challenge typical expectations', 'For those open to surprises in movie selection');
-- Base Movie ID: 1882, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1020, 6, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 1882, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1034, 1022, 4, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'For those open to surprises in movie selection');
-- Base Movie ID: 546, Recommended Movie ID: 1104
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1000, 7, 'hai bramli', 'Low relevance, but might suit genre explorers', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 318
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1001, 6, 'hai bramli', 'Randomly paired with minimal connection', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 546, Recommended Movie ID: 922
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1002, 7, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 546, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1004, 4, 'hai bramli', 'Randomly paired with minimal connection', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 546, Recommended Movie ID: 246
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1033, 2, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', 'For those open to surprises in movie selection');
-- Base Movie ID: 546, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1006, 4, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1009, 7, 'hai bramli', 'Obscure mix of genres that could appeal to niche tastes', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 904
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1036, 3, 'hai bramli', 'Contrasting styles may challenge typical expectations', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 546, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1010, 7, 'hai bramli', 'Contrasting styles may challenge typical expectations', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 48516
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1011, 2, 'hai bramli', 'Mismatch in theme, but both offer unique cinematic experiences', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1012, 6, 'hai bramli', 'Low relevance, but might suit genre explorers', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 546, Recommended Movie ID: 1267
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1023, 6, 'hai bramli', 'Connection exists only in broad categorization', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 930
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1028, 3, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1013, 4, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 50
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1024, 3, 'hai bramli', 'Randomly paired with minimal connection', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 1212
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1030, 5, 'hai bramli', 'Mismatch in theme, but both offer unique cinematic experiences', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 546, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1015, 5, 'hai bramli', 'Contrasting styles may challenge typical expectations', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 546, Recommended Movie ID: 1245
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1016, 5, 'hai bramli', 'Weak thematic overlap, yet shared cult status', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 546, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1017, 7, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 546, Recommended Movie ID: 933
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1025, 7, 'hai bramli', 'Mismatch in theme, but both offer unique cinematic experiences', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 546, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1020, 2, 'hai bramli', 'Mismatch in theme, but both offer unique cinematic experiences', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 1252
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1026, 6, 'hai bramli', 'Randomly paired with minimal connection', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1022, 7, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 546, Recommended Movie ID: 1089
INSERT INTO imdb_ijs.movies_recommendations VALUES (1035, 1027, 2, 'hai bramli', 'Weak thematic overlap, yet shared cult status', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 2053, Recommended Movie ID: 1104
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1000, 5, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 2053, Recommended Movie ID: 318
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1001, 3, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 922
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1002, 7, 'hai bramli', 'Contrasting styles may challenge typical expectations', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 2053, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1004, 5, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 2053, Recommended Movie ID: 1204
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1005, 7, 'hai bramli', 'Connection exists only in broad categorization', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 2053, Recommended Movie ID: 246
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1033, 2, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1006, 7, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 2959
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1008, 6, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1009, 7, 'hai bramli', 'Very different eras or directors', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 904
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1036, 3, 'hai bramli', 'Mismatch in theme, but both offer unique cinematic experiences', 'For those open to surprises in movie selection');
-- Base Movie ID: 2053, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1010, 3, 'hai bramli', 'Randomly paired with minimal connection', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 48516
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1011, 2, 'hai bramli', 'Contrasting styles may challenge typical expectations', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 1213
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1012, 5, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 2053, Recommended Movie ID: 1267
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1023, 5, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 930
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1028, 7, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'For those open to surprises in movie selection');
-- Base Movie ID: 2053, Recommended Movie ID: 912
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1013, 2, 'hai bramli', 'Low relevance, but might suit genre explorers', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 58559
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1014, 2, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 50
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1024, 5, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', 'For those open to surprises in movie selection');
-- Base Movie ID: 2053, Recommended Movie ID: 1212
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1030, 4, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 926
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1015, 2, 'hai bramli', 'Unlikely pair, yet potentially interesting contrast', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 1245
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1016, 2, 'hai bramli', 'Weak thematic overlap, yet shared cult status', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 2053, Recommended Movie ID: 527
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1017, 4, 'hai bramli', 'Low relevance, but might suit genre explorers', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 3275
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1018, 3, 'hai bramli', 'Randomly paired with minimal connection', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 1208
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1019, 2, 'hai bramli', 'Randomly paired with minimal connection', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 2053, Recommended Movie ID: 933
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1025, 4, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 2329
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1020, 7, 'hai bramli', 'Randomly paired with minimal connection', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 2053, Recommended Movie ID: 1233
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1021, 6, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 2053, Recommended Movie ID: 1252
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1026, 3, 'hai bramli', 'Randomly paired with minimal connection', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 2053, Recommended Movie ID: 1198
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1038, 2, 'hai bramli', 'Contrasting styles may challenge typical expectations', 'For those open to surprises in movie selection');
-- Base Movie ID: 2053, Recommended Movie ID: 1193
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1022, 3, 'hai bramli', 'Randomly paired with minimal connection', 'Might appeal to viewers who enjoy unusual juxtapositions');
-- Base Movie ID: 2053, Recommended Movie ID: 1089
INSERT INTO imdb_ijs.movies_recommendations VALUES (1037, 1027, 6, 'hai bramli', 'Connection exists only in broad categorization', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 2720, Recommended Movie ID: 1104
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1000, 4, 'hai bramli', 'Very different eras or directors', NULL);
-- Base Movie ID: 2720, Recommended Movie ID: 318
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1001, 3, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 2720, Recommended Movie ID: 922
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1002, 2, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 2720, Recommended Movie ID: 475
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1004, 5, 'hai bramli', 'Obscure mix of genres that could appeal to niche tastes', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 2720, Recommended Movie ID: 246
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1033, 7, 'hai bramli', 'Obscure mix of genres that could appeal to niche tastes', 'Both challenge the viewer, in very different ways');
-- Base Movie ID: 2720, Recommended Movie ID: 858
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1006, 6, 'hai bramli', 'Low relevance, but might suit genre explorers', NULL);
-- Base Movie ID: 2720, Recommended Movie ID: 1276
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1009, 6, 'hai bramli', 'Different tones and genres, but might intrigue curious viewers', NULL);
-- Base Movie ID: 2720, Recommended Movie ID: 904
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1036, 6, 'hai bramli', 'Weak thematic overlap, yet shared cult status', NULL);
-- Base Movie ID: 2720, Recommended Movie ID: 1221
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1010, 4, 'hai bramli', 'Contrasting styles may challenge typical expectations', 'Could spark interesting discussion on genre contrast');
-- Base Movie ID: 2720, Recommended Movie ID: 48516
INSERT INTO imdb_ijs.movies_recommendations VALUES (1039, 1011, 5, 'hai bramli', 'Low relevance, but might suit genre explorers', 'Both challenge the viewer, in very different ways');

