create database EX1;
--Query OK, 1 row affected (0.16 sec)
use EX1;
--Database changed
--1.
create table semp(empno char(4),empname char(20),basic float,deptno char(2),depthead char(4));
--Query OK, 0 rows affected (0.62 sec)
--2.
create table sdept(deptno char(2),deptname char(15));
--Query OK, 0 rows affected (1.23 sec)
--3.
insert into sdept values('10','Development'),('20','Training');
--Query OK, 2 rows affected (0.24 sec)
--Records: 2  Duplicates: 0  Warnings: 0
--4.
insert into semp values('0001','SUNIL',6000,'10',NULL),('0002','HIREN',8000,'20',NULL),('0003','ALI',4000,'10','0001'),('0004','GEORGE',6000,NULL,'0002');
--Query OK, 4 rows affected (0.14 sec)
--Records: 4  Duplicates: 0  Warnings: 0

----------------------------------------------------------------------------------------------------------------------------------------------
create database spj;
use spj;
create table s(`s#` char(5),sname char(20),status int,city char(15));
create table p(`p#` char(6),pname char(20),color char(6),weight int,city char(15));
create table j(`j#` char(4),jname char(10),city char(15));
create table sp (`s#` char(4), `p#` char(4), `j#` char(4), qty int);
insert into s values
('S1','Smith',20,'London'),
('S2','Jones',10,'Paris'),
('S3','Blake',30,'Paris'),
('S4','Clark',20,'London'),
('S5','Adams',30,'Athens');
insert into p values
('P1','Nut','Red',12,'London'),
('P2','Bolt','Green',17,'Paris'),
('P3','Screw','Blue',17,'Rome'),
('P4','Screw','Red',14,'London'),
('P5','Cam','Blue',12,'Paris'),
('P6','Cog','Red',19,'London');
insert into j values
('J1','Sorter','Paris'),
('J2','Punch','Rome'),
('J3','Reader','Athens'),
('J4','Console','Athens'),
('J5','Collator','London'),
('J6','Terminal','Oslo'),
('J7','Tape','London');
insert into sp values
('S1','P1','J1',200),
('S1','P1','J4',700),
('S2','P3','J1',400),
('S2','P3','J2',200),
('S2','P3','J3',200),
('S2','P3','J4',500),
('S2','P3','J5',600),
('S2','P3','J6',400),
('S2','P3','J7',800),
('S2','P5','J2',100),
('S3','P3','J1',200),
('S3','P4','J2',500),
('S4','P6','J3',300),
('S4','P6','J7',300),
('S5','P2','J2',200),
('S5','P2','J4',100),
('S5','P5','J5',500),
('S5','P5','J7',100),
('S5','P6','J2',200),
('S5','P1','J4',100),
('S5','P3','J4',200),
('S5','P4','J4',800),
('S5','P5','J4',400),
('S5','P6','J4',500);
--5.
select * from s;
+------+-------+--------+--------+
| s#   | sname | status | city   |
+------+-------+--------+--------+
| S1   | Smith |     20 | London |
| S2   | Jones |     10 | Paris  |
| S3   | Blake |     30 | Paris  |
| S4   | Clark |     20 | London |
| S5   | Adams |     30 | Athens |
+------+-------+--------+--------+
--5 rows in set (0.00 sec)
--6.
select `s#`,sname from s;
+------+-------+
| s#   | sname |
+------+-------+
| S1   | Smith |
| S2   | Jones |
| S3   | Blake |
| S4   | Clark |
| S5   | Adams |
+------+-------+
5 rows in set (0.00 sec)
--7.
select pname,color from p where city='London';
+-------+-------+
| pname | color |
+-------+-------+
| Nut   | Red   |
| Screw | Red   |
| Cog   | Red   |
+-------+-------+
3 rows in set (0.00 sec)
--8.
select sname from s where city='London';
+-------+
| sname |
+-------+
| Smith |
| Clark |
+-------+
2 rows in set (0.00 sec)

--9.
select sname,city from s where city='Paris' or city='Athens';
+-------+--------+
| sname | city   |
+-------+--------+
| Jones | Paris  |
| Blake | Paris  |
| Adams | Athens |
+-------+--------+
3 rows in set (0.00 sec)

--10.
select jname from j where city='Athens';
+---------+
| jname   |
+---------+
| Reader  |
| Console |
+---------+
2 rows in set (0.00 sec)

--11.
select pname,weight from p where weight between 12 and 14;
+-------+--------+
| pname | weight |
+-------+--------+
| Nut   |     12 |
| Screw |     14 |
| Cam   |     12 |
+-------+--------+
3 rows in set (0.00 sec)

--12.
select sname,status from s where status >=20;
+-------+--------+
| sname | status |
+-------+--------+
| Smith |     20 |
| Blake |     30 |
| Clark |     20 |
| Adams |     30 |
+-------+--------+
4 rows in set (0.00 sec)

--13.
select sname,city from s where city!='London';
+-------+--------+
| sname | city   |
+-------+--------+
| Jones | Paris  |
| Blake | Paris  |
| Adams | Athens |
+-------+--------+
3 rows in set (0.00 sec)

--14.
select distinct city from s;

--15.
select weight,weight*1000 MILLIGRAM,weight/1000 KILOGRAM from p;
+--------+-----------+----------+
| weight | MILLIGRAM | KILOGRAM |
+--------+-----------+----------+
|     12 |     12000 |   0.0120 |
|     17 |     17000 |   0.0170 |
|     17 |     17000 |   0.0170 |
|     14 |     14000 |   0.0140 |
|     12 |     12000 |   0.0120 |
|     19 |     19000 |   0.0190 |
+--------+-----------+----------+
6 rows in set (0.01 sec)

