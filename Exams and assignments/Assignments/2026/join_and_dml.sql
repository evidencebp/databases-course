##############################
#      3 Joins and DML
##############################

########## Question 1 ########
-- All movies with a role 'himself' or with a 'herself' role
SELECT DISTINCT
    `name`, id, year
FROM
    movies AS m
        JOIN
    roles AS r ON m.id = r.movie_id
WHERE
    LOWER(`role`) IN ('himself' , 'herself')
ORDER BY id
;

########## Question 2 #########
-- All actors that Alfred Hitchcock directed
SELECT DISTINCT
    a.first_name, a.last_name, a.id
FROM
    directors AS d
        JOIN
    movies_directors AS md ON d.id = md.director_id
        JOIN
    roles AS r ON md.movie_id = r.movie_id
        JOIN
    actors AS a ON r.actor_id = a.id
WHERE
    d.first_name = 'Alfred (I)'
        AND d.last_name = 'Hitchcock'
ORDER BY a.id
;

########## Question 3 #########
-- Creating a dedicated table for genres (a)
DROP TABLE IF EXISTS genres_type;
CREATE TABLE genres_type AS SELECT DISTINCT genre FROM
    movies_genres
;

-- All genres in which Hitchcock did not direct any movie
SELECT 
    gt.genre
FROM
    genres_type AS gt
        LEFT JOIN
    (SELECT 
        mg.genre AS hitc_genre, d.id
    FROM
        directors AS d
    JOIN movies_directors AS md ON d.id = md.director_id
    JOIN movies_genres AS mg ON md.movie_id = mg.movie_id
    WHERE
        d.first_name = 'Alfred (I)'
            AND d.last_name = 'Hitchcock') AS hitc ON gt.genre = hitc.hitc_genre
WHERE
    hitc.id IS NULL
;

########## Question 4 #########
-- Creating a movie table copy 
DROP TABLE IF EXISTS sad_movies;
CREATE TABLE sad_movies AS SELECT id, `name` FROM
    movies
;

-- Delete all that belong to the genre 'Comedy'
DELETE sm FROM sad_movies AS sm
        JOIN
    (SELECT 
        id
    FROM
        movies AS m
    JOIN movies_genres AS mg ON m.id = mg.movie_id
    
    WHERE
        mg.genre = 'Comedy') AS com_movies ON sm.id = com_movies.id
;

-- Testing the Results
SELECT 
    *
FROM
    sad_movies AS sm
        JOIN
    movies_genres AS mg ON mg.movie_id = sm.id
WHERE
    genre = 'Comedy'
;
