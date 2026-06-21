-- ============================================================
-- Movie Pairs - AUTOMATIC FINDING LOGIC (SELECT / display only)
-- Suggested by: Yaron
-- Schema: imdb_ijs

-- Nothing is inserted here.
--   Rule 1 (BAD)  - same director, rating gap > 4
--   Rule 2 (BAD)  - same 3+ genres, year gap > 35
--   Rule 3 (GOOD) - 5+ common cast members
-- ============================================================

USE imdb_ijs;

-- ============================================================
-- Helper tables
-- ============================================================

DROP TABLE IF EXISTS ranked_movies_actors;
CREATE TABLE ranked_movies_actors AS
    SELECT DISTINCT
        pmr.movie_id,
        r.actor_id
    FROM roles AS r
    JOIN personal_movies_ranking AS pmr
        ON r.movie_id = pmr.movie_id
;

DROP TABLE IF EXISTS ranked_movies_genres;
CREATE TABLE ranked_movies_genres AS
    SELECT
        pmr.movie_id,
        mg.genre,
        m.year
    FROM movies_genres AS mg
    JOIN personal_movies_ranking AS pmr
        ON mg.movie_id = pmr.movie_id
    JOIN movies AS m
        ON mg.movie_id = m.id
;

-- ============================================================
-- Rule 1 (BAD): same director, rating gap > 4
-- ============================================================

SELECT
    mrd1.movie_id AS base_movie_id,
    mrd2.movie_id AS recommended_movie_id,
    CONCAT('Same director, rating gap of ',
           ABS(mrd1.recommendation - mrd2.recommendation)) AS comment
FROM
    (SELECT pmr.movie_id, md.director_id, pmr.recommendation
     FROM movies_directors AS md
     JOIN personal_movies_ranking AS pmr
         ON md.movie_id = pmr.movie_id) AS mrd1
JOIN
    (SELECT pmr.movie_id, md.director_id, pmr.recommendation
     FROM movies_directors AS md
     JOIN personal_movies_ranking AS pmr
         ON md.movie_id = pmr.movie_id) AS mrd2
    ON mrd1.director_id = mrd2.director_id
WHERE mrd1.movie_id > mrd2.movie_id
  AND ABS(mrd1.recommendation - mrd2.recommendation) > 4
GROUP BY mrd1.movie_id, mrd2.movie_id, mrd1.recommendation, mrd2.recommendation
ORDER BY ABS(mrd1.recommendation - mrd2.recommendation) DESC
;

-- ============================================================
-- Rule 2 (BAD): same 3+ genres, year gap > 35
-- ============================================================

SELECT
    rmg1.movie_id AS base_movie_id,
    rmg2.movie_id AS recommended_movie_id,
    CONCAT(COUNT(*), ' common genres, ',
           ABS(rmg1.year - rmg2.year), ' year gap') AS comment
FROM ranked_movies_genres AS rmg1
JOIN ranked_movies_genres AS rmg2
    ON rmg1.genre = rmg2.genre
WHERE rmg1.movie_id > rmg2.movie_id
  AND ABS(rmg1.year - rmg2.year) > 35
GROUP BY rmg1.movie_id, rmg2.movie_id, rmg1.year, rmg2.year
HAVING COUNT(*) >= 3
ORDER BY COUNT(*) DESC
;

-- ============================================================
-- Rule 3 (GOOD): 5+ common cast members
-- ============================================================

SELECT
    rma1.movie_id AS base_movie_id,
    rma2.movie_id AS recommended_movie_id,
    CONCAT(COUNT(DISTINCT rma1.actor_id), ' common actors') AS comment
FROM ranked_movies_actors AS rma1
JOIN ranked_movies_actors AS rma2
    ON rma1.actor_id = rma2.actor_id
WHERE rma1.movie_id > rma2.movie_id
GROUP BY rma1.movie_id, rma2.movie_id
HAVING COUNT(DISTINCT rma1.actor_id) >= 5
ORDER BY COUNT(DISTINCT rma1.actor_id) DESC
;

-- ============================================================
-- Clean up helper tables
-- ============================================================

DROP TABLE IF EXISTS ranked_movies_actors;
DROP TABLE IF EXISTS ranked_movies_genres;
