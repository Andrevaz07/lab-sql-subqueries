#Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.

SELECT title, count(*) AS number_of_copies 
FROM  inventory i 
JOIN film f ON i.film_id = f.film_id
WHERE f.title = "Hunchback Impossible"
GROUP BY i.film_id ;

#List all films whose length is longer than the average length of all the films in the Sakila database.

SELECT title, f.length
FROM film f
WHERE f.length > (SELECT AVG(length) FROM film );

#Use a subquery to display all actors who appear in the film "Alone Trip"

SELECT CONCAT(first_name, ' ' ,last_name) AS full_name, title  AS film
FROM film f 
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON a.actor_id = fa.actor_id
WHERE f.title = "Alone Trip"
;