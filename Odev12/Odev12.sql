SELECT COUNT(length) FROM film
WHERE length > 
(
	SELECT AVG(length) FROM film
);

SELECT COUNT(rental_rate) FROM film
WHERE rental_rate = 
(
	SELECT MAX(rental_rate) FROM film
);

SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);


-- BU SORGUYU YAZARKEN NASIL ÇALIŞTIĞINI BİR ALLAH BİLİYORDU, BİR DE BEN. 
-- ARTIK SADECE ALLAH BİLİYOR.
SELECT * FROM customer
INNER JOIN (SELECT customer_id, frequency FROM (SELECT customer_id, frequency FROM (SELECT customer_id, COUNT(customer_id) AS frequency FROM payment
GROUP BY customer_id
ORDER BY COUNT(customer_id) DESC
) AS frequencies) AS mytable
WHERE frequency = (SELECT MAX(frequency) FROM (SELECT customer_id, COUNT(customer_id) AS frequency FROM payment
	GROUP BY customer_id
	ORDER BY COUNT(customer_id) DESC
	) AS frequencies)) AS tmp
ON customer.customer_id = tmp.customer_id;





































