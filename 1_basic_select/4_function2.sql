-- 1. 시간 관련 연산자

-- SELECT CURDATE(), CURTIME(), NOW(),
--   '2021-6-1' = '2021-06-01',
--   DATE('2021-6-1') = DATE('2021-06-01'),
--   '1:2:3' = '01:02:03',
--   TIME('1:2:3') = TIME('01:02:03'),
--   '2021-6-1 1:2:3' = '2021-06-01 01:02:03',
--   DATE('2021-6-1 1:2:3') = DATE('2021-06-01 01:02:03'),
--   TIME('2021-6-1 1:2:3') = TIME('2021-06-01 01:02:03'),
--   DATE('2021-6-1 1:2:3') = TIME('2021-06-01 01:02:03'),
--   DATE('2021-6-1') = DATE('2021-06-01 01:02:03'),
--   TIME('2021-6-1 1:2:3') = TIME('01:02:03');

-- SELECT * FROM Orders
-- WHERE OrderDate BETWEEN DATE('1997-1-1') AND DATE('1997-1-31');

-- SELECT
--   OrderDate,
--   YEAR(OrderDate) AS YEAR,
--   MONTHNAME(OrderDate) AS MONTHNAME,
--   MONTH(OrderDate) AS MONTH,
--   WEEKDAY(OrderDate) AS WEEKDAY,
--   DAYNAME(OrderDate) AS DAYNAME,
--   DAY(OrderDate) AS DAY
-- FROM Orders;

-- SELECT
--   OrderDate,
--   CONCAT(
--   	CONCAT_WS(
--     	'/',
--         YEAR(OrderDate), MONTH(OrderDate), DAY(OrderDate)
--     ),
--     ' ',
--     UPPER(LEFT(DAYNAME(OrderDate), 3))
--   )
-- FROM Orders;

-- SELECT
-- 	  HOUR(NOW()), MINUTE(NOW()), SECOND(NOW()),
--     ADDDATE(NOW(), INTERVAL 9 HOUR);

-- SELECT
-- 	  OrderDate,
-- 	  HOUR(NOW()), MINUTE(NOW()), SECOND(NOW()),
--     ADDDATE(NOW(), INTERVAL 9 HOUR),
--     DATEDIFF(NOW(), OrderDate)
-- FROM Orders;

-- SELECT
-- 	  OrderDate,
-- 	  LAST_DAY(OrderDate),
--     DAY(LAST_DAY(OrderDate)),
--     DATEDIFF(LAST_DAY(OrderDate), OrderDate)
-- FROM Orders;

-- SELECT
--     DATE_FORMAT(NOW(), '%M %D, %Y %T'),
--     DATE_FORMAT(NOW(), '%y-%m-%d %h:%i:%s %p'),
--    	DATE_FORMAT(NOW(), '%Y년 %m월 %d일 %p %h시 %i분 %s초'),
--     REPLACE(
--     	REPLACE(
--     		DATE_FORMAT(NOW(), '%Y년 %m월 %d일 %p %h시 %i분 %s초)'),
--         	'AM', '오전'
--     	),
--     'PM', '오후'
--     );

-- SELECT
-- 	  IF (1 > 2, '1은 2보다 크다.', '1은 2보다 작다.'),
-- 	  CASE
--       	WHEN -1 > 0 THEN '-1은 양수다.'
--         WHEN -1 = 0 THEN '-1은 0이다.'
--         ELSE '-1은 음수다.'
--     END;

-- SELECT
-- 	  Price,
--     IF (Price > 30, 'Expensive' , 'Cheap'),
--     CASE
--     	WHEN Price < 20 THEN '저가'
--         WHEN Price BETWEEN 20 AND 30 THEN '일반'
--         ELSE '고가'
--     END
-- FROM Products;

-- SELECT
-- 	  IFNULL('A', 'B'),
--     IFNULL(NULL, 'B');