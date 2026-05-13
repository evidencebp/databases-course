##############################
# 4 Aggregations and Grouping
##############################

########## Question 1 ########
-- a: Creating a classical period film noir / crime movies table (1940s-1950s)
DROP TABLE IF EXISTS classical_movies;
CREATE TABLE classical_movies AS SELECT DISTINCT m.* FROM
    movies AS m
        JOIN
    movies_genres AS mg ON m.id = mg.movie_id
WHERE
# Note: 'Film-Noir' is treated as a genre in the IMDB database
    mg.genre IN ('crime', 'Film-Noir')
        AND m.`year` BETWEEN 1940 AND 1959
;

-- b: Pairs of classical movies with at least 3 common actors

-- creating a film noir actor-movie table for the self-join
DROP TABLE IF EXISTS film_noir_actor_movie;
CREATE TABLE film_noir_actor_movie AS SELECT actor_id, movie_id FROM
    roles AS r
        JOIN
    classical_movies AS cm ON r.movie_id = cm.id
;

SELECT 
    fnam1.movie_id, fnam2.movie_id, COUNT(*) AS count_commen_actors
FROM
    film_noir_actor_movie AS fnam1
        JOIN
    film_noir_actor_movie AS fnam2 ON fnam1.actor_id = fnam2.actor_id
WHERE
    fnam1.movie_id > fnam2.movie_id
GROUP BY fnam1.movie_id , fnam2.movie_id
HAVING count_commen_actors >= 3
;

########## Question 2 ########

-- a: Creating a table of number of actors per role
DROP TABLE IF EXISTS role_actor_count;
CREATE TABLE role_actor_count AS SELECT `role`, COUNT(*) AS num_of_actors FROM
    roles AS r
GROUP BY r.role
;

-- b: distribution of actors per role
SELECT 
    num_of_actors, COUNT(*) AS count_role
FROM
    role_actor_count
GROUP BY num_of_actors
ORDER BY num_of_actors
;

-- c: Can there be roles with zero actors?
/*
For every role we have an actor, not the other way.
A role can't exist in the table without an actor being attached to it.
That's why zero-actor roles are impossible here.
*/

########## Question 3 #########
-- Typical role sets: each movie with its list of roles
-- (using only roles played by at least 10 actors in the entire database)
SELECT 
    m.id,
    m.name,
    GROUP_CONCAT(DISTINCT r2.role
        ORDER BY r2.role) AS role_str
FROM
    (SELECT 
        role
    FROM
        roles
    WHERE
        role != ''
    GROUP BY role
    HAVING COUNT(*) >= 10) AS r
        JOIN
    roles AS r2 ON r.role = r2.role
        JOIN
    movies AS m ON r2.movie_id = m.id
GROUP BY m.id , m.name
;

########## Question 4 ########
-- Probability of roles to appear in a movie and in a genre

-- creating a genre count table
DROP TABLE IF EXISTS genere_count;
CREATE TABLE genere_count AS SELECT genre, COUNT(*) AS count_genre FROM
    movies_genres
GROUP BY genre
;

SELECT 
    r.role,
    COUNT(*) / (SELECT COUNT(*) FROM movies) AS prop_of_movies,
    mg.genre,
    COUNT(*) / gc.count_genre AS prop_of_genre
FROM
    roles AS r
        JOIN
    movies_genres AS mg ON r.movie_id = mg.movie_id
        JOIN
    genere_count AS gc ON mg.genre = gc.genre
WHERE r.role != ''
GROUP BY r.role , mg.genre , gc.count_genre
;

########## Question 5 ########
-- Interesting question: for each actor, the probability they played in each genre
-- (share of the actor's distinct movies that fall in each genre).
SELECT 
    ac.id AS actor_id,
    ac.first_name,
    ac.last_name,
    mg.genre,
    COUNT(DISTINCT r2.movie_id) / a_movies_count AS prop_genre
FROM
    (SELECT 
        a.id,
            a.first_name,
            a.last_name,
            COUNT(DISTINCT r.movie_id) AS a_movies_count
    FROM
        actors AS a
    JOIN roles AS r ON a.id = r.actor_id
    GROUP BY a.id) AS ac
        JOIN
    roles AS r2 ON ac.id = r2.actor_id
        JOIN
    movies_genres AS mg ON r2.movie_id = mg.movie_id
GROUP BY ac.id , ac.first_name , ac.last_name , mg.genre
ORDER BY actor_id , prop_genre DESC
;
