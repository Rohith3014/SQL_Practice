CREATE DATABASE college_db;

USE college_db;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments VALUES
(1,'Computer Science'),
(2,'Mechanical'),
(3,'Civil');

INSERT INTO students VALUES
(101,'Rohith',20,1),
(102,'Divya',19,1),
(103,'Hithesh',21,2),
(104,'Rakshitha',20,3);

SELECT students.name, departments.department_name
FROM students
JOIN departments
ON students.department_id = departments.department_id;