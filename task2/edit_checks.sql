ALTER TABLE `branches` ADD CONSTRAINT phone_check CHECK (`phone` LIKE '+7%');
ALTER TABLE `clients` ADD CONSTRAINT phone_check CHECK (`phone` LIKE '+7%');
ALTER TABLE `employees` ADD CONSTRAINT phone_check CHECK (`phone` LIKE '+7%');