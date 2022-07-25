-- JOIN은 여러 table을 합치는 것!
-- 1. INNER JOIN

-- -- ambiguous
-- SELECT C.CategoryID, C.CategoryName, P.ProductName
-- FROM Categories C
-- -- 분해한 table을 다시 합침
-- JOIN Products P
-- 	ON C.CategoryID = P.CategoryID;

-- SELECT
-- 	CONCAT(
--     	P.ProductName, ' by ', S.SupplierName
--     ) AS Product,
--     S.Phone, P.Price
-- FROM Products P
-- JOIN Suppliers S
--   ON P.SupplierID = S.SupplierID
-- WHERE Price > 50
-- ORDER BY ProductName;

-- SELECT 
--   C.CategoryID, C.CategoryName, 
--   P.ProductName, 
--   O.OrderDate,
--   D.Quantity
-- FROM Categories C
-- JOIN Products P 
--   ON C.CategoryID = P.CategoryID
-- JOIN OrderDetails D
--   ON P.ProductID = D.ProductID
-- JOIN Orders O
--   ON O.OrderID = D.OrderID;

-- SELECT 
--   C.CategoryName,
--   MIN(O.OrderDate) AS FirstOrder,
--   MAX(O.OrderDate) AS LastOrder,
--   SUM(D.Quantity) AS TotalQuantity
-- FROM Categories C
-- JOIN Products P 
--   ON C.CategoryID = P.CategoryID
-- JOIN OrderDetails D
--   ON P.ProductID = D.ProductID
-- JOIN Orders O
--   ON O.OrderID = D.OrderID
-- GROUP BY C.CategoryID;

-- SELECT
--   E1.EmployeeID, CONCAT_WS(' ', E1.FirstName, E1.LastName) AS Employee,
--   E2.EmployeeID, CONCAT_WS(' ', E2.FirstName, E2.LastName) AS NextEmployee
-- FROM Employees E1 JOIN Employees E2
-- ON E1.EmployeeID + 1 = E2.EmployeeID;

-- 1번의 전, 마지막 번호의 다음은? INNER JOIN의 특징! 없어짐


-- 2. OUTTER JOIN

-- SELECT
--   E1.EmployeeID, CONCAT_WS(' ', E1.FirstName, E1.LastName) AS Employee,
--   IFNULL(E2.EmployeeID, 'N'), CONCAT_WS(' ', E2.FirstName, E2.LastName) AS NextEmployee
-- FROM Employees E1 LEFT JOIN Employees E2
-- ON E1.EmployeeID + 1 = E2.EmployeeID;

-- SELECT
--   IFNULL(C.CustomerName, '-- NO CUSTOMER --'),
--   IFNULL(S.SupplierName, '-- NO SUPPLIER --'),
--   IFNULL(C.City, S.City),
--   IFNULL(C.Country, S.Country)
-- FROM Customers C
-- RIGHT JOIN Suppliers S
-- ON C.City = S.City AND C.Country = S.Country;


-- 3. CROSS JOIN

-- SELECT
--   E1.LastName, E2.FirstName
-- FROM Employees E1
-- CROSS JOIN Employees E2
-- ORDER BY E1.EmployeeID;