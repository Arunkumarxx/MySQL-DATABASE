create table personInfo(
    id int,
    name varchar(255),
    age int,
    birthDate date
);

insert into personInfo values (1,'Arunkumar',19,'2004-08-21');

DELIMITER //
CREATE TRIGGER before_update_trigger
BEFORE UPDATE ON personInfo FOR EACH ROW
BEGIN
   IF age< 0
   THEN SIGNAL SQLSTATE '45000'
   SET MESSAGE_TEXT = 'Age Cannot be Negative';
END IF;
END //
DELIMITER ;

drop trigger before_update_trigger;
select * from personInfo;

UPDATE personInfo SET age = -1 WHERE id = 1;
/*
 personal_database> UPDATE personInfo SET age = -1 WHERE id = 1
[2024-06-10 20:48:30] [42S22][1054] Unknown column 'age' in 'field list'

 */