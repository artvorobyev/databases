/* Пришлось поменять тип с указанием длины строки, чтобы добавить проверку на уникальность */
ALTER TABLE `clients` CHANGE `name` `name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `clients` ADD CONSTRAINT UNIQUE (`name`);