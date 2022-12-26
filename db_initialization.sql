-- See what databases are available
show databases;

-- create a new database named society
create database society;

-- use database to view the tables
use society;
show tables;

-- creating a table named Users
create table Users (
UserId varchar(15) primary key, 
FirstName varchar(255),
LastName varchar(255),
Email varchar(255) unique key,
Phone varchar(12),
Address varchar(255),
CreateDate date
);


-- creating a table named Posts
create table Posts (
PostID int primary key,
UserID varchar(15),
PostType varchar(10),
PostDate date,
EmailAddress varchar(25),
PhoneNumber varchar(12),
foreign key (UserId) references users(UserId) 
);


-- creating a table named Housings
create table Housings (
HousingId int primary key,
Location varchar(255),
PostId int,
UserId varchar(15),
Price int,
Bedrooms varchar(15),
Bathrooms varchar(15),
LeaseTerm varchar(15),
PetsPolicy varchar(15),
foreign key (UserId) references Users(UserId),
foreign key (PostId) references Posts(PostId)
);

-- creating a table named Jobs
create table Jobs (
JobId int primary key, 
HoursPerWeek int,
PayPerHour int,
JobType varchar(25),
JobLocation varchar(100),
PostId int,
UserId varchar(15),
foreign key (UserId) references Users(UserId),
foreign key (PostId) references Posts(PostId)
);
