-- Calculate total revenue generated frmo pizza sales
SELECT 
    ROUND(SUM(p.price * o.quantity), 2) AS total_sales
FROM
    pizzas p
        JOIN
    order_details o ON p.pizza_id = o.pizza_id;
