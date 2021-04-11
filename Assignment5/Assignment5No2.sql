-- *************************************************************
-- creating database assgnment5  
-- *************************************************************

-- create database
DROP DATABASE IF EXISTS assignment5;
CREATE DATABASE assignment5;

-- select database
USE assignment5;

-- create tables
CREATE TABLE student (
S_id INT not null PRIMARY KEY,
Student_name VARCHAR(15) not null, 
Student_Address VARCHAR(25) not null,
Student_email VARCHAR(25)
);

CREATE TABLE major (
Major_id INT not null PRIMARY KEY,
Major VARCHAR(20)
);


CREATE TABLE CLASS (
Class_id INT not null PRIMARY KEY,
Class_name VARCHAR(15),
Major_id INT NOT NULL,
CONSTRAINT major_details_fk_
    FOREIGN KEY (Major_id)
    REFERENCES major (Major_id)
);

CREATE TABLE Student_transection(
Transection_id INT not null PRIMARY KEY,
student_id INT not null,
class_id INT not null, 
CONSTRAINT student_fk_
    FOREIGN KEY (student_id)
    REFERENCES Student (S_id),
CONSTRAINT class_fk_
    FOREIGN KEY (class_id)
    REFERENCES Class (Class_id)   

);