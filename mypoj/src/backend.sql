-- Active: 1731262999589@@127.0.0.1@3306@mangementsystem
create database mangementsystem;
use mangementsystem;
create table tourist(
     tourist_id int PRIMARY KEY,
     tourist_name VARCHAR(100),
     toueist_email VARCHAR(20),
     tourist_address VARCHAR (100)
    );
create table destination(
    destination_id int PRIMARY KEY,
     tourist_id int ,
     destination_name VARCHAR(100),
     destination_address VARCHAR (100),
     Foreign Key (tourist_id) REFERENCES tourist(tourist_id)
      
     
    );
    
create table hotel(
     tourist_id int ,
     hotel_accomodation_id int PRIMARY KEY ,
     hotel_accomodation VARCHAR(10),
     hotel_address VARCHAR(80),
     hotel_price decimal(3,2),
     FOREIGN KEY(tourist_id) REFERENCES tourist (tourist_id)
    );
    
create table payment(
     payment_id int PRIMARY KEY,
     payment_mode VARCHAR(10),
     payment_time time,
     payment_date date,
     tourist_id int ,
     destination_id int,
     hotel_accomodation_id int,
     Foreign Key (tourist_id) REFERENCES tourist (tourist_id),
     Foreign Key (destination_id) REFERENCES destination (destination_id),
     Foreign Key (hotel_accomodation_id) REFERENCES hotel (hotel_accomodation_id)
    );
    
    
