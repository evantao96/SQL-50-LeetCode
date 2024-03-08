# Write your MySQL query statement below
SELECT Prices.product_id, IFNULL(ROUND(SUM(units * price) / SUM(units), 2), 0) as average_price
FROM Prices
LEFT JOIN UnitsSold
ON Prices.product_id = UnitsSold.product_id AND purchase_date BETWEEN start_date AND end_date
GROUP BY Prices.product_id;