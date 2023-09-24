SELECT * FROM language ;
SELECT * FROM film ;
SELECT * FROM category;
SELECT * FROM film_category;
SELECT * FROM actor;

(1) Please create query to retrieve all films available in the data following the language of the film also

SELECT film.title, description, release_year,name
FROM film
JOIN language
	ON film.language_id = language.language_id;
	


(2) Please create query to retrieve data which shown how much film for each categories


SELECT category.category_id, category.name AS category_name, COUNT (film_category.film_id) AS film_count
FROM category
JOIN film_category ON film_category.category_id = category.category_id
GROUP BY category.category_id, category.name
ORDER BY category.name;


(3) Please create query to retrieve all actor for a film

SELECT film.title, actor.first_name, actor.last_name
FROM film 
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
GROUP BY film.title, actor.first_name, actor.last_name
ORDER BY film.title;


