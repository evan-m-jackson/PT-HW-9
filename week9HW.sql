create database if not exists social_media;

use social_media;

drop table if exists users;
drop table if exists posts;
drop table if exists comments;

create table users (
    id int(11) not null auto_increment,
    username varchar(20) not null,
    email varchar(25) not null,
    password varchar(20) not null,
    primary key (id)
);

create table posts (
    id int(11) not null auto_increment,
    users_id int(11) not null,
    time_created timestamp not null,
    content text not null,
    primary key (id),
    foreign key (users_id) references users (id)
);

create table comments (
    id int(11) not null auto_increment,
    users_id int(11) not null,
    post_id int(11) not null,
    time_created timestamp not null,
    content text not null,
    primary key (id),
    foreign key (users_id) references users (id),
    foreign key (post_id) references posts (id)
);