-- DAY 17 SQL PRACTICE

-- Create Database
CREATE DATABASE student_db1;

-- Use Database
USE student_db1;

-- Create Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    marks INT
);

-- Insert Data
INSERT INTO students VALUES
(1, 'Rohith', 'CSE', 85),
(2, 'Divya', 'ECE', 78),
(3, 'Hithesh', 'ME', 65),
(4, 'Rakshitha', 'CSE', 92),
(5, 'Kiran', 'ECE', 55);

-- Create Courses Table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(50)
);

-- Insert Data
INSERT INTO courses VALUES
(101, 'DBMS', 'CSE'),
(102, 'Networks', 'CSE'),
(103, 'Circuits', 'ECE'),
(104, 'Thermodynamics', 'ME');

-- Create Enrollments Table
CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert Data
INSERT INTO enrollments VALUES
(1, 1, 101),
(2, 1, 102),
(3, 2, 103),
(4, 3, 104),
(5, 4, 101),
(6, 5, 103);

-- 1. INNER JOIN
SELECT s.name, c.course_name
FROM students s
INNER JOIN enrollments e ON s.student_id = e.student_id
INNER JOIN courses c ON e.course_id = c.course_id;

-- 2. LEFT JOIN
SELECT s.name, c.course_name
FROM students s
LEFT JOIN enrollments e ON s.student_id = e.student_id
LEFT JOIN courses c ON e.course_id = c.course_id;

-- 3. RIGHT JOIN
SELECT s.name, c.course_name
FROM students s
RIGHT JOIN enrollments e ON s.student_id = e.student_id
RIGHT JOIN courses c ON e.course_id = c.course_id;

-- 4. Aggregate Function
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department;

-- 5. COUNT
SELECT department, COUNT(*) AS total_students
FROM students
GROUP BY department;

-- 6. HAVING
SELECT department, AVG(marks) AS avg_marks
FROM students
GROUP BY department
HAVING AVG(marks) > 70;

-- 7. Subquery
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);

-- 8. UPDATE
UPDATE students
SET marks = marks + 5
WHERE department = 'ECE';

-- 9. DELETE
DELETE FROM students
WHERE marks < 50;

-- 10. ORDER BY
SELECT * FROM students
ORDER BY marks DESC;

-- 11. VIEW
CREATE VIEW top_students AS
SELECT name, marks
FROM students
WHERE marks > 80;

-- Show View
SELECT * FROM top_students;-- updated
