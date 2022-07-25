-- 1. independent subquery

-- SELECT 
-- 	  CategoryID, CategoryName, Description,
--     (SELECT ProductName FROM Products WHERE ProductID = 1)
-- FROM Categories;

-- SELECT * FROM Products
-- WHERE Price < (
-- 	SELECT AVG(Price) FROM Products
-- );

-- SELECT
-- 	  CategoryID, CategoryName, Description
-- FROM Categories
-- WHERE
-- 	  CategoryID =
--     (SELECT CategoryID FROM Products
--     WHERE ProductName = 'Chais');

-- SELECT * FROM Products
-- WHERE Price > ALL (
-- 	  SELECT Price FROM Products
-- 	  WHERE CategoryID = 2
-- );

-- SELECT
-- 	  CategoryID, CategoryName, Description
-- FROM Categories
-- WHERE
-- 	  CategoryID IN -- Cat egoryID = ANY
--     (SELECT CategoryID FROM Products
--     WHERE Price > 50);


-- 2. dependent subquery

-- SELECT
-- 	  ProductID, ProductName,
--     (SELECT CategoryName FROM Categories C
--      WHERE C.CategoryID = P.CategoryID
--     ) AS CategoryName
-- FROM Products P;

-- SELECT
-- 	  SupplierName, Country, City,
--     (
--       SELECT COUNT(*) FROM Customers C
--       WHERE C.country = S.country
--     ) AS CustomersInTheCountry,
--     (
--    	  SELECT COUNT(*) FROM Customers C
--       WHERE C.Country = S.Country
--       	AND C.City = S.City
--     ) AS CustomersInTheCountry
-- FROM Suppliers S;

-- SELECT
--   CategoryID, CategoryName,
--   (
--     SELECT MAX(Price) FROM Products P
--     WHERE P.CategoryID = C.CategoryID
--   ) AS MaximumPrice,
--   (
--     SELECT AVG(Price) FROM Products P
--     WHERE P.CategoryID = C.CategoryID
--   ) AS AveragePrice
-- FROM Categories C;

-- SELECT
--   ProductID, ProductName, CategoryID, Price
--   ,(SELECT AVG(Price) FROM Products P2
--   WHERE P2.CategoryID = P1.CategoryID)
-- FROM Products P1
-- WHERE Price < (
--   SELECT AVG(Price) FROM Products P2
--   WHERE P2.CategoryID = P1.CategoryID
-- );

-- SELECT
--   CategoryID, CategoryName,
--   (SELECT MAX(P.Price) FROM Products P
--   WHERE P.CategoryID = C.CategoryID
--   ) AS MaxPrice
-- FROM Categories C
-- -- EXISTS: 결과가 한건이라도 존재하면 true, 그렇지 않으면 false를 리턴한다.
-- WHERE EXISTS (
--   SELECT * FROM Products P
--   WHERE P.CategoryID = C.CategoryID
--   AND P.Price > 80
-- );
