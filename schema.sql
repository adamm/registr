PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (id integer primary key autoincrement not null, username varchar(25) not null, password varchar(25) not null, email varchar(255) not null, balance float(10,2) not null default 0);
CREATE TABLE history (id integer primary key autoincrement not null, user_id integer not null, class_id integer, type varchar(25) not null, amount float(10,2) not null default 0);
CREATE TABLE classes (id integer primary key autoincrement not null, date date not null, time_start time not null, time_stop time not null, location varchar(255) not null, desc varchar(255) not null, cost float(10,2) not null default 0);
CREATE TABLE registration (id integer primary key autoincrement not null,
user_id integer not null, class_id integer not null);
COMMIT;
