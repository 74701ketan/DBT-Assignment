--1.
select sname ,sum(qty) from s,sp where s.`s#`=sp.`s#`group by sname;
+-------+----------+
| sname | sum(qty) |
+-------+----------+
| Smith |      900 |
| Jones |     3200 |
| Blake |      700 |
| Clark |      600 |
| Adams |     3100 |
+-------+----------+
5 rows in set (0.02 sec)

--2.
select pname ,sum(qty) from p,sp where p.`p#`=sp.`p#`group by pname;
+-------+----------+
| pname | sum(qty) |
+-------+----------+
| Nut   |     1000 |
| Screw |     4800 |
| Cam   |     1100 |
| Cog   |     1300 |
| Bolt  |      300 |
+-------+----------+
5 rows in set (0.00 sec)

--3.
select jname ,sum(qty) from j,sp where j.`j#`=sp.`j#`group by jname;
+----------+----------+
| jname    | sum(qty) |
+----------+----------+
| Sorter   |      800 |
| Console  |     3300 |
| Punch    |     1200 |
| Reader   |      500 |
| Collator |     1100 |
| Terminal |      400 |
| Tape     |     1200 |
+----------+----------+
7 rows in set (0.02 sec)

--4.
select sname,pname,jname,qty from s,p,j,sp where s.`s#`=sp.`s#` and p.`p#`=sp.`p#` and j.`j#`=sp.`j#`;
+-------+-------+----------+------+
| sname | pname | jname    | qty  |
+-------+-------+----------+------+
| Jones | Screw | Sorter   |  400 |
| Blake | Screw | Sorter   |  200 |
| Smith | Nut   | Sorter   |  200 |
| Adams | Cog   | Punch    |  200 |
| Jones | Cam   | Punch    |  100 |
| Blake | Screw | Punch    |  500 |
| Jones | Screw | Punch    |  200 |
| Adams | Bolt  | Punch    |  200 |
| Clark | Cog   | Reader   |  300 |
| Jones | Screw | Reader   |  200 |
| Adams | Cog   | Console  |  500 |
| Adams | Cam   | Console  |  400 |
| Adams | Screw | Console  |  800 |
| Jones | Screw | Console  |  500 |
| Adams | Screw | Console  |  200 |
| Adams | Bolt  | Console  |  100 |
| Smith | Nut   | Console  |  700 |
| Adams | Nut   | Console  |  100 |
| Adams | Cam   | Collator |  500 |
| Jones | Screw | Collator |  600 |
| Jones | Screw | Terminal |  400 |
| Clark | Cog   | Tape     |  300 |
| Adams | Cam   | Tape     |  100 |
| Jones | Screw | Tape     |  800 |
+-------+-------+----------+------+
24 rows in set (0.00 sec)


--5.
select distinct sname from s,j where s.city=j.city;
+-------+
| sname |
+-------+
| Blake |
| Jones |
| Adams |
| Clark |
| Smith |
+-------+
5 rows in set (0.02 sec)

--6.
select pname,sum(qty) from p,sp where p.`p#`=sp.`p#` and color='Red' group by pname;
+-------+----------+
| pname | sum(qty) |
+-------+----------+
| Nut   |     1000 |
| Screw |     1300 |
| Cog   |     1300 |
+-------+----------+
3 rows in set (0.00 sec)

--7.
select sname,sum(qty) from s,sp where s.`s#`=sp.`s#` and status=20
group by sname;
+-------+----------+
| sname | sum(qty) |
+-------+----------+
| Smith |      900 |
| Clark |      600 |
+-------+----------+
2 rows in set (0.00 sec)

--8.
select pname,sum(qty) from p,sp where p.`p#`=sp.`p#` and weight>14 group by pname;
+-------+----------+
| pname | sum(qty) |
+-------+----------+
| Screw |     3500 |
| Cog   |     1300 |
| Bolt  |      300 |
+-------+----------+
3 rows in set (0.00 sec)

--9.
select jname,city,sum(qty) from j,sp where j.`j#`=sp.`j#` group by jname,city having sum(qty)>500;
+----------+--------+----------+
| jname    | city   | sum(qty) |
+----------+--------+----------+
| Sorter   | Paris  |      800 |
| Console  | Athens |     3300 |
| Punch    | Rome   |     1200 |
| Collator | London |     1100 |
| Tape     | London |     1200 |
+----------+--------+----------+
5 rows in set (0.00 sec)

--10.
select pname,sum(qty) from p,sp where p.`p#`=sp.`p#` and weight<15 group by pname;
+-------+----------+
| pname | sum(qty) |
+-------+----------+
| Nut   |     1000 |
| Cam   |     1100 |
| Screw |     1300 |
+-------+----------+
3 rows in set (0.00 sec)

--11.
select a.ename Employee,b.ename Manager from emp b,emp a where a.mgr=b.empno;
+----------+---------+
| Employee | Manager |
+----------+---------+
| SMITH    | FORD    |
| ALLEN    | BLAKE   |
| WARD     | BLAKE   |
| JONES    | KING    |
| MARTIN   | BLAKE   |
| BLAKE    | KING    |
| CLARK    | KING    |
| SCOTT    | JONES   |
| TURNER   | BLAKE   |
| ADAMS    | SCOTT   |
| JAMES    | BLAKE   |
| FORD     | JONES   |
| MILLER   | CLARK   |
+----------+---------+
13 rows in set (0.00 sec)

 
