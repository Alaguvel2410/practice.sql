-- Create database
CREATE database student_course_db;

USE student_course_db;
-- Student table
create table students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(38),
    email VARCHAR(78)
);

-- for course table
CREATE table courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(445),
    duration VARCHAR(38)
);

-- Enrollment t
create table enrollments (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
