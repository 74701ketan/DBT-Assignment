--1.
select min(status) from s;
+-------------+
| min(status) |
+-------------+
|          10 |
+-------------+
1 row in set (0.02 sec)

--2.
select max(weight) from p;
+-------------+
| max(weight) |
+-------------+
|          19 |
+-------------+
1 row in set (0.01 sec)

--3. 
select avg(weight) from p;
+-------------+
| avg(weight) |
+-------------+
|     15.1667 |
+-------------+
1 row in set (0.00 sec)

--4.
select sum(qty) from sp where `P#`='P1';
+----------+
| sum(qty) |
+----------+
|     1000 |
+----------+
1 row in set (0.01 sec)

--5.
select `p#`,sum(qty) from sp group by `p#`;
+------+----------+
| p#   | sum(qty) |
+------+----------+
| P1   |     1000 |
| P3   |     3500 |
| P5   |     1100 |
| P4   |     1300 |
| P6   |     1300 |
| P2   |      300 |
+------+----------+
6 rows in set (0.00 sec)

--6.
select `p#`,avg(qty) from sp group by `p#`;
 +------+----------+
| p#   | avg(qty) |
+------+----------+
| P1   | 333.3333 |
| P3   | 388.8889 |
| P5   | 275.0000 |
| P4   | 650.0000 |
| P6   | 325.0000 |
| P2   | 150.0000 |
+------+----------+
6 rows in set (0.01 sec)

--7.
select max(qty) from sp group by `p#` having max(qty)>800;
Empty set (0.00 sec)

--8.
select status,count(*) from s group by status;
+--------+----------+
| status | count(*) |
+--------+----------+
|     20 |        2 |
|     10 |        1 |
|     30 |        2 |
+--------+----------+
3 rows in set (0.00 sec)

--9.
select count(*),city from j group by city;
+----------+--------+
| count(*) | city   |
+----------+--------+
|        1 | Paris  |
|        1 | Rome   |
|        2 | Athens |
|        2 | London |
|        1 | Oslo   |
+----------+--------+
5 rows in set (0.00 sec)

--10.
count(status) will count the total number of rows in which status is not null and count(*) will count all the row including null values.

--11
select count(status) count ,
case 
when status=10 then 'Ten'
when status=20 then 'Twenty'
when status=30 then 'Thirty'
else 'wrong'
end 'status'
from s
group by status order by status;
 +-------+--------+
| count | status |
+-------+--------+
|     1 | Ten    |
|     2 | Thirty |
|     2 | Twenty |
+-------+--------+
3 rows in set, 1 warning (0.00 sec)





