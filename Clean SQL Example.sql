create database if not exists ss;
use ss;
create table if not exists school (
school_id int (3), 
school_name varchar (30),
city varchar (20));
 
create table if not exists student (
student_id int (4),
student_name varchar (20),
city varchar (20),
school_id int (2));

insert into school (school_id,school_name,city)
values(1,"Stanford","Stanford"),
(2,"University of Cali","San Francisco"),
(3,"Harvard University","New York"),
(4,"MIT","Boston"),
(5,"Yale","New Haven");

insert into student (student_id, student_name, city, school_id)
values (1001, 'Peter Brebec', 'Newyork', 1),
(1002, 'John Goorgy', 'Sanfran', 2),
(2003, 'Brad Smith', 'Newyork', 3),
(1004, 'Fabian John', 'Boston',5),
(1005, 'Brad Cam', 'Stanford',1), 