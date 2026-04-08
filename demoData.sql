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
INSERT INTO classes (class_id, total_students, prof_id) VALUES
(1,25,1),
(2,30,2),
(3,20,3),
(4,35,4),
(5,15,5),
(6,40,6),
(7,18,7),
(8,22,8),
(9,28,9),
(10,32,10),
(11,26,1),
(12,24,2),
(13,19,3),
(14,34,4),
(15,17,5),
(16,38,6),
(17,21,7),
(18,23,8),
(19,29,9),
(20,31,10),
(21,27,1),
(22,33,2),
(23,16,3),
(24,36,4),
(25,14,5),
(26,39,6),
(27,18,7),
(28,22,8),
(29,30,9),
(30,28,10);

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
INSERT INTO students (gh_id, group_id) VALUES
('GH1040649',1),
('GH1040650',1),
('GH1040651',1),
('GH1040652',1),
('GH1040653',1),
('GH1040654',2),
('GH1040655',2),
('GH1040656',2),
('GH1040657',2),
('GH1040658',2),
('GH1040659',3),
('GH1040660',3),
('GH1040661',3),
('GH1040662',3),
('GH1040663',3),
('GH1040664',4),
('GH1040665',4),
('GH1040666',4),
('GH1040667',4),
('GH1040668',4),
('GH1040669',5),
('GH1040670',5),
('GH1040671',5),
('GH1040672',5),
('GH1040673',5),
('GH1040674',6),
('GH1040675',6),
('GH1040676',6),
('GH1040677',6),
('GH1040678',6),
('GH1040679',7),
('GH1040680',7),
('GH1040681',7),
('GH1040682',7),
('GH1040683',7),
('GH1040684',8),
('GH1040685',8),
('GH1040686',8),
('GH1040687',8),
('GH1040688',8),
('GH1040689',1),
('GH1040690',2),
('GH1040691',3),
('GH1040692',4),
('GH1040693',5),
('GH1040694',6),
('GH1040695',7),
('GH1040696',8),
('GH1040697',1),
('GH1040698',2);