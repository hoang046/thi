CREATE DATABASE
CREATE DATABASE EXAMPLE
GO
USE EXAMPLE
GO
--CREATE TABLE Department
CREATE TABLE Department(
DepartId INT PRIMARY KEY,
DepartName varchar(50) NOT NULL,
Description varchar(100) NOT NULL);

--CREATE TABLE Employee
CREATE TABLE Employee(
EmpCode char (6) PRIMARY KEY,
FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
Birthday SMALLDATETIME NOT NULL,
Gender Bit DEFAULT(1),
Address varchar(100),
DepartID INT FOREIGN KEY REFERENCES Department(DepartId),
Salary MONEY )

--INSERT TABLE Department
INSERT INTO Department VALUES
(1,'Marketing','Brand'),
(2,'Ecommerce','Sale'),
(3,'Design','Graphic')

--INSERT TABLE Employee
INSERT INTO Employee (EmpCode,FirstName,LastName,Birthday,Address,DepartID,Salary)
VALUES
('FGH34S','Luu Nguyen Anh','Quan','2004-10-11','Ha Tinh',1,10000),
('FGY37S','Nguyen Huy','Hoang','2004-04-06','Ha Noi',2,20000),
('FFH74S','Nguyen Van','Tai','2004-12-14','Ha Noi',2,30000)

--Increase the salary for all employees

UPDATE Employee SET Salary=Salary+ Salary * 0.1

--ALTER TABLE
ALTER TABLE Employee
ADD CHECK (Salary>0);

--VIEW
SELECT*FROM Employee
SELECT*FROM Department