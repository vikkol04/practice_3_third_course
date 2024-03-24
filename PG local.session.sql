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