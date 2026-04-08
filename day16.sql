-- Create Database
CREATE DATABASE student_db;

-- Use Database
USE student_db;

-- Create Students Table
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

-- Create Subjects Table
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50)
);

-- Create Marks Table
CREATE TABLE marks (
    mark_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

-- Insert Data into Students
INSERT INTO students VALUES
(1, 'Rohith', 20, 'Bangalore'),
(2, 'Divya', 21, 'Mumbai'),
(3, 'Hithesh', 19, 'Delhi'),
(4, 'Rakshitha', 22, 'Chennai');

-- Insert Data into Subjects
INSERT INTO subjects VALUES
(101, 'Maths'),
(102, 'Science'),
(103, 'English'),
(104, 'C Programming');

-- Insert Data into Marks
INSERT INTO marks VALUES
(1, 1, 101, 85),
(2, 1, 102, 78),
(3, 2, 101, 92),
(4, 2, 103, 88),
(5, 3, 104, 67),
(6, 4, 102, 90),
(7, 4, 103, 95);

-- View All Students
SELECT * FROM students;

-- View All Subjects
SELECT * FROM subjects;

-- View All Marks
SELECT * FROM marks;

-- INNER JOIN (Student + Subject + Marks)
SELECT s.name, sub.subject_name, m.marks
FROM marks m
INNER JOIN students s ON m.student_id = s.student_id
INNER JOIN subjects sub ON m.subject_id = sub.subject_id;

-- LEFT JOIN (All students even if no marks)
SELECT s.name, sub.subject_name, m.marks
FROM students s
LEFT JOIN marks m ON s.student_id = m.student_id
LEFT JOIN subjects sub ON m.subject_id = sub.subject_id;

-- Total Marks per Student
SELECT s.name, SUM(m.marks) AS total_marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name;

-- Average Marks per Student
SELECT s.name, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name;

-- Students with Average > 80
SELECT s.name, AVG(m.marks) AS avg_marks
FROM students s
JOIN marks m ON s.student_id = m.student_id
GROUP BY s.name
HAVING AVG(m.marks) > 80;

-- Subquery (Students scoring > 90 in any subject)
SELECT name FROM students
WHERE student_id IN (
    SELECT student_id FROM marks WHERE marks > 90
);

-- Update Example
UPDATE students
SET city = 'Hyderabad'
WHERE student_id = 3;

-- Delete Example (marks < 70)
DELETE FROM marks
WHERE marks < 70;-- updated
