ASSIGNMENT 4
Retrieving information from tables.

Q1->  Write A select command that produces the order number,amount, and date for all rows in orders tables.
Ans-> select onum,amt,odate from ORDERS;
+------+---------+------------+
| onum | amt     | odate      |
+------+---------+------------+
| 3001 |   18.69 | 1990-10-03 |
| 3003 |  767.19 | 1990-10-03 |
| 3002 | 1900.10 | 1990-10-03 |
| 3005 | 5160.45 | 1990-10-03 |
| 3006 | 1098.16 | 1990-10-03 |
| 3009 | 1713.23 | 1990-10-04 |
| 3007 |   75.75 | 1990-10-04 |
| 3008 | 4723.00 | 1990-10-05 |
| 3010 | 1309.95 | 1990-10-06 |
| 3011 | 9891.98 | 1990-10-06 |
+------+---------+------------+


--Q2->  write a qyery that produces all rows from the customers table for which the salesperson's number is 1001.
select *from CUSTOMERS
      where snum=1001;
      D3_80521_Ketan>select *from CUSTOMERS
    ->       where sum=1001;
+------+---------+--------+--------+------+
| cnum | cname   | city   | rating | sum  |
+------+---------+--------+--------+------+
| 2001 | Hoffman | London |    100 | 1001 |
| 2006 | Clemens | London |    100 | 1001 |
+------+---------+--------+--------+------+


      
--3.     
select city,sname,snum,comm from SALESPEOPLE;

D3_80521_Ketan>select city,sname,snum,comm from SALESPEOPLE;
+-----------+---------+------+------+
| city      | sname   | snum | comm |
+-----------+---------+------+------+
| London    | Peel    | 1001 | 0.12 |
| San Jose  | Serres  | 1002 | 0.13 |
| London    | Motika  | 1004 | 0.11 |
| Barcelona | Rifkin  | 1007 | 0.02 |
| New York  | Axelord | 1003 | 0.10 |
+-----------+---------+------+------+

2 rows in set (0.00 sec)


--4.
select rating,cname from CUSTOMERSwhere city='San Jose'; 
      
      D3_80521_Ketan>select rating, cname from CUSTOMERS where city='San Jose';
+--------+----------+
| rating | cname    |
+--------+----------+
|    200 | Liu      |
|    300 | Cisneros |
+--------+----------+
2 rows in set (0.00 sec)

