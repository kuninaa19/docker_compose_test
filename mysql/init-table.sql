    CREATE TABLE chat(
    `id` INT(50) not null AUTO_INCREMENT,
    `room_id` INT(50) default '0',
    `sender` VARCHAR(50) NOT NULL,
    `content` VARCHAR(500) NOT NULL,
    `time` DATETIME NOT NULL,
    `lang` VARCHAR(50) default 'none',
    PRIMARY KEY (`id`)
    )ENGINE=INNODB DEFAULT CHARSET=UTF8;

    CREATE TABLE image(
    `image_1` VARCHAR(50) NOT NULL
    )ENGINE=INNODB DEFAULT CHARSET=UTF8;

    CREATE TABLE images(
	`image_1` VARCHAR(255) NOT NULL,
	`image_2` VARCHAR(255) NOT NULL,
	`image_3` VARCHAR(255) NOT NULL,
	`image_4` VARCHAR(255) NOT NULL,
	`image_5` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`image_1`)
	)ENGINE=INNODB DEFAULT CHARSET=UTF8;

    CREATE TABLE message(
	`id` INT(50) NOT NULL AUTO_INCREMENT,
	`room_id` INT(50) NOT NULL,
	`user_name` VARCHAR(30) NOT NULL,
	`host_name` VARCHAR(30) NOT NULL,
	`message` VARCHAR(255) NOT NULL,
	`time` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
	)ENGINE=INNODB DEFAULT CHARSET=UTF8;

-- order로 테이블명 작성시 오류
    CREATE TABLE orders(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `aid` VARCHAR(100) NOT NULL,
    `cid` VARCHAR(100) NOT NULL,
    `tid` VARCHAR(100) NOT NULL,
    `partner_order_id` VARCHAR(100) NOT NULL,
    `partner_user_id` VARCHAR(100) NOT NULL,
    `item_name` VARCHAR(100) NOT NULL,
    `quantity` INT(11) NOT NULL,
    `amount` JSON NOT NULL,
    `date` JSON NOT NULL,
    `created_at` DATETIME NOT NULL,
    `approved_at` DATETIME NOT NULL,
    `payment_method_type` VARCHAR(50) DEFAULT '""',
    `card_info` JSON,
    PRIMARY KEY (`id`)
    )ENGINE=INNODB DEFAULT CHARSET=UTF8;

    CREATE TABLE review(
	`id` INT(50) NOT NULL AUTO_INCREMENT,
    `order_id` INT(50) NOT NULL,
    `room_id` INT(50) NOT NULL,
    `room_name` VARCHAR(50) DEFAULT '',
    `score` INT(50) NOT NULL,
	`user_name` VARCHAR(50) NOT NULL,
	`content` VARCHAR(500) NOT NULL,
	`date` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
	)ENGINE=INNODB DEFAULT CHARSET=UTF8;

    CREATE TABLE room(
	`id`	INT(50) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`country` VARCHAR(50) NOT NULL,
    `region` VARCHAR(50) NOT NULL,
    `simple_info` JSON ,
	`location` JSON,
	`intro_info` VARCHAR(1000) NOT NULL,
    `value` JSON NOT NULL,
	`image` VARCHAR(255) NOT NULL,
	`host_name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`id`)
	)ENGINE=INNODB DEFAULT CHARSET=UTF8;

    CREATE TABLE users(
	`id`	INT(11) NOT NULL AUTO_INCREMENT,
	`email` VARCHAR(50) NOT NULL,
	`nickname` VARCHAR(30) NOT NULL,
	`password` VARCHAR(255),
    `way` VARCHAR(50) DEFAULT '',
	`who` VARCHAR(50) DEFAULT 'user',
	PRIMARY KEY (`id`),
    INDEX `EMAIL KEY` (`email`)
	)ENGINE=INNODB DEFAULT CHARSET=UTF8;