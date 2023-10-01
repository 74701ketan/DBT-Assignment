---1
select cname from CUSTOMERS where rating>=any(select rating from CUSTOMERS, SALESPEOPLE where CUSTOMERS.sum= SALESPEOPLE.snum and sname='Serres');

+----------+
| cname    |
+----------+
| Giovanni |
| Liu      |
| Grass    |
| Cisneros |
+----------+


---2
select sname from SALESPEOPLE where city not in ( select CUSTOMERS.city from SALESPEOPLE , CUSTOMERS where SALESPEOPLE.snum=CUSTOMERS.sum);
+------+---------+-----------+------+
| snum | sname   | city      | comm |
+------+---------+-----------+------+
| 1007 | Rifkin  | Barcelona | 0.15 |
| 1003 | Axelrod | New York  | 0.10 |
+------+---------+-----------+------+

---3
select *from ORDERS where amt>=any(select amt from CUSTOMERS, ORDERS where ORDERS.cnum=CUSTOMERS.cnum and city='LONDON');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.98 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+


---4
select *from ORDERS where amt>=any(select max(amt) from CUSTOMERS, ORDERS where ORDERS.cnum=CUSTOMERS.cnum and city='LONDON');
+------+---------+------------+------+------+
| onum | amt     | odate      | cnum | snum |
+------+---------+------------+------+------+
| 3011 | 9891.98 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+

