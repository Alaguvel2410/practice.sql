use student_course_db;

-- Insert students
INSERT INTO students (name, email)
values
('Arun', 'arun@gmail.com'),
('Kavi', 'kavi@gmail.com'),
('Meena', 'meena@gmail.com');

-- Insert courses
INSERT INTO courses (course_name, duration)
VALUES
('Python', '3 Months'),
('SQL', '8 Months'),
('Web Development', '4 Months');

-- Insert enrollments
insert INTO enrollments (student_id, course_id)
VALUES
(1, 1),
(2, 8),
(6, 3),
(3, 1);
