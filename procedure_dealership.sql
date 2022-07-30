-- Procedure that returns customer names with cars that are not eco or sedans

SELECT customer_name
FROM customer
JOIN car
ON car.customer_id = customer.customer_id
WHERE car_price > 38000.00
