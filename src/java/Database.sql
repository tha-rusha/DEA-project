create database airline;
use airline;

create table customer(
    customerName varchar(255),
    email varchar(255),
    passportNumber int,
    address varchar(255),
    gender varchar(255),
    mobile int,
    password varchar(255),
    userRole varchar(255),
    PRIMARY KEY (passportNumber)
    );

create table flightbooking(
       bookingId int not null auto_increment,
       from_s varchar(255),
       to_s varchar(255),
       start_s varchar(255),
       return_s varchar(255),
       adults int,
       child int,
       passportNumber int,
       primary key(bookingId),
       constraint foreign key(passportNumber) references customer(passportNumber)on delete cascade on update cascade
    );

create table payment(
    paymentId int not null auto_increment,
    bookingId int,
    fullName varchar(255),
    email varchar(255),
    passportNumber int,
    city varchar(255),
    states varchar(255),
    zipCode varchar(255),
    nameOnCard varchar(255),
    creditCardNumber varchar(255),
    expMonth varchar(255),
    expYear varchar(255),
    cvv varchar(255),
    primary key(paymentId),
    constraint foreign key(bookingId) references flightbooking(bookingId)on delete cascade on update cascade    
);