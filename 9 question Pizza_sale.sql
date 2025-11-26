-- group the order by date and calculate the average
-- number of pizzas order by per day
SELECT 
    ROUND(AVG(quantity), 0)
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS quantity
    FROM
        orders o
    JOIN order_details od ON o.order_id = od.order_id
    GROUP BY o.order_date) AS order_quantity;