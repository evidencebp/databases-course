use imdb_ijs;

# Good movie recommendations
# Recommending highly-rated classics to each other, with dynamic ratings (8, 9, or 10)
# based on the lower rating of the two paired movies.
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
WITH Top_Movies AS (
  SELECT 207992 AS movie_id, 10 AS rating UNION ALL # The Matrix (1999)
  SELECT 313478, 10 UNION ALL                       # Star Wars: Episode V (1980)
  SELECT 313479, 9 UNION ALL                        # Star Wars: Episode VI (1983)
  SELECT 289109, 9 UNION ALL                        # Saving Private Ryan (1998)
  SELECT 290070, 10 UNION ALL                       # Schindler's List (1993)
  SELECT 267038, 10 UNION ALL                       # Pulp Fiction (1994)
  SELECT 131780, 9 UNION ALL                        # Goodfellas (1990)
  SELECT 297838, 10 UNION ALL                       # The Shawshank Redemption (1994)
  SELECT 159172, 9 UNION ALL                        # Raiders of the Lost Ark (1981)
  SELECT 130128, 10 UNION ALL                       # The Godfather (1972)
  SELECT 130129, 10 UNION ALL                       # The Godfather Part II (1974)
  SELECT 337166, 9 UNION ALL                        # Toy Story (1995)
  SELECT 215876, 8 UNION ALL                        # Mission: Impossible (1996)
  SELECT 238072, 8                                  # Ocean's Eleven (2001)
)
SELECT 
  t1.movie_id AS base_movie_id,
  t2.movie_id AS recommended_movie_id,
  LEAST(t1.rating, t2.rating) AS recommendation,
  'GiliBarak' AS suggested_by,
  'Both are highly-acclaimed cinematic classics with outstanding storytelling, performances, and direction.' AS justification,
  NULL AS comment
FROM Top_Movies t1
CROSS JOIN Top_Movies t2
WHERE t1.movie_id != t2.movie_id;


# Bad movie recommendations
# Pairing 20 good movies with 9 weak movies of similar genres/franchises, using varied ratings (1 to 5)
# Justifications follow the "Though both movies are A, it is a bad recommendation since B" template.
INSERT INTO movies_recommendations (base_movie_id, recommended_movie_id, recommendation, suggested_by, justification, comment)
WITH Good_Movies AS (
  SELECT 30959 AS movie_id UNION ALL # Batman Begins (2005)
  SELECT 30955 UNION ALL             # Batman (1989)
  SELECT 311038 UNION ALL            # Spider-Man 2 (2004)
  SELECT 319602 UNION ALL            # Superman (1978)
  SELECT 207992 UNION ALL            # The Matrix (1999)
  SELECT 130128 UNION ALL            # The Godfather (1972)
  SELECT 130129 UNION ALL            # The Godfather Part II (1974)
  SELECT 238072 UNION ALL            # Ocean's Eleven (2001)
  SELECT 267038 UNION ALL            # Pulp Fiction (1994)
  SELECT 276217 UNION ALL            # Reservoir Dogs (1992)
  SELECT 131780 UNION ALL            # Goodfellas (1990)
  SELECT 56304 UNION ALL             # Casino (1995)
  SELECT 82967 UNION ALL             # The Departed (2006)
  SELECT 291698 UNION ALL            # Se7en (1995)
  SELECT 301540 UNION ALL            # Silence of the Lambs (1991)
  SELECT 141544 UNION ALL            # Heat (1995)
  SELECT 297838 UNION ALL            # Shawshank Redemption (1994)
  SELECT 159172 UNION ALL            # Raiders of the Lost Ark (1981)
  SELECT 289109 UNION ALL            # Saving Private Ryan (1998)
  SELECT 290070                      # Schindler's List (1993)
),
Bad_Movies AS (
  SELECT 30952 AS movie_id, 2 AS rec, 'superhero movies' AS common_link, 'Batman & Robin is campy, silly, and widely considered one of the worst superhero films ever made' AS reason UNION ALL # Batman & Robin (1997)
  SELECT 311040, 5, 'superhero movies', 'Spider-Man 3 is overstuffed with villains and lacks the focused storytelling of the classics' UNION ALL                                # Spider-Man 3 (2007)
  SELECT 238073, 5, 'crime or heist films', 'Ocean''s Twelve has a convoluted plot and lacks the sharp execution of the best heist movies' UNION ALL                              # Ocean's Twelve (2004)
  SELECT 280305, 5, 'inspiring sports dramas', 'Rocky V is a disappointing sequel with a weak, messy plot' UNION ALL                                                              # Rocky V (1990)
  SELECT 220805, 5, 'action-focused films', 'Mr. and Mrs. Smith relies too much on simple shooting and action rather than a strong narrative' UNION ALL                           # Mr. and Mrs. Smith (2005)
  SELECT 188511, 5, 'action buddy-cop films', 'Lethal Weapon 4 has an overstuffed, messy story that lacks the tight pacing of the original' UNION ALL                             # Lethal Weapon 4 (1998)
  SELECT 1390, 5, 'films directed by Steven Spielberg', '1941 is a loud, chaotic comedy that fails to capture the dramatic excellence of his best work' UNION ALL                # 1941 (1979)
  SELECT 149287, 5, 'films directed by Steven Spielberg', 'Hook is a sentimental family movie that lacks the mature depth of his historical dramas' UNION ALL                      # Hook (1991)
  SELECT 12744, 5, 'films directed by Steven Spielberg', 'Always is a slow, overly sentimental drama that does not match the epic scale of his best films'                       # Always (1989)
)
SELECT 
  g.movie_id AS base_movie_id,
  b.movie_id AS recommended_movie_id,
  b.rec AS recommendation,
  'GiliBarak' AS suggested_by,
  CONCAT('Though both movies are ', b.common_link, ', it is a bad recommendation since ', b.reason) AS justification,
  NULL AS comment
FROM Good_Movies g
CROSS JOIN Bad_Movies b;
