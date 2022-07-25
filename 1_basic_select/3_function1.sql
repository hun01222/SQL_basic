-- 1. 숫자 관련 함수

-- SELECT ROUND(price),
--     CEIL(price),
--     FLOOR(price)
-- FROM Products;

-- SELECT 
-- 	  OrderDetailID, ProductID, Quantity,
--     GREATEST(OrderDetailID, ProductID, Quantity),
--     LEAST(OrderDetailID, ProductID, Quantity),
--     MAX(Quantity),
--     AVG(Quantity),
--     COUNT(Quantity),
--     POW(2, 3)
-- FROM OrderDetails
-- WHERE ABS(Quantity - 10) < 5;

-- SELECT Price FROM Products
-- WHERE TRUNCATE(Price, 0) = 12;


-- 2. 문자 관련 함수

-- SELECT 
-- 	  UCASE(CustomerName),
--     LCASE(ContactName),
--     CONCAT('HELLO', ' ', 'THIS IS', 2021),
--     CONCAT_WS('-', 2021, 8, 15, 'AM')
-- FROM Customers;

-- SELECT
-- 	  SUBSTR('ABCDEFG', 3),
--    SUBSTR('ABCDEFG', -4, 2),
--    LEFT('ABCDEFG', 4);

-- SELECT
-- 	  OrderDate,
--     LEFT(OrderDate, 4) AS Year,
--     SUBSTR(OrderDate, 6, 2) AS Month,
--     RIGHT(OrderDate, 2) AS Day
-- FROM Orders;

-- SELECT
-- 	  LENGTH('안녕하세요'),
--     CHAR_LENGTH('안녕하세요'),
--     CHARACTER_LENGTH('안녕하세요');

-- SELECT
-- 	  CONCAT('|', ' HELLO ', '|'),
--    	CONCAT('|', LTRIM(' HELLO '), '|'),
--     CONCAT('|', RTRIM(' HELLO' ), '|'),
--   	CONCAT('|', TRIM(' HELLO '), '|');

-- SELECT
-- 	REPLACE(Description, ', and', ','),
-- 	REPLACE(REPLACE(Description, ', and', ','), ',', ' and')
-- FROM Categories;

-- SELECT * FROM Customers
-- WHERE INSTR(CustomerName, ' ') BETWEEN 1 AND 6;

-- SELECT
-- 	  '01' = '1',
--     CONVERT('01', DECIMAL) = CONVERT('1', DECIMAL);

