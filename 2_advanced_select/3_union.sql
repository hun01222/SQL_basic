-- JOIN은 column을 합치는 방식 UNION은 row를 합치는 방식

-- SELECT CustomerName AS Name, City, Country, 'CUSTOMER'
-- FROM Customers
-- UNION
-- SELECT SupplierName AS Name, City, Country, 'SUPPLIER'
-- FROM Suppliers
-- ORDER BY Name;

-- 1. 합집합

-- SELECT CategoryID AS ID FROM Categories
-- WHERE CategoryID > 4
-- UNION
-- SELECT EmployeeID AS ID FROM Employees
-- WHERE EmployeeID % 2 = 0;

-- -- UNION ALL로 바꿔볼 것: 중복된 값까지 포함!

-- 2. 교집합

-- SELECT CategoryID AS ID
-- FROM Categories C, Employees E
-- WHERE 
--   C.CategoryID > 4
--   AND E.EmployeeID % 2 = 0
--   AND C.CategoryID = E.EmployeeID;

-- 3. 차집합

-- SELECT CategoryID AS ID
-- FROM Categories
-- WHERE 
--   CategoryID > 4
--   AND CategoryID NOT IN (
--     SELECT EmployeeID
--     FROM Employees
--     WHERE EmployeeID % 2 = 0
--   );

-- 4. 대칭 차집합

-- SELECT ID FROM (
--   SELECT CategoryID AS ID FROM Categories
--   WHERE CategoryID > 4
--   UNION ALL
--   SELECT EmployeeID AS ID FROM Employees
--   WHERE EmployeeID % 2 = 0
-- ) AS Temp 
-- GROUP BY ID HAVING COUNT(*) = 1;