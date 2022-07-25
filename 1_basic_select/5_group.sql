-- SELECT Country 
--   	Country, City,
--     CONCAT_WS(', ', City, Country)
-- FROM Customers
-- GROUP BY Country;

-- SELECT
-- 	  COUNT(*), OrderDate
-- FROM Orders
-- GROUP BY OrderDate;

-- SELECT
-- 	  ProductID,
--     SUM(Quantity) AS QuantitySum
-- FROM OrderDetails
-- GROUP BY ProductID
-- ORDER BY QuantitySum DESC;

-- SELECT
-- 	  COUNT(*) AS Count, OrderDate
-- FROM Orders
-- WHERE OrderDate > DATE('1996-12-31')
-- GROUP BY OrderDate
-- -- WHERE은 그룹하기 전 데이터 HAVING은 그룹 후 집계에 사용
-- HAVING Count > 2;

-- SELECT
-- 	  CategoryID,
--     MAX(Price) AS MaxPrice,
--     MIN(Price) AS MinPrice,
--     TRUNCATE((MAX(Price) + MIN(Price)) / 2, 2) AS MedianPrice,
--     TRUNCATE(AVG(Price), 2) AS AveragePrice
-- FROM Products
-- WHERE CategoryID > 2
-- GROUP BY CategoryID
-- HAVING
-- 	  AveragePrice BETWEEN 20 AND 30
--     AND MedianPrice < 40;

-- -- DISTINCT는 중복된 값을 제거
-- SELECT DISTINCT CategoryID
-- FROM Products;

-- SELECT
--     Country,
--     COUNT(DISTINCT CITY)
-- FROM Customers
-- GROUP BY Country;