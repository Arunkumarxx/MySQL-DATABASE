
alter user 'apex'@'localhost' account lock ;
/*
 mysql> alter user 'apex'@'localhost' account lock ;
Query OK, 0 rows affected (0.01 sec)

 */

select user,  from mysql.user;