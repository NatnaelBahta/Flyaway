# Flyaway


## User: 
This application created user to search flights by entering information from where they depart and where they going to. Based on the information user entered, the application show the available flights and allow user to book flights. Also user must login into the application to book flights. If user don’t have account, the application ask user to sign up.  

## Admin: 
The application also designed admin to log in into their admin account which created with MySQL table creation. Once the admin login, it will show them admin dashboard which can add flights detail, change password and logout

<img width="1280" alt="Home Page Screen Shot" src="https://user-images.githubusercontent.com/107365917/180040662-414042d7-0bb7-4b9e-9270-41a62397a90a.png">

## Before you run this application we must create database and tables. Then run the below queries

# Create database 
   Create database flyaway;


#Admin table
create table admin
(
id INT AUTO_INCREMENT,
email varchar(30) not null,
password varchar(10) not null,
PRIMARY KEY (id)
);

#Flights table
create table flights
(
id INT AUTO_INCREMENT,
flight_name varchar(20),
flight_departure varchar(20),
flight_arrival varchar(20),
flight_date DATE,
flight_departure_time TIME,  
flight_arrival_time TIME,
flight_price int(20) not null,
PRIMARY KEY (id)
);

CONVERT(char(10), GetDate(),103)

#User table
create table user
(
id INT AUTO_INCREMENT,
full_name varchar(30) not null,
email varchar(30) not null,
password varchar(10) not null,
dob date not null,
phn char(15), 
PRIMARY KEY (id)
);
###################################################################

# To insert data into the admin table 
INSERT INTO admin (email,password) values("email@gmail.com", "password");
INSERT INTO admin (email,password) values("admin", "password");
INSERT INTO admin (email,password) values("admin", "admin");

###################################################################

# To insert data into flights table 
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","01:00","17:00",700);
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","02:00","18:00",800);
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","03:00","19:00",800);
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","04:00","20:00",700);
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","05:00","21:00",700);
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","01:00","17:00",700);
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","01:00","17:00",700);
INSERT INTO flights (flight_name,flight_departure,flight_arrival,flight_date,flight_departure_time,flight_arrival_time,flight_price) 
values("United Airelines", "USA", "ADD", "2023-01-01","01:00","17:00",700);


###################################################################

# To insert data into user table 
INSERT INTO user (full_name,email,password,dob,phn) 
values("Natu Haile", "email@gmail.com", "password", "1990-01-01",9161230000);
INSERT INTO user (full_name,email,password,dob,phn) 
values("Nathnael Haile", "email@gmail.com", "password", "1990-01-01",1234560000);

###################################################################

# To Delete table
Drop table admin; 
Drop table flights;
Drop table user;

###################################################################

# To view table 
select * from admin;
select * from flights;
select * from user;

