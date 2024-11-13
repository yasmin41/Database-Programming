--create database WinTT2;
use WinTT2;

--create table Sales(
--product varchar(10),
--    day int,
--    qty int
--);

--insert into Sales VALUES
--('A', 1, 10),
--('A', 2, 6),
--('A', 3, 21),
--('A', 4, 9),
--('A', 5, 19),
--('B', 1, 12),
--('B', 2, 18),
--('B', 3, 3),
--('B', 4, 6),
--('B', 5, 23);

WITH RankedSales AS (
    select product,day,qty,
        ROW_NUMBER() OVER (PARTITION BY product ORDER BY qty ASC) AS RN
    from Sales
)
select product,day,qty,RN
from RankedSales
where
    RN <= 2
order by product,RN;
