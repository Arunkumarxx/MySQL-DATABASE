select orders.CUSTOMER_ID from orders
union
select id from customers;
/*
 +-------------+
| CUSTOMER_ID |
+-------------+
|           3 |
|           2 |
|           4 |
|           1 |
|           5 |
|           6 |
|           7 |
+-------------+
7 rows in set (0.00 sec)
 */

select orders.CUSTOMER_ID from orders
union all
select id from customers;
/*
+-------------+
| CUSTOMER_ID |
+-------------+
|           3 |
|           3 |
|           2 |
|           4 |
|           1 |
|           2 |
|           3 |
|           4 |
|           5 |
|           6 |
|           7 |
+-------------+
11 rows in set (0.00 sec)
 */
select ID,orders.AMOUNT from customers
left join orders on CUSTOMER_ID =id;
/*
+----+---------+
| ID | AMOUNT  |
+----+---------+
|  1 |    NULL |
|  2 | 1560.00 |
|  3 | 1500.00 |
|  3 | 3000.00 |
|  4 | 2060.00 |
|  5 |    NULL |
|  6 |    NULL |
|  7 |    NULL |
+----+---------+
8 rows in set (0.00 sec)
 */