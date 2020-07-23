drop database IF exists adlister_db;
CREATE DATABASE adlister_db IF NOT EXISTS;
USE adlister_db


CREATE TABLE users (
       id int not null AUTO_INCREMENT PRIMARY KEY ;
       username varchar(75) not null;
       email varchar(100) not null;
       password varchar (255)not null;
)

CREATE TABLE ads (
        id int UNSIGNED not null AUTO_INCREMENT PRIMARY KEY,
        user_id int UNSIGNED not null,
        title varchar(100) not null,
        description TEXT
        foreign key (user_id) references users (id)
);
