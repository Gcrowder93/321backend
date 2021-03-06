-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name

-- film_id
-- inventory_id
-- customer_id
-- address_id
-- city_id
-- country_id

SELECT
title
FROM
film
LEFT JOIN
inventory
ON film.film_id = inventory.film_id
LEFT JOIN
rental
ON inventory.inventory_id = rental.inventory_id
LEFT JOIN
customer
ON rental.customer_id = customer.customer_id
LEFT JOIN
address
ON customer.address_id = address.address_id
LEFT JOIN
city
on address.city_id = city.city_id
LEFT JOIN
country
on city.country_id = country.country_id
WHERE
country = 'Peru'