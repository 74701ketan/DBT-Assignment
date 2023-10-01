---1
select * from ORDERS where cnum=(select cnum from CUSTOMERS where cname='Cisneros');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
+------+---------+------------+------+------+


---2
select cname , rating from CUSTOMERS where ORDERS.cnum>(select ORDERS.cnum  from ORDERS having amt > (select avg(amt) from ORDERS));

select cname , rating from CUSTOMERS, ORDERS where ORDERS.cnum=CUSTOMERS.cnum and CUSTOMERS.cnum= any (select ORDERS.cnum from ORDERS having amt >(select avg(amt) from ORDERS));
+---------+--------+
| cname   | rating |
+---------+--------+
| Liu     |    200 |
| Clemens |    100 |
| Clemens |    100 |
+---------+--------+

---3
select sname , sum(amt) from SALESPEOPLE, ORDERS group  by snum where ORDERS.snum=SALESPEOPLE.snum and
ORDERS.snum>(select ORDERS.amt from ORDERS having sum(amt)>(select max(amt) from ORDERS));
select snum,sum(amt) from ORDERS group by snum having sum(amt)>(select max(amt)from ORDERS);
+------+----------+
| snum | sum(amt) |
+------+----------+
| 1001 | 15382.17 |
+------+----------+

