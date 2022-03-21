-- find all film titles that an actor with the last_name Davis appears in
-- Similar to exercise 3 but with actor, film_actor, film

-- film_id
-- actor_id

SELECT
title
FROM
film
LEFT JOIN
film_actor
ON
film.film_id = film_actor.film_id
LEFT JOIN
actor
ON
film_actor.actor_id = actor.actor_id
WHERE
last_name = 'Davis'


-- SELECT
-- last_name
-- FROM
-- actor
-- LEFT JOIN
-- film_actor
-- ON
-- actor.actor_id = film_actor.actor_id
-- LEFT JOIN
-- film
-- ON
-- film_actor.film_id = film.film_id
-- WHERE
-- last_name = 'Davis'
