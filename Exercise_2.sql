
--1.
select * from s order by city desc;
+------+-------+--------+--------+
| s#   | sname | status | city   |
+------+-------+--------+--------+
| S2   | Jones |     10 | Paris  |
| S3   | Blake |     30 | Paris  |
| S1   | Smith |     20 | London |
| S4   | Clark |     20 | London |
| S5   | Adams |     30 | Athens |
+------+-------+--------+--------+
5 rows in set (0.00 sec)

--2.
select * from p order by city,pname;
+------+-------+-------+--------+--------+
| p#   | pname | color | weight | city   |
+------+-------+-------+--------+--------+
| P6   | Cog   | Red   |     19 | London |
| P1   | Nut   | Red   |     12 | London |
| P4   | Screw | Red   |     14 | London |
| P2   | Bolt  | Green |     17 | Paris  |
| P5   | Cam   | Blue  |     12 | Paris  |
| P3   | Screw | Blue  |     17 | Rome   |
+------+-------+-------+--------+--------+
6 rows in set (0.01 sec)

--3.
select sname,status from s where status between 10 and 20;
+-------+--------+
| sname | status |
+-------+--------+
| Smith |     20 |
| Jones |     10 |
| Clark |     20 |
+-------+--------+
3 rows in set (0.00 sec)

--4.
select pname,weight from p where weight not between 9 and 15;
select pname,weight from p where weight<9 or weight>15;
+-------+--------+
| pname | weight |
+-------+--------+
| Bolt  |     17 |
| Screw |     17 |
| Cog   |     19 |
+-------+--------+
3 rows in set (0.00 sec)

--5.
select pname from p where pname like'S%';
+-------+
| pname |
+-------+
| Screw |
| Screw |
+-------+
2 rows in set (0.00 sec)

--6.
select sname,city from s where city like 'L%';
+-------+--------+
| sname | city   |
+-------+--------+
| Smith | London |
| Clark | London |
+-------+--------+
2 rows in set (0.00 sec)

--7.
select jname from j where jname like '__n%';
+---------+
| jname   |
+---------+
| Punch   |
| Console |
+---------+
2 rows in set (0.00 sec)




