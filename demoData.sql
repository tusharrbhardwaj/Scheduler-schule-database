-- By running this file, a demo data can be added to table made from schema.sql to perform queries that would be added to queires.sql

-- We will first add data to root tables, to avoid errors that may occur if we directly insert data to dependent tables

-- Insert data into table "groups"

INSERT INTO student_groups (group_id) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);

-- insert data into table "professor"

INSERT INTO professor (prof_name) VALUES
('Dr. John Smith'),
('Dr. Emily Johnson'),
('Dr. Michael Brown'),
('Dr. Sarah Davis'),
('Dr. David Wilson'),
('Dr. Laura Garcia'),
('Dr. James Miller'),
('Dr. Olivia Martinez'),
('Dr. Daniel Anderson'),
('Dr. Sophia Taylor');


-- insert data into table "classrooms"
INSERT INTO classrooms (cr_capacity, cr_number) VALUES
(50, 1),
(45, 2),
(40, 3),
(35, 4),
(30, 5),
(25, 6),
(20, 7),
(15, 8);


-- insert data into table "timeslots"
INSERT INTO timeslots (day, start_time, end_time) VALUES
('Monday', '08:00', '11:00'),
('Monday', '11:00', '14:00'),
('Monday', '14:00', '17:00'),
('Tuesday', '08:00', '11:00'),
('Tuesday', '11:00', '14:00'),
('Tuesday', '14:00', '17:00'),
('Wednesday', '08:00', '11:00'),
('Wednesday', '11:00', '14:00'),
('Wednesday', '14:00', '17:00'),
('Thursday', '08:00', '11:00'),
('Thursday', '11:00', '14:00'),
('Thursday', '14:00', '17:00'),
('Friday', '08:00', '11:00'),
('Friday', '11:00', '14:00'),
('Friday', '14:00', '17:00');

-- inserting data into dependent tables

-- insert data into table "classes"
INSERT INTO classes (total_students, prof_id) VALUES
(25,1),
(30,2),
(20,3),
(35,4),
(15,5),
(40,6),
(18,7),
(22,8),
(28,9),
(32,10),
(26,1),
(24,2),
(19,3),
(34,4),
(17,5),
(38,6),
(21,7),
(23,8),
(29,9),
(31,10),
(27,1),
(33,2),
(16,3),
(36,4),
(14,5),
(39,6),
(18,7),
(22,8),
(30,9),
(28,10);

-- insert data into table "prof_availability"
INSERT INTO prof_availability (prof_id, day, start_time, end_time) VALUES
(1, 'Monday', '09:00', '13:00'),
(1, 'Tuesday', '10:00', '14:00'),
(1, 'Wednesday', '08:00', '12:00'),
(2, 'Monday', '10:00', '15:00'),
(2, 'Thursday', '09:00', '13:00'),
(3, 'Tuesday', '09:00', '12:00'),
(3, 'Wednesday', '10:00', '13:00'),
(3, 'Friday', '08:00', '11:00'),
(4, 'Monday', '11:00', '16:00'),
(4, 'Wednesday', '12:00', '16:00'),
(4, 'Friday', '10:00', '15:00'),
(5, 'Tuesday', '08:00', '12:00'),
(5, 'Thursday', '09:00', '13:00'),
(6, 'Monday', '09:00', '14:00'),
(6, 'Tuesday', '10:00', '15:00'),
(6, 'Friday', '09:00', '13:00'),
(7, 'Wednesday', '10:00', '15:00'),
(7, 'Thursday', '11:00', '16:00'),
(8, 'Monday', '09:00', '12:00'),
(8, 'Friday', '10:00', '13:00'),
(9, 'Tuesday', '11:00', '16:00'),
(9, 'Thursday', '12:00', '16:00'),
(9, 'Friday', '10:00', '14:00'),
(10, 'Monday', '08:00', '11:00'),
(10, 'Wednesday', '09:00', '12:00');


-- insert data into table "class_group"
INSERT INTO class_groups (class_id, group_id) VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(3,2),
(5,2),
(6,2),
(7,2),
(2,3),
(8,3),
(9,3),
(10,3),
(1,4),
(11,4),
(12,4),
(13,4),
(5,5),
(14,5),
(15,5),
(16,5),
(6,6),
(17,6),
(18,6),
(19,6),
(7,7),
(20,7),
(21,7),
(22,7),
(8,8),
(23,8),
(24,8),
(25,8);


-- insert data into table "students"
INSERT INTO students (group_id) VALUES
(1),
(1),
(1),
(1),
(1),
(2),
(2),
(2),
(2),
(2),
(3),
(3),
(3),
(3),
(3),
(4),
(4),
(4),
(4),
(4),
(5),
(5),
(5),
(5),
(5),
(6),
(6),
(6),
(6),
(6),
(7),
(7),
(7),
(7),
(7),
(8),
(8),
(8),
(8),
(8),
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(1),
(2);