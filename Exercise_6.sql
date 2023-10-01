--1.
select sname,status from s where status=(select status from s where sname='CLARK');
+-------+--------+
| sname | status |
+-------+--------+
| Smith |     20 |
| Clark |     20 |
+-------+--------+
2 rows in set (0.00 sec)
--2.
select ename from emp where deptno=(select deptno from emp where ename='Miller');
+--------+
| ename  |
+--------+
| CLARK  |
| KING   |
| MILLER |
+--------+
3 rows in set (0.00 sec)

--3.
select pname from p where weight>(select max(weight) from p where color='Red');
Empty set (0.00 sec)

--4.
select jname from j where city=(select city from j where jname='Tape');
+----------+
| jname    |
+----------+
| Collator |
| Tape     |
+----------+
2 rows in set (0.00 sec)

--5.
select pname from p where weight<(select weight from p where color='Green');
+-------+
| pname |
+-------+
| Nut   |
| Screw |
| Cam   |
+-------+
3 rows in set (0.00 sec)

--6.
select sname from s,sp where s.`s#`=sp.`s#` and qty=(select max(qty) from sp);
+-------+
| sname |
+-------+
| Jones |
| Adams |
+-------+
2 rows in set (0.00 sec)

--7.
select ename from emp where sal=(select min(sal) from emp);
+-------+
| ename |
+-------+
| SMITH |
+-------+
1 row in set (0.00 sec)

--8.
select sname from s,sp where s.`s#`=sp.`s#` group by sname having sum(qty)=(select max(sum_qty) from (select sum(qty)sum_qty from sp group by `s#`)abcd);
+-------+
| sname |
+-------+
| Jones |
+-------+
1 row in set (0.00 sec)

--9.
select dname from emp,dept where emp.deptno=dept.deptno group by dname having count(emp.deptno)=(select max(count_deptno) from (select count(deptno)count_deptno from emp group by deptno)abcd);
+-------+
| dname |
+-------+
| SALES |
+-------+
1 row in set (0.02 sec)


