---1
select onum, cname from ORDERS , CUSTOMERS
where ORDERS.cnum=CUSTOMERS.cnum;
+------+----------+
| onum | cname    |
+------+----------+
| 3001 | Cisneros |
| 3003 | Hoffman  |
| 3002 | Pereira  |
| 3005 | Liu      |
| 3006 | Cisneros |
| 3009 | Giovanni |
| 3007 | Grass    |
| 3008 | Clemens  |
| 3010 | Grass    |
| 3011 | Clemens  |
+------+----------+
10 rows in set (0.00 sec)

---2
select onum ,Sname,cname from ORDERS , CUSTOMERS, SALESPEOPLE
where ORDERS.cnum=CUSTOMERS.cnum and ORDERS.snum=SALESPEOPLE.snum;
+------+---------+----------+
| onum | Sname   | cname    |
+------+---------+----------+
| 3003 | Peel    | Hoffman  |
| 3009 | Axelord | Giovanni |
| 3005 | Serres  | Liu      |
| 3010 | Serres  | Grass    |
| 3007 | Serres  | Grass    |
| 3011 | Peel    | Clemens  |
| 3008 | Peel    | Clemens  |
| 3006 | Rifkin  | Cisneros |
| 3001 | Rifkin  | Cisneros |
| 3002 | Motika  | Pereira  |
+------+---------+----------+
10 rows in set (0.01 sec)

---3
select cname,sname,comm from SALESPEOPLE, CUSTOMERS
where Comm>'.12' and SALESPEOPLE.snum=CUSTOMERS.sum;
+----------+--------+------+
| cname    | sname  | comm |
+----------+--------+------+
| Giovanni | Serres | 0.13 |
| Liu      | Serres | 0.13 |
| Grass    | Serres | 0.13 |
+----------+--------+------+

---4
select onum , comm*amt from SALESPEOPLE,CUSTOMERS,ORDERS
where rating>100 and ORDERS.cnum=CUSTOMERS.cnum and ORDERS.snum=SALESPEOPLE.snum
order by onum;
+------+----------+
| onum | comm*amt |
+------+----------+
| 3001 |     0.37 |
| 3005 |   670.86 |
| 3006 |    21.96 |
| 3007 |     9.85 |
| 3009 |   171.32 |
| 3010 |   170.29 |
+------+----------+


