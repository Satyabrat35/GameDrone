CREATE USER ecomadmin IDENTIFIED BY satyabrat;
GRANT  DBA TO ecomadmin;



create table Game_details
(
GName VARCHAR2(30) PRIMARY KEY,
Publisher VARCHAR2(30) NOT NULL,
Engine VARCHAR(30) NOT NULL,
Series VARCHAR2(30) NOT NULL,
OS VARCHAR2(30),
Genre VARCHAR2(30) NOT NULL,
Processor VARCHAR2(30),
Memory VARCHAR2(30) ,
GraphicsCard VARCHAR2(30),
DirectX INT ,
Spacerequirements VARCHAR2(30),
Ratings INT NOT NULL,
Description VARCHAR2(30CHAR) UNIQUE
);
select * from Game_details;
drop table Game_details;
delete from Game_details where GName = 'lol';
insert into Game_details values('Battlefield 1','Electronics Arts','Battlefield','Frostbite3','64-bit Win 7 and later','First-person Shooter','Intel Core i5 6600K','8GB RAM','Nvidia GeForce GTX 660',11,'50GB',88,'War Story');

create table Gamer_details
(
UserName VARCHAR2(25) not null primary key,
Password varchar2(25) not null,
Name varchar2(25) not null,
Hostel int not null,
Dept varchar2(10) not null,
Rollno varchar2(15) not null unique,
Email varchar2(25) not null,
Phone int not null
);
create table Gamer_auth
(UserName varchar2(25) not null primary key,
Password varchar2(25) not null
);

select * from Gamer_details;

