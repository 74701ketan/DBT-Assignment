---1
select cname,city , "HIGH RATING" rating from CUSTOMERS where rating>=200
union
select cname,city , "LOW RATING" rating from CUSTOMERS where rating<200;
+----------+----------+-------------+
| cname    | city     | rating      |
+----------+----------+-------------+
| Giovanni | Rome     | HIGH RATING |
| Liu      | San Jose | HIGH RATING |
| Grass    | Berlin   | HIGH RATING |
| Cisneros | San Jose | HIGH RATING |
| Hoffman  | London   | LOW RATING  |
| Clemens  | London   | LOW RATING  |
| Pereira  | Rome     | LOW RATING  |
+----------+----------+-------------+

