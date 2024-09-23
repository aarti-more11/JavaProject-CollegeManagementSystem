use advancedJava;

create table Faculty(
id int primary key auto_increment,
facultyName varchar(30),
email varchar(50),
mobileNo varchar(10),
Designation varchar(30),
Department varchar(30),
course varchar(30)
);

drop table Faculty;

insert into Faculty values(id,"Aarti","aartimore@gmail.com",7038573221,"Java Trainer","IT","Java");

select *from Faculty;

insert into Faculty values(id,"Priya","priya@gmail.com","7038672567","SQL Trainer","IT","SQL");

select *from Faculty;



