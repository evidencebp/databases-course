-- --------------------------------------------------------------------------------------
-- SECTION 2 - Movies Pairs Ranking
-- The query identifies pairs of potentially similar movies based on two rules:
-- 1. The movies must have been released within a maximum of 5 years apart.
--    This ensures they belong to a similar era of cinema, production quality, and cultural context.
-- 2. High Genre Overlap: The movies must share at least 3 genres in common.
--    This serves as a strong indicator of stylistic similarity.
-- --------------------------------------------------------------------------------------
USE imdb_ijs;

-- INSERT INTO movies_recommendations (
--    base_movie_id, 
--    recommended_movie_id)

SELECT
	pr1.movie_id AS base_movie_id,
    pr2.movie_id AS recommended_movie_id
FROM personal_movies_ranking AS pr1

-- Self-join to pair different movies without generating duplicate pairs
INNER JOIN personal_movies_ranking AS pr2 ON pr2.movie_id <> pr1.movie_id

INNER JOIN movies AS m1 ON pr1.movie_id = m1.id
INNER JOIN movies AS m2 ON pr2.movie_id = m2.id

INNER JOIN movies_genres AS mg1 ON pr1.movie_id = mg1.movie_id
INNER JOIN movies_genres AS mg2 ON pr2.movie_id = mg2.movie_id

-- Filter to keep only movie pairs released within a maximum of 5 years apart
WHERE ABS(m1.year - m2.year) <= 5
	AND pr1.suggested_by = 'nevo-a'
    AND pr2.suggested_by = 'nevo-a'

GROUP BY
    pr1.movie_id,
    pr2.movie_id,
    m1.name,
    m2.name,
    pr1.recommendation,
    pr2.recommendation

-- Filter to ensure the paired movies share at least 3
HAVING COUNT(CASE WHEN mg1.genre = mg2.genre THEN 1 END) > 2

ORDER BY COUNT(CASE WHEN mg1.genre = mg2.genre THEN 1 END) DESC
LIMIT 250;
