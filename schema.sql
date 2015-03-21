PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users (id integer primary key autoincrement not null, username varchar(25) not null, password varchar(25) not null, email varchar(255) not null, cell varchar(10), balance float(10,2) not null default 0, cc_num varchar(16), cc_exp varchar(4), cc_cve varchar(3));
CREATE TABLE history (id integer primary key autoincrement not null, user_id integer not null, event_id integer, type varchar(25) not null, amount float(10,2) not null default 0);
CREATE TABLE registrations (id integer primary key autoincrement not null, user_id integer not null, event_id integer not null, name varchar(255) not null, position tinyint, comments varchar(255));
CREATE TABLE waitlist (id integer primary key autoincrement not null, user_id integer not null, event_id integer not null, name varchar(255) not null, order tinyint not null);
CREATE TABLE events (id integer primary key autoincrement not null, date date not null, time_start time not null, time_stop time not null, location varchar(255) not null, desc varchar(255) not null, cost float(10,2) not null default 0);
COMMIT;
