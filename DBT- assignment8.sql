---1
select onum,snum,0.12*amt commission from ORDERS;
------+------+------------+
| onum | snum | commission |
+------+------+------------+
| 3001 | 1007 |       2.24 |
| 3003 | 1001 |      92.06 |
| 3002 | 1004 |     228.01 |
| 3005 | 1002 |     619.25 |
| 3006 | 1007 |     131.78 |
| 3009 | 1003 |     205.59 |
| 3007 | 1002 |       9.09 |
| 3008 | 1001 |     566.76 |
| 3010 | 1002 |     157.19 |
| 3011 | 1001 |    1187.04 |
+------+------+------------+


---2
select city, max(rating) From CUSTOMERS
group by city;
+----------+-------------+
| city     | max(rating) |
+----------+-------------+
| London   |         100 |
| Rome     |         200 |
| San Jose |         300 |
| Berlin   |         300 |
+----------+-------------+

---3
select rating,cname,cnum from customers order by rating desc;
+--------+----------+------+
| rating | cname    | cnum |
+--------+----------+------+
|    300 | Grass    | 2004 |
|    300 | Cisneros | 2008 |
|    200 | Giovanni | 2002 |
|    200 | Liu      | 2003 |
|    100 | Hoffman  | 2001 |
|    100 | Clemens  | 2006 |
|    100 | Pereira  | 2007 |
+--------+----------+------+
7 rows in set (0.00 sec)

---4
select odate ,count(onum) from ORDERS
group by odate
order by 2 desc;
+------------+-------------+
| odate      | count(onum) |
+------------+-------------+
| 1990-10-03 |           5 |
| 1990-10-04 |           2 |
| 1990-10-06 |           2 |
| 1990-10-05 |           1 |
+------------+-------------+


