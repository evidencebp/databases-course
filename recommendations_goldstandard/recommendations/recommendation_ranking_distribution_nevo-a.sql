USE imdb_ijs;

-- ======================================================================================
-- This query analyzes how the scores are distributed among the generated pairs
-- for user 'nevo-a'.
-- ======================================================================================

SELECT
	recommendation,
    COUNT(recommendation) AS pairs_count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM movies_recommendations
WHERE suggested_by = "nevo-a"
GROUP BY recommendation
ORDER BY recommendation DESC;