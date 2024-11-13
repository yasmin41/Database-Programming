--create database WinTT;

--use WinTT;

--CREATE TABLE demand (
--    day int primary key,
--    qty Iint
--);


--insert into demand VALUES
--(1, 10),
--(2, 6),
--(3, 21),
--(4, 9),
--(6, 12),
--(7, 18),
--(8, 3),
--(9, 6),
--(10, 23);

select day,qty,
    SUM(qty) OVER (ORDER BY day) AS cumQty
from demand;