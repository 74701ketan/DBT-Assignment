--1.
insert into salespeople(city,sname,comm,snum) values('San Jose','Blanco',null,1100);
Query OK, 1 row affected (0.18 sec)

--2.
delete from orders where cnum=(select cnum from customers where cname='Clemens');
Query OK, 2 rows affected (0.13 sec)

--3.
update customers
set rating = rating+100 where city='Rome';
Query OK, 2 rows affected (0.09 sec)
Rows matched: 2  Changed: 2  Warnings: 0

--4.
update customers 
set snum =(select snum from salespeople where sname='Motika')
where snum=(select snum from salespeople where sname='Serres');
Query OK, 2 rows affected (0.11 sec)
Rows matched: 2  Changed: 2  Warnings: 0

