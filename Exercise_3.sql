--1.
select concat(upper(substr(sname,1,1)),lower(substr(sname,2))) from s;
+---------------------------------------------------------+
| concat(upper(substr(sname,1,1)),lower(substr(sname,2))) |
+---------------------------------------------------------+
| Smith                                                   |
| Jones                                                   |
| Blake                                                   |
| Clark                                                   |
| Adams                                                   |
+---------------------------------------------------------+
5 rows in set (0.00 sec)

--2.
select upper(sname) from s;
+--------------+
| upper(sname) |
+--------------+
| SMITH        |
| JONES        |
| BLAKE        |
| CLARK        |
| ADAMS        |
+--------------+
5 rows in set (0.00 sec)

--3.
select lower(sname) from s;
+--------------+
| lower(sname) |
+--------------+
| smith        |
| jones        |
| blake        |
| clark        |
| adams        |
+--------------+
5 rows in set (0.00 sec)

--4.
select lpad(sname,25,' ') from s;
+---------------------------+
| lpad(sname,25,' ')        |
+---------------------------+
|                     Smith |
|                     Jones |
|                     Blake |
|                     Clark |
|                     Adams |
+---------------------------+
5 rows in set (0.00 sec)

--5.
select replace(sname,'la','ro') from s;
+--------------------------+
| replace(sname,'la','ro') |
+--------------------------+
| Smith                    |
| Jones                    |
| Broke                    |
| Crork                    |
| Adams                    |
+--------------------------+
5 rows in set (0.00 sec)

--6.
select replace(replace(sname,'l','r'),'a','o') from s;
+-----------------------------------------+
| replace(replace(sname,'l','r'),'a','o') |
+-----------------------------------------+
| Smith                                   |
| Jones                                   |
| Broke                                   |
| Crork                                   |
| Adoms                                   |
+-----------------------------------------+
5 rows in set (0.00 sec)

--7.
select sname,length(sname) from s;
+-------+---------------+
| sname | length(sname) |
+-------+---------------+
| Smith |             5 |
| Jones |             5 |
| Blake |             5 |
| Clark |             5 |
| Adams |             5 |
+-------+---------------+
5 rows in set (0.00 sec)

--8.
select * from s where soundex(sname)=soundex('BLOKE');
+------+-------+--------+-------+
| s#   | sname | status | city  |
+------+-------+--------+-------+
| S3   | Blake |     30 | Paris |
+------+-------+--------+-------+
1 row in set (0.00 sec)

--9.
select sname ,


--10.
select dayname(current_date);

+-----------------------+
| dayname(current_date) |
+-----------------------+
| Saturday              |
+-----------------------+
1 row in set (0.00 sec)

