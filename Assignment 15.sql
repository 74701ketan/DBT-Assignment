--1.
create table multicust as select * from salespeople where snum=any(select snum from customers group by snum having count(snum)>1);
Query OK, 4 rows affected, 1 warning (0.59 sec)

--2.
delete from customers where not exists (select cnum from orders);
Query OK, 0 rows affected (0.00 sec)

--3.
update salespeople set comm=comm*1.2 where snum=any(select snum from orders group by snum having sum(amt)>3000);
Query OK, 1 row affected (0.12 sec)
Rows matched: 1  Changed: 1  Warnings: 0

