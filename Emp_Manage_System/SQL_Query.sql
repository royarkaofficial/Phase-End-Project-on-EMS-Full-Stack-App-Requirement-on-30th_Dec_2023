create database Emp_Dept
use Emp_Dept

create table Department
(DeptCode int primary key,
DeptName nvarchar(50) not null,
)

INSERT INTO Department (DeptCode, DeptName)
VALUES
    (1, 'Human Resource'),
    (2, 'Marketing'),
    (3, 'Finance'),
    (4, 'IT')


CREATE TABLE Employee (
    EmpCode INT PRIMARY KEY,
    EmpName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    DateOfBirth DATETIME NOT NULL,
    Department_Code INT,
    FOREIGN KEY (Department_Code) REFERENCES Department(DeptCode)
)

INSERT INTO Employee (EmpCode, EmpName, Email, DateOfBirth, Department_Code)
VALUES
(1, 'Sundar', 'sundar@gmail.com', '1999-05-25', 1),
(2, 'Mukesh', 'mukesh@gmail.com', '1998-11-10', 2),
(3, 'Amit', 'amit@yahoo.com', '1985-08-25', 3),
(4, 'Ankit', 'ankit@hotmail.com', '2007-07-10', 4)


select * from Employee
select * from Department
