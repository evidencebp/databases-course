use imdb_ijs;

drop table if exists gs_movies_ids;

create table gs_movies_ids
(id int
, PRIMARY KEY (id)
, FOREIGN KEY (id) REFERENCES movies(Id)
);

insert into gs_movies_ids
select base_movie_id from movies_recommendations
union
select recommended_movie_id from movies_recommendations
union
select movie_id from personal_movies_ranking
;


DROP TABLE IF EXISTS `gs_movies`;
CREATE TABLE `gs_movies` (
  `id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `rank` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movies_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

insert into gs_movies
select m.*
from
movies as m
join
gs_movies_ids as gsmi
on
m.id = gsmi.id
;


DROP TABLE IF EXISTS `gs_roles`;
CREATE TABLE `gs_roles` (
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`actor_id`,`movie_id`,`role`),
  KEY `actor_id` (`actor_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `gs_roles_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gs_roles_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

insert into gs_roles
select s.*
from
roles as s
join
gs_movies_ids as gsmi
on
s.movie_id = gsmi.id
;


DROP TABLE IF EXISTS `gs_actors`;
CREATE TABLE `gs_actors` (
  `id` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actors_first_name` (`first_name`),
  KEY `actors_last_name` (`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

insert into gs_actors
select distinct s.*
from
actors as s
join
gs_roles as r
on
s.id = r.actor_id
;


DROP TABLE IF EXISTS `gs_movies_directors`;
CREATE TABLE `gs_movies_directors` (
  `director_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`director_id`,`movie_id`),
  KEY `movies_directors_director_id` (`director_id`),
  KEY `movies_directors_movie_id` (`movie_id`),
  CONSTRAINT `gs_movies_directors_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `gs_movies_directors_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

insert into gs_movies_directors
select s.*
from
movies_directors as s
join
gs_movies_ids as gsmi
on
s.movie_id = gsmi.id
;


DROP TABLE IF EXISTS `gs_directors`;
CREATE TABLE `gs_directors` (
  `id` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `directors_first_name` (`first_name`),
  KEY `directors_last_name` (`last_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

insert into gs_directors
select distinct s.*
from
directors as s
join
gs_movies_directors as gmd
on
s.id = gmd.director_id
;


DROP TABLE IF EXISTS `gs_movies_genres`;
CREATE TABLE `gs_movies_genres` (
  `movie_id` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre`),
  KEY `movies_genres_movie_id` (`movie_id`),
  CONSTRAINT `gs_movies_genres_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

insert into gs_movies_genres
select s.*
from
movies_genres as s
join
gs_movies_ids as gsmi
on
s.movie_id = gsmi.id
;