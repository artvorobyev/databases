
CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `representative_name` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `industry` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

INSERT INTO `clients` (`id`, `name`, `representative_name`, `phone`, `industry`) VALUES (NULL, 'ПАО Газпром', 'Алексей Миллер', '+7 495 719-30-01', 'Добыча природных ресурсов');


CREATE TABLE `projects` ( 
    `id` INT(11) NOT NULL AUTO_INCREMENT , 
    `client` INT(11) NOT NULL , 
    `responsible_employee` INT(11) NOT NULL , 
    `branch` INT(11) NOT NULL , 
    `name` VARCHAR(200) NOT NULL , 
    `start_date` DATE NOT NULL , 
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `projects` (`id`, `client`, `responsible_employee`, `branch`, `name`, `start_date`) VALUES (NULL, '1', '11', '2', 'Информационная система учета добычи газа', '2020-10-04');


CREATE TABLE `income` ( 
    `id` INT(11) NOT NULL AUTO_INCREMENT , 
    `project` INT(11) NOT NULL , 
    `amount` INT(20) NOT NULL , 
    `description` TEXT NOT NULL , 
    `date` DATE NOT NULL , 
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `income` (`id`, `project`, `amount`, `description`, `date`) VALUES (NULL, '1', '1000000', 'Аванс за услуги по созданию информационной системы учета добычи газа', '2020-10-02');

CREATE TABLE `outcome` ( 
    `id` INT(11) NOT NULL AUTO_INCREMENT , 
    `project` INT(11) NULL , 
    `amount` INT(20) NOT NULL , 
    `description` TEXT NOT NULL , 
    `date` DATE NOT NULL , 
    `author` INT(11) NOT NULL , 
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `outcome` (`id`, `project`, `amount`, `description`, `date`, `author`) VALUES (NULL, NULL, '3000', 'Покупка стула в московский офис', '2020-10-06', '1');
INSERT INTO `outcome` (`id`, `project`, `amount`, `description`, `date`, `author`) VALUES (NULL, '1', '10000', 'Аренда сервера для тестирования системы учета добычи газа', '2020-10-11', '11');