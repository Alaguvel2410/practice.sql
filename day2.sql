-- Student Management Queries
CREATE DATABASE IF NOT EXISTS student_db;
USE student_db;

CREATE TABLE students (
    id      INT PRIMARY KEY AUTO_INCREMENT,
    name    VARCHAR(100),
    course  VARCHAR(100),
    marks   INT
);

INSERT INTO students (name, course, marks) VALUES
('Alaguvel', 'Python',     92),
('Rahul',    'Java',       75),
('Priya',    'Web Design', 88),
('Karthik',  'SQL',        80);

SELECT * FROM students;
SELECT name, marks FROM students WHERE marks > 80;
SELECT MAX(marks) AS highest FROM students;
SELECT MIN(marks) AS lowest FROM students;
SELECT AVG(marks) AS average FROM students;
SELECT COUNT(*) AS total FROM students;
