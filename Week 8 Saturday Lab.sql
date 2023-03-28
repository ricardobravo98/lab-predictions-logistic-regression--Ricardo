USE SAKILA;

#join the tables

#film inbventory to rental

#title and rental_date

SELECT a.title, a.length, a.rating, e.name, c.rental_date 
FROM film a 
JOIN film_category d
on a.film_id = d.film_id
Join category e
on d.category_id = e.category_id
JOIN inventory b 
ON a.film_id = b.film_id 
JOIN rental c 
ON b.inventory_id = c.inventory_id;

#add more 