show triggers ;

/*
 mysql> show triggers ;
+---------------------+--------+---------+--------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+-----------------------+----------------------+----------------------+--------------------+
| Trigger             | Event  | Table   | Statement                                                                      | Timing | Created                | sql_mode                                                                                                              | Definer               | character_set_client | collation_connection | Database Collation |
+---------------------+--------+---------+--------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+-----------------------+----------------------+----------------------+--------------------+
| IsScoreLessThanZero | INSERT | student | BEGIN
    IF NEW.score < 0 THEN
        SET NEW.score = 0;
    END IF;
END | BEFORE | 2024-06-10 13:21:47.45 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | Arunkumarxx@localhost | utf8mb4              | utf8mb4_0900_ai_ci   | utf8mb4_0900_ai_ci |
+---------------------+--------+---------+--------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+-----------------------+----------------------+----------------------+--------------------+
1 row in set (0.00 sec)
 */