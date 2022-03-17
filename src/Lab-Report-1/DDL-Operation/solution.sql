CREATE DATABASE brownpearl;
USE brownpearl;

CREATE TABLE users(
    user_ID int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(25) NOT NULL,
    user_password VARCHAR(16) NOT NULL,
    email VARCHAR(30) NOT NULL
);

ALTER TABLE users
ADD user_type VARCHAR(10) NOT NULL DEFAULT 'customer';

DROP TABLE users;

DROP DATABASE brownpearl;