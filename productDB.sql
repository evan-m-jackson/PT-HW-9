create database if not exists customers;

use customers;

drop table if exists phonenumbers;
drop table if exists product_orders;
drop table if exists products;
drop table if exists orders;
drop table if exists customers;

create table customers (
        id int(11) not null auto_increment,
        first_name varchar(20) not null,
        last_name varchar(20) not null,
        street varchar(25),
        state char(2) not null,
        zip char(5),
        city varchar(20),
        primary key (id)
);