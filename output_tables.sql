SELECT * FROM Users
SELECT * FROM Orders

SELECT 
    o.OrderID, o.UserID, u.name, o.Product, o.Price
FROM 
    Orders AS o
JOIN 
    Users AS u 
ON
    o.UserID = u.UserID;


SELECT 
    u.UserID, u.Name, u.Email
FROM 
    Users AS u 
LEFT JOIN 
    Orders AS o 
ON
    u.UserID = o.UserID
WHERE
    o.OrderID IS NULL;


SELECT 
    u.UserID, u.Name, SUM(o.Price) AS Total_spent
FROM 
    Users AS u
LEFT JOIN 
    Orders AS o 
ON
    u.UserID = o.UserID
GROUP BY
    u.UserID
ORDER BY
    u.UserID;


SELECT 
    u.UserID, u.Name, ROUND(AVG(o.Price), 2) AS Average_price
FROM 
    Users AS u
LEFT JOIN 
    Orders AS o 
ON 
    u.UserID = o.UserID
GROUP BY
    u.UserID
ORDER BY
    u.UserID;


SELECT
    u.UserID, u.Name, SUM(o.Price) AS Total_spent
FROM 
    Users AS u
JOIN 
    Orders AS o ON u.UserID = o.UserID
GROUP BY
    u.UserID
ORDER BY
    Total_spent DESC
LIMIT 1;

