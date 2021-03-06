-- find all film titles rented out by customers who live in the city of Dundee
-- Similar to exercise 6 but you need a few more joins to get the city name

-- film_id
-- inventory_id
-- customer_id
-- address_id
-- city_id

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
WHERE
city = 'Dundee'