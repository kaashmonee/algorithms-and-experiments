CREATE DATABASE mydb;
use mydb;

create table users (
    userid bigint not null AUTO_INCREMENT,
    firstname varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL,
    PRIMARY KEY (userid)
);

insert into users(firstname, lastname)
values("mike", "marge"), ("mr", "madam");
