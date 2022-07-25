-- 1. 사칙 연산자

-- SELECT 'wow' + 1 * '002' AS Number,
--   'Hello' AS Hi;

-- SELECT OrderID, ProductID,
-- 	OrderID + ProductID AS Sum,
--   OrderID * 0.75 / 2 AS HalfOrderID
-- FROM OrderDetails;


-- 2. 참, 거짓 관련 연산자

-- SELECT 0 = FALSE AND (TRUE IS TRUE) IS NOT FALSE,
-- 	2 + 3 = 5 AND 2 * 3 = 6;

-- SELECT ProductID, Quantity,
-- 	NOT Quantity > 20 AS OVER
--     FROM OrderDetails
-- WHERE
-- 	(productID BETWEEN 1 AND 40)
--     AND (OrderID <> 10514 AND Quantity = 50)
--     AND ('Hello' IN (1, false, 'Hello'))
--     AND 'HELLO' LIKE 'H%O'
--     AND 'HELLO' LIKE 'HEL__';

-- SELECT * FROM Employees
-- WHERE Notes LIKE 'Education%';