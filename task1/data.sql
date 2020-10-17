LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;

INSERT INTO `branches` (`id`, `city`, `address`, `phone`)
VALUES
	(1,'Москва','улица Двинцев, 12к1А','+7 (495) 999-99-99'),
	(2,'Санкт-Петербург','Средний проспект Васильевского острова, 88','+7 (812) 999-99-99'),
	(3,'Казань','улица Островского, 38','+7 (843) 999-99-99');

/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;

INSERT INTO `departments` (`id`, `name`, `branch`)
VALUES
	(1,'Финансовый отдел',1),
	(2,'IT-отдел',2),
	(3,'HR-отдел',3),
	(4,'Маркетинговый отдел',1),
	(5,'Служба безопасности',2);

/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;

INSERT INTO `employees` (`id`, `fullname`, `position`, `phone`, `email`, `department`, `is_head`)
VALUES
	(1,'Петров Петр Петрович','директор','+7 (999) 999-99-99','petrov@mail.ru',NULL,1),
	(2,'Иванов Иван Иванович','глава финансового отдела','+7 (998) 999-99-99','ivanov@mail.ru',1,1),
	(3,'Семенов Семен Семенович','финансист','+7 (997) 999-99-99','semeov@mail.ru',1,NULL),
	(4,'Константинов Константин Константинович','программист','+7 (996) 999-99-99','konstantinov@mai.ru',2,NULL),
	(5,'Артемьев Артемий Артемьевич','охранник','+7 (995) 999-99-99','artemiev@mail.ru',5,NULL),
	(6,'Владимиров Владимир Владимирович','глава службы безопасности','+7 (994) 999-99-99','vladimirov@mail.ru',5,1),
	(7,'Александров Александр Александрович','специалист','+7 (993) 999-99-99','aleksandrov@mail.ru',3,NULL),
	(8,'Валентинова Валентина Валентиновна','главный специалист','+7 (992) 999-99-99','valentinova@mai.ru',3,1),
	(9,'Борисова Вера Борисовна','маркетолог','+7 (991) 999-99-99','borisova@mail.ru',4,NULL),
	(10,'Борисов Борис Борисович','глава отдела маркетинга','+7 (990) 999-99-99','borisov@mail.ru',4,1),
	(11,'Сергеев Сергей Сергеевич','глава IT-отдела','+7 (989) 999-99-99','sergeev@mail.ru',2,1);

/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;