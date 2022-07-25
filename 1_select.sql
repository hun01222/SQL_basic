SELECT
  CustomerID AS '아이디',
  CustomerName AS '고객명',
  City AS '도시',
  Country AS '국가'
FROM Customers
WHERE
  City = 'London' OR Country = 'Mexico'
ORDER BY CustomerName
LIMIT 0, 5;