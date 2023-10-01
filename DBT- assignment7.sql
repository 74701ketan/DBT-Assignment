---1
select count(*) from ORDERS where odate='1990-10-03';
+----------+
| count(*) |
+----------+
|        5 |
+----------+

---2
select count(distinct city) from CUSTOMERS;
+----------------------+
| count(distinct city) |
+----------------------+
|                    4 |
+----------------------+


---3
select cnum , min(amt) from ORDERS
group by cnum;
+------+----------+
| cnum | min(amt) |
+------+----------+
| 2008 |    18.69 |
| 2001 |   767.19 |
| 2007 |  1900.10 |
| 2003 |  5160.45 |
| 2002 |  1713.23 |
| 2004 |    75.75 |
| 2006 |  4723.00 |
+------+----------+


---4
select cname from CUSTOMERS
where cname like 'G%'
limit 1;
+----------+
| cname    |
+----------+
| Giovanni |
+----------+

---5
select city, max(rating) from CUSTOMERS
group by city;
+----------+-------------+
| city     | max(rating) |
+----------+-------------+
| London   |         100 |
| Rome     |         200 |
| San Jose |         300 |
| Berlin   |         300 |
+----------+-------------+

---6
select count(distinct snum) from ORDERS
group by odate;
+------------+------------+
| salescount | odate      |
+------------+------------+
|          4 | 1990-10-03 |
|          2 | 1990-10-04 |
|          1 | 1990-10-05 |
|          2 | 1990-10-06 |
+------------+------------+




