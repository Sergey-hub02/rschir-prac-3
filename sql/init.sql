CREATE DATABASE IF NOT EXISTS appDB;
CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED WITH mysql_native_password BY 'admin';
GRANT SELECT,UPDATE,INSERT ON appDB.* TO 'admin'@'%';
FLUSH PRIVILEGES;

USE appDB;
CREATE TABLE IF NOT EXISTS users (
    ID INT(11) NOT NULL AUTO_INCREMENT,
    username VARCHAR(32) NOT NULL,
    password VARCHAR(256) NOT NULL,
    email VARCHAR(64) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS `goods`(
    ID INT(11) PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    `description` TEXT NOT NULL
);

INSERT INTO users (
    username,
    password,
    email
)
VALUES
    ('ezh1k', '$2y$10$8tMdwAC2xM9PSLqev5gBGODjQEnHduLh0mXhp2OYOWjdPTa4OPTwi', 's.park190802@gmail.com');

INSERT INTO `goods`(`title`, `description`)
VALUES
    ('Title #1', 'Description number 1'),
    ('Title #2', 'Description number 2'),
    ('Title #3', 'Description number 3'),
    ('Title #4', 'Description number 4'),
    ('Title #5', 'Description number 5');
