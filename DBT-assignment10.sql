---1
select a.sname ,b.sname ,  b. city from SALESPEOPLE a, SALESPEOPLE b where a.city= b.city and a.snum>b.snum ;
+--------+-------+--------+
| sname  | sname | city   |
+--------+-------+--------+
| Motika | Peel  | London |
+--------+-------+--------+


---2
select cname, city from CUSTOMERS where rating =( select rating from CUSTOMERS where cname = 'Hoffman');
+---------+--------+
| cname   | city   |
+---------+--------+
| Hoffman | London |
| Clemens | London |
| Pereira | Rome   |
+---------+--------+
3 rows in set (0.00 sec)

