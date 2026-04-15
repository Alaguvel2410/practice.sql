USE student_course_db;

-- View all students
select * FROM students;

-- Join query
select 
    s.name AS student_name,
    c.course_name
from enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Count students per course
select
    c.course_name,
    COUNT(e.student_id) AS total_students
FROM courses c
left JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;
