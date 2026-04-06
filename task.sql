CREATE TABLE students (
    id        INT PRIMARY KEY AUTO_INCREMENT,
    name      VARCHAR(100),
    course    VARCHAR(100),
    marks     INT,
    grade     CHAR(2)
);

INSERT INTO students (name, course, marks, grade) VALUES
('Alaguvel', 'Full Stack Python', 92, 'A+'),
('nandha',    'Java Backend',      75, 'B'),
('Priya',    'Data Science',      98, 'A+'),
('issac',  'Web Design',        65, 'C');


SELECT * FROM students;

-- Students with A+ grade
SELECT name, course, marks
FROM students
WHERE grade = 'A+';

-- Average marks
SELECT AVG(marks) AS average_marks FROM students;

-- Highest scorer
SELECT name, marks
FROM students
ORDER BY marks DESC;
