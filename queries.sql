-- Basic DQL queries 

-- View all professors
SELECT * FROM professor;

-- View all classes
SELECT * FROM classes;

-- View all students
SELECT * FROM students;


-- Join Operation

-- Class with their Professor
SELECT c.class_id, c.total_students, p.prof_name
FROM classes c
JOIN professor p ON c.prof_id = p.prof_id;

-- Students with their Groups
SELECT s.student_id, s.gh_id, sg.group_id
FROM students s
JOIN student_groups sg ON s.group_id = sg.group_id;

-- classes and group mapping
SELECT cg.class_id, cg.group_id
FROM class_group cg;

-- Joining Professor Availability
SELECT p.prof_name, pa.day, pa.start_time, pa.end_time
FROM prof_availability pa
JOIN professor p ON pa.prof_id = p.prof_id
ORDER BY p.prof_name;

-- Timeslot overview
SELECT * FROM timeslots
ORDER BY day, start_time;



-- Aggeration Queries

--Total Student per class 
SELECT class_id, total_students
FROM classes
ORDER BY total_students DESC;

-- Number of Student per group 
SELECT group_id, COUNT(*) AS total_students
FROM students
GROUP BY group_id
ORDER BY group_id;

-- Classes per professor
SELECT prof_id, COUNT(*) AS total_classes
FROM classes
GROUP BY prof_id;



-- Updating a table 
UPDATE classes
SET total_students = 35
WHERE class_id = 1;


-- Delete from table 
-- DELETE FROM students
-- WHERE student_id = 50;